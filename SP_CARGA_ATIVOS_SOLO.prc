CREATE OR REPLACE PROCEDURE SP_CARGA_ATIVOS_SOLO IS

    V_MSG_ERRO           VARCHAR2(2000);
    V_PERIODO            DATE;
    V_PERIODO_PM         DATE;
    V_IDE_CLI            VARCHAR2(20);
    V_VAL_CONTRIB        NUMBER;
    V_VAL_SAL_CONTRIB    NUMBER;
    V_VAL_BRUTO          NUMBER;
    V_COD_ENTIDADE       NUMBER;
    V_NOM_ENTIDADE       VARCHAR2(100);
    V_DESC_CARGO         VARCHAR2(50);
    V_SITUACAO_FUNCIONAL VARCHAR2(100);
    E_ERRO_ARQUIVO EXCEPTION;
    V_COD_ARQUIVO_FUNC      NUMBER;
    V_COD_ARQUIVO_MUNICIPIO NUMBER;
    V_COD_ARQUIVO_BASE      NUMBER;
    V_COD_ARQ_PEFUATIV      NUMBER;
    V_COD_ARQUIVO_CARGO     NUMBER;
    V_COD_ARQUIVO_FUNC_PM   NUMBER;
    V_FLG_ADM_SPPREV        VARCHAR2(1);
    V_FLG_HIST_FUNCIONAL    VARCHAR2(1);

    --TT47622 LNUNES 07/06/2018
    v_max_per_competencia user_ipesp.tb_total_contrib_prev_detalhe.per_competencia@prodspprev.spprev.gov%type;

    V_ROWID_carga_ativos rowid;

    v_qtde_total_proc_ativos  number := 0;
    v_qtde_total_proc_contrib number := 0;
    v_qtde_total_proc_bruto   number := 0;

    v_linha_total_contr user_ipesp.tb_total_contrib_prev_detalhe@prodspprev.spprev.gov%rowtype;

  BEGIN

    EXECUTE IMMEDIATE 'ALTER SESSION SET NLS_DATE_FORMAT= ' ||
                      '''DD/MM/YYYY''' || '';

    BEGIN

      --Resgata o Último Período da UCRH

      V_COD_ARQUIVO_FUNC := NULL;

      BEGIN
        SELECT MAX(F1.COD_ARQUIVO), TO_DATE(MAX(F1.DTREFER), 'YYYY/MM')
          INTO V_COD_ARQUIVO_FUNC, V_PERIODO
          FROM USER_IPESP.TB_CARGA_UCRH_FUNCIONAL@PRODSPPREV F1
         WHERE F1.COD_INS = 1
           and f1.cod_arquivo in
               (SELECT F1.COD_ARQUIVO
                  FROM USER_IPESP.TB_CARGA_ARQUIVO@PRODSPPREV F1
                 WHERE F1.NOM_ARQUIVO = 'PEATIV.TXT');

      EXCEPTION
        WHEN OTHERS THEN
          V_COD_ARQUIVO_FUNC := NULL;
      END;

      IF V_COD_ARQUIVO_FUNC IS NULL THEN
        RAISE E_ERRO_ARQUIVO;
      END IF;

      V_COD_ARQ_PEFUATIV := NULL;
      BEGIN
        SELECT MAX(F1.COD_ARQUIVO)
          INTO V_COD_ARQ_PEFUATIV
          FROM USER_IPESP.TB_CARGA_UCRH_FUNCIONAL_COMP@PRODSPPREV F1
         WHERE F1.COD_INS = 1
           and f1.cod_arquivo in
               (SELECT F1.COD_ARQUIVO
                  FROM USER_IPESP.TB_CARGA_ARQUIVO@PRODSPPREV F1
                 WHERE F1.NOM_ARQUIVO = 'PEFUATIV.TXT');
      EXCEPTION
        WHEN OTHERS THEN
          V_COD_ARQ_PEFUATIV := NULL;
      END;

      V_COD_ARQUIVO_BASE := NULL;
      BEGIN
        SELECT MAX(F1.COD_ARQUIVO)
          INTO V_COD_ARQUIVO_BASE
          FROM USER_IPESP.TB_CARGA_UCRH_BASE_CONTRIB@PRODSPPREV F1
         WHERE F1.COD_INS = 1
           and f1.cod_arquivo in
               (SELECT F1.COD_ARQUIVO
                  FROM USER_IPESP.TB_CARGA_ARQUIVO@PRODSPPREV F1
                 WHERE F1.NOM_ARQUIVO = 'BASE_CONTRIBUICAO.TXT');
      EXCEPTION
        WHEN OTHERS THEN
          V_COD_ARQUIVO_BASE := NULL;
      END;

      V_COD_ARQUIVO_CARGO := NULL;
      BEGIN
        SELECT MAX(F1.COD_ARQUIVO)
          INTO V_COD_ARQUIVO_CARGO
          FROM USER_IPESP.TB_CARGA_UCRH_CARGO@PRODSPPREV F1
         WHERE F1.COD_INS = 1
           and f1.cod_arquivo in
               (SELECT F1.COD_ARQUIVO
                  FROM USER_IPESP.TB_CARGA_ARQUIVO@PRODSPPREV F1
                 WHERE F1.NOM_ARQUIVO = 'TBCARGOS.TXT');
      EXCEPTION
        WHEN OTHERS THEN
          V_COD_ARQUIVO_CARGO := NULL;
      END;

      BEGIN
        SELECT MAX(F1.COD_ARQUIVO)
          INTO V_COD_ARQUIVO_MUNICIPIO
          FROM USER_IPESP.TB_CARGA_UCRH_MUNICIPIO@PRODSPPREV F1
         WHERE F1.COD_INS = 1
           and f1.cod_arquivo in
               (SELECT F1.COD_ARQUIVO
                  FROM USER_IPESP.TB_CARGA_ARQUIVO@PRODSPPREV F1
                 WHERE F1.NOM_ARQUIVO = 'TBMUNICI.TXT');
      EXCEPTION
        WHEN OTHERS THEN
          V_COD_ARQUIVO_MUNICIPIO := NULL;
      END;

      IF (V_COD_ARQUIVO_FUNC IS NULL OR V_COD_ARQUIVO_BASE IS NULL OR
         V_COD_ARQ_PEFUATIV IS NULL OR V_COD_ARQUIVO_CARGO IS NULL) THEN
        RAISE E_ERRO_ARQUIVO;
        /*    ELSE
        DELETE FROM BI.TB_ATIVOS A WHERE A.ORGAO || A.UO != '18004';*/
      END IF;
      COMMIT;

      --====================================== Civil e Militar ===============================================
      FOR REG IN (SELECT
                     F.COD_INS,
                     TCPD.NUM_CPF,
                     F.RS AS RG,
                     TCPD.COD_PV AS PV,
                     TO_NUMBER(TCPD.NUM_MATRICULA) || TCPD.COD_PV COD_IDE_REL_FUNC,
                     TCPD.NUM_MATRICULA,
                     TCPD.COD_ORGAO,
                     TCPD.COD_UO,
                     TCPD.NOM_SERVIDOR,
                     F.CATEGORIA,
                     F.CODSITUA,
                     F.MOTSITUA,
                     TO_NUMBER(F.CARGO) CARGO,
                     TO_NUMBER(F.REGIME) REGIME,
                     F.ESCALA,
                     F.TBVCTO,
                     F.REFER,
                     F.GRAU,
                     F.JORNADA,
                     CASE
                       WHEN TCPD.COD_ENTIDADE <> 5 THEN
                        'CIVIL'
                       ELSE
                        'MILITAR'
                     END TIPO_SERVIDOR,
                     CASE
                       WHEN (F.CATEGORIA IN
                            ('A', 'B', 'D', 'E', 'F', 'T', 'Y', 'P', '1', '2', '3', '4') OR
                            (F.CATEGORIA IN ('N', 'R') AND F.ORGAO = '08')) THEN
                        'N'
                       ELSE
                        'C'
                     END FLG_COMISSIONADO,
                     CASE
                       WHEN CODSITUA = '01' AND MOTSITUA = '000' THEN
                        'Em Exercicio'
                       ELSE
                        'Inativo/Extinto'
                     END FLG_ATIVO,

                     M.COD_MUNICIPIO,
                     M.NOM_MUNICIPIO,
                     TCPD.SAL_CONTRIBUICAO VAL_SAL_CONTRIB,
                     TCPD.VAL_CONTRIBUICAO VAL_CONTRIB,
                     TCPD.COD_ENTIDADE,
                     TCPD.NOM_ENTIDADE,
                     TCPD.BASE_CAL_CONTRIBUICAO

                  FROM USER_IPESP.TB_CARGA_UCRH_FUNCIONAL@PRODSPPREV F,
                       USER_IPESP.TB_CARGA_UCRH_MUNICIPIO@PRODSPPREV M,
                       BI_IPESP.Tb_Total_Contrib_Prev_Detalhe        tcpd
                 WHERE --F.ORGAO || F.UO <> '18004'
                 F.COD_ARQUIVO = V_COD_ARQUIVO_FUNC
                 and F.COD_INS = 1
                 AND F.CODSITUA != 16
                 AND M.COD_ARQUIVO = V_COD_ARQUIVO_MUNICIPIO
                 AND M.COD_MUNICIPIO = '00' || F.MUNICIPIO
                 and tcpd.COD_INS = 1
                 AND tcpd.NUM_MATRICULA = f.MATRICULA
                 AND tcpd.COD_PV = f.PV
                 AND tcpd.COD_ORGAO = f.ORGAO
                 AND tcpd.COD_UO = f.UO
                 and tcpd.per_competencia = V_PERIODO
                 and tcpd.tip_beneficio = 'ATIVOS'
                 and nvl(tcpd.base_cal_contribuicao, 0) > 0

                     AND NOT EXISTS
                   (SELECT 1
                            FROM BI.TB_ATIVOS_V2 S
                           WHERE S.MATRICULA = F.MATRICULA
                             AND S.PV = F.PV
                             and to_char(s.per_referencia, 'RRRRMM') =
                                 f.dtrefer)

                  ) LOOP

        V_VAL_CONTRIB        := NULL;
        V_VAL_SAL_CONTRIB    := NULL;
        V_VAL_BRUTO          := NULL;
        V_COD_ENTIDADE       := NULL;
        V_NOM_ENTIDADE       := NULL;
        V_DESC_CARGO         := NULL;
        V_SITUACAO_FUNCIONAL := NULL;
        V_FLG_HIST_FUNCIONAL := NULL;

        BEGIN
          --Entidade
          SELECT E1.COD_ENTIDADE_FGV,
                 TRIM(E1.NOM_ENTIDADE),
                 E1.FLG_ADMINISTRACAO_SPPREV
            INTO V_COD_ENTIDADE, V_NOM_ENTIDADE, V_FLG_ADM_SPPREV
            FROM BI_IPESP.TB_ENTIDADE_UCRH E, BI_IPESP.TB_ENTIDADE_FOLHA E1
           WHERE E.COD_SECR_UO = REG.COD_ORGAO || REG.COD_UO
             AND E1.COD_ENTIDADE_FGV = E.COD_ENTIDADE
             AND ROWNUM = 1;
        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            BEGIN
              SELECT E1.COD_ENTIDADE_FGV,
                     E1.NOM_ENTIDADE,
                     E1.FLG_ADMINISTRACAO_SPPREV
                INTO V_COD_ENTIDADE, V_NOM_ENTIDADE, V_FLG_ADM_SPPREV
                FROM BI_IPESP.TB_ENTIDADE_UCRH  E,
                     BI_IPESP.TB_ENTIDADE_FOLHA E1
               WHERE E.COD_SECR_UO = REG.COD_ORGAO || '000'
                 AND E1.COD_ENTIDADE_FGV = E.COD_ENTIDADE
                 AND ROWNUM = 1;
            EXCEPTION
              WHEN OTHERS THEN
                NULL;

            END;
        END;

        BEGIN
          --Bruto
          SELECT SUM(CO.VAL_BRUTO), CO.FLG_HIST_FUNCIONAL
            INTO V_VAL_BRUTO, V_FLG_HIST_FUNCIONAL
            FROM USER_IPESP.TB_CARGA_UCRH_FUNCIONAL_COMP@PRODSPPREV CO
           WHERE CO.COD_INS = REG.COD_INS
             AND CO.ORGAO = REG.COD_ORGAO
             AND CO.UO = REG.COD_UO
             AND CO.IDENT_FUNCION = REG.NUM_MATRICULA
             AND CO.SUB_IDENT_FUNC = REG.PV
             AND CO.COD_ARQUIVO = V_COD_ARQ_PEFUATIV
             AND CO.COD_CARGO = REG.CARGO
           GROUP BY CO.FLG_HIST_FUNCIONAL;
        EXCEPTION
          WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('MAIS DE UMA LINHA BRUTO: ' || 'CPF:' ||
                                 REG.NUM_CPF || ' MATRICULA:' || REG.NUM_MATRICULA ||
                                 ' PV:' || REG.PV);

          WHEN NO_DATA_FOUND THEN
            V_VAL_BRUTO := 0;
        END;

        --Cargo
        SELECT NVL((
                   --Busca Cargo por Orgão e UO
                   SELECT UPPER(CG.CARGO_DESCRICAO)
                     FROM USER_IPESP.TB_CARGA_UCRH_CARGO@PRODSPPREV CG
                    WHERE CG.ENTIDADE = REG.COD_ORGAO
                      AND CG.UO = REG.COD_UO
                      AND CG.CARGO_CODIGO = REG.CARGO
                      AND CG.COD_ARQUIVO = V_COD_ARQUIVO_CARGO)

                  , --Se for nulo busca com uo 999
                   NVL((SELECT UPPER(CG.CARGO_DESCRICAO)
                         FROM USER_IPESP.TB_CARGA_UCRH_CARGO@PRODSPPREV CG
                        WHERE CG.ENTIDADE = '99'
                          AND CG.UO = '999'
                          AND CG.CARGO_CODIGO = REG.CARGO
                          AND CG.COD_ARQUIVO = V_COD_ARQUIVO_CARGO),
                       --Se ainda for nulo busca com uo 998
                       (SELECT UPPER(CG.CARGO_DESCRICAO)
                          FROM USER_IPESP.TB_CARGA_UCRH_CARGO@PRODSPPREV CG
                         WHERE CG.ENTIDADE = '99'
                           AND CG.UO = '998'
                           AND CG.CARGO_CODIGO = REG.CARGO
                           AND CG.COD_ARQUIVO = V_COD_ARQUIVO_CARGO)))

          INTO V_DESC_CARGO
          FROM DUAL;

        --Situação Funcional
        SELECT C.DES_DESCRICAO
          INTO V_SITUACAO_FUNCIONAL
          FROM BI_IPESP.TB_CODIGO C
         WHERE C.COD_NUM = '10162'
           AND C.COD_PAR = REG.CODSITUA;

        --Carrrega Tabela BI

        INSERT INTO BI.TB_ATIVOS_V2
          (CPF,
           RG,
           PV,
           COD_IDE_REL_FUNC,
           ORGAO,
           UO,
           NOME,
           CATEGORIA,
           CODSITUA,
           SITUACAO_FUNCIONAL,
           MOTSITUA,
           CARGO,
           REGIME,
           ESCALA,
           TBVCTO,
           REFER,
           GRAU,
           JORNADA,
           VAL_SAL_CONTRIB,
           VAL_CONTRIB,
           VAL_BRUTO,
           COD_ENTIDADE,
           NOM_ENTIDADE,
           DESC_CARGO,
           TIPO_SERVIDOR,
           PER_REFERENCIA,
           FLG_COMISSIONADO,
           FLG_ATIVO,
           MATRICULA,
           FLG_HIST_FUNCIONAL,
           COD_MUNICIPIO,
           NOM_MUNICIPIO,
           DAT_ING,
           DAT_ULT_ATU,
           NOM_USU_ULT_ATU,
           NOM_PRO_ULT_ATU,
           BASE_CAL_CONTRIBUICAO
           )
        VALUES
          (REG.NUM_CPF,
           REG.RG,
           REG.PV,
           REG.COD_IDE_REL_FUNC,
           REG.COD_ORGAO,
           REG.COD_UO,
           REG.NOM_SERVIDOR,
           REG.CATEGORIA,
           REG.CODSITUA,
           V_SITUACAO_FUNCIONAL,
           REG.MOTSITUA,
           REG.CARGO,
           REG.REGIME,
           REG.ESCALA,
           REG.TBVCTO,
           REG.REFER,
           REG.GRAU,
           REG.JORNADA,
           REG.VAL_SAL_CONTRIB,
           REG.VAL_CONTRIB,
           V_VAL_BRUTO,
           REG.COD_ENTIDADE,
           REG.NOM_ENTIDADE,
           V_DESC_CARGO,
           REG.TIPO_SERVIDOR,
           V_PERIODO,
           REG.FLG_COMISSIONADO,
           REG.FLG_ATIVO,
           REG.NUM_MATRICULA,
           V_FLG_HIST_FUNCIONAL,
           REG.COD_MUNICIPIO,
           REG.NOM_MUNICIPIO,
           SYSDATE,
           SYSDATE,
           'LNUNES',
           'SP_CARGA_ATIVOS',
           REG.BASE_CAL_CONTRIBUICAO
           );
        COMMIT;
      END LOOP;
      --END IF;
      /* EXCEPTION
      WHEN E_ERRO_ARQUIVO THEN
        P_ERRO := 'MES DE REFERENCIA SEM ARQUIVO';
        ROLLBACK;
      WHEN OTHERS THEN
        P_ERRO := SQLERRM;
        ROLLBACK;*/
    END;

  END SP_CARGA_ATIVOS_SOLO;
/
