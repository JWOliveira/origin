CREATE OR REPLACE PROCEDURE USER_IPESP."ATUALIZA_BENACT" 
AS
 CURSOR O_BENTRP IS  SELECT P.*
                        FROM BENTRP P, BENACT C
                        WHERE C.act_cod_ins = P.trp_cod_ins
                          AND C.act_cod_adm_tra = P.trp_cod_adm_tra
                          AND C.act_cod_act = 50
                          AND C.act_ind_est = 'T'
                          AND P.trp_est_act_tra = 'A';

    CURBENTRP       BENTRP%ROWTYPE;
BEGIN

  open O_BENTRP;

    LOOP
        fetch O_BENTRP into CURBENTRP;
        exit when O_BENTRP%NOTFOUND;

        -- PARA OS REGISTROS ENCONTRADOS, ATUALIZA A BENACT
        UPDATE BENACT T
        SET T.act_ind_est = 'T'
        WHERE T.act_cod_ins         =  CURBENTRP.trp_cod_ins
          AND T.act_cod_adm_tra     =  CURBENTRP.trp_cod_adm_tra
          AND T.ACT_COD_ACT         = 52;


        COMMIT;
    END LOOP;
END  ATUALIZA_BENACT;
 
 
/
