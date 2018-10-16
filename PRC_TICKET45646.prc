create or replace procedure prc_TICKET45646 as

  cursor c_universo is
    select * from bi_ipesp.TB_TICKET45646;
    
  v_cod_ide_cli varchar2(2050);

begin

  /*- Nome do beneficiário
  - Qualidade de beneficiário
  - Código do benefício
  - Nome do militar
  - RE
  - Patente do militar
  - Rubrica existente de ALE
  - Valor existente no benefício do ALE
  - Data de extinção, caso tenha. */

  null;

  for reg in c_universo loop
    
    --Zerando as variáveis
    v_cod_ide_cli := null;
    
    select pf.cod_ide_cli
      into v_cod_ide_cli
      from user_ipesp.tb_pessoa_fisica@prodspprev.spprev.gov     pf,
           user_ipesp.tb_relacao_funcional@prodspprev.spprev.gov rf
     where pf.cod_ins = rf.cod_ins
       and pf.cod_ide_cli = rf.cod_ide_cli
       and trim(upper(pf.nom_pessoa_fisica)) =
           trim(upper(reg.nom))
       and rf.num_matricula = reg.renum
       ;

  end loop;


  --Nome do Beneficiário

end;
/
