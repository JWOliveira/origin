CREATE OR REPLACE PACKAGE USER_IPESP.PAC_PROCESSAMENTO_ARQUIVOS is

  PROCEDURE SP_EXECUTA_PROCESSOS;

END PAC_PROCESSAMENTO_ARQUIVOS;
/
CREATE OR REPLACE PACKAGE BODY USER_IPESP.PAC_PROCESSAMENTO_ARQUIVOS AS

  PROCEDURE SP_EXECUTA_PROCESSOS IS

    --- VARIAVEIS ----
    --v_seq number;
    v_erro VARCHAR2(500);

    BEGIN

        EXECUTE IMMEDIATE 'ALTER SESSION SET NLS_DATE_FORMAT = ''DD/MM/YYYY''';
        
       --TT42922 GPAVAO 12/12/2017 adicionado o cod_tipo_arq 3 para pegar automaticamente os arquivos de retorno de cobrança
        FOR REG IN (
                      SELECT ROWID, A.*
                        FROM USER_IPESP.tb_controle_carga_arq A
                       WHERE A.cod_ins = 1
                         AND A.Flg_Processo = 'A'
                         and a.cod_tipo_arq IN (9,3)
                       ORDER BY A.NUM_CARGA
                   )
        LOOP

              BEGIN


                  UPDATE USER_IPESP.tb_controle_carga_arq PE
                     SET PE.DAT_INI_PROC = SYSDATE ,
                         PE.DAT_ULT_ATU  = SYSDATE,
                         PE.FLG_PROCESSO = 'P'
                   WHERE ROWID = REG.ROWID;
                  COMMIT;
                                    
                  --TT42922 GPAVAO 12/12/2017 adicionado o cod_tipo_arq 3 para pegar automaticamente os arquivos de retorno de cobrança
                  
                  CASE
                    WHEN REG.COD_TIPO_ARQ = 9 THEN -- Processamento de retorno de arquivos bancarios de pagamentos
                        user_ipesp.pac_integracao.sp_carga_arq_febraban(1, reg.num_carga, reg.cod_tipo_arq, reg.nome_arq_modificado);
                    WHEN reg.cod_tipo_arq = 3 THEN
                        user_ipesp.pac_arrecadacao.SP_CONCILIACAO_BB(reg.num_carga);    
                  END CASE;

              EXCEPTION
                  WHEN OTHERS THEN
                      V_ERRO := sqlerrm;
                      UPDATE USER_IPESP.tb_controle_carga_arq PE
                         SET PE.FLG_PROCESSO = 'E',
                             PE.DAT_FIM_PROC      = SYSDATE,
                             PE.DAT_ULT_ATU       = SYSDATE
                       WHERE ROWID = REG.ROWID;
                      COMMIT;
              END;

        END LOOP;

  END SP_EXECUTA_PROCESSOS;



END PAC_PROCESSAMENTO_ARQUIVOS;
/
