CREATE OR REPLACE PACKAGE USER_IPESP.PAC_INTEGRACAO IS

  
  FUNCTION FC_CALCULA_DV_BB( PTIPO     IN NUMBER  ,
                         PAGENCIA     IN VARCHAR2,
                         PCONTA       IN VARCHAR2) 
          RETURN VARCHAR2;
          
  PROCEDURE SP_CALCULA_DV      ( PTIPO        IN NUMBER  ,
                                 PAGENCIA     IN VARCHAR2,
                                 PCONTA       IN VARCHAR2,
                                 PDV          OUT CHAR            );

  PROCEDURE SP_CALCULA_DV_BB   ( PTIPO        IN NUMBER  ,
                                 PAGENCIA     IN VARCHAR2,
                                 PCONTA       IN VARCHAR2,
                                 PDV          OUT CHAR            );


  PROCEDURE GERA_ARQ_CNAB_JUD  (  I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                  I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                  I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                                  I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                  I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                                  I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                                  I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                                  I_GRP_PAGTO         IN NUMBER,
                                  I_DEFINITIVO        IN VARCHAR2,
                                  I_NOM_ARQUIVO       OUT VARCHAR2,
                                  I_MSG_ERRO          OUT VARCHAR2                );




 PROCEDURE GERA_ARQ_CNAB_JUD2     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                    I_DEFINITIVO        IN VARCHAR2,
                                    I_PER_PROCESSO      IN DATE,
                                    I_GRUPO             IN VARCHAR2,
                                    I_DAT_PAGTO         IN VARCHAR2,
                                    I_NOM_ARQUIVO       OUT VARCHAR2,
                                    I_MSG_ERRO          OUT VARCHAR2                ) ;



PROCEDURE SP_GERA_ARQ_CNAB_CARGA  ( P_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                    P_PER_PROCESSO      IN DATE,
                                    P_DAT_PAGTO         IN DATE,
                                    I_MSG_ERRO          OUT VARCHAR2                );

PROCEDURE SP_GERA_ARQ_CNAB_JUD2_V3     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                          I_DEFINITIVO        IN VARCHAR2,
                                          I_NUM_CARGA         IN NUMBER,
                                          I_PER_PROCESSO      IN DATE,
                                          I_GRUPO             IN VARCHAR2 DEFAULT '00',
                                          I_DAT_PAGTO         IN VARCHAR2,
                                          I_NOM_ARQUIVO       OUT VARCHAR2,
                                          I_MSG_ERRO          OUT VARCHAR2                );

PROCEDURE GERA_ARQ_CNAB_A  ( I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                );

  PROCEDURE GERA_ARQ_CNAB_PA_A( I_PERPROCESSO     IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                ) ;

  PROCEDURE GERA_ARQ_CNAB_SALFAM  (I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                    I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                    I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                                    I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                    I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                                    I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                                    I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                                    I_GRP_PAGTO         IN NUMBER,
                                    I_DEFINITIVO        IN VARCHAR2,
                                    I_NOM_ARQUIVO       OUT VARCHAR2,
                                    I_MSG_ERRO          OUT VARCHAR2                );

  PROCEDURE GERA_ARQ_CNAB_CREDITO     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                          I_DEFINITIVO        IN VARCHAR2,
                                          I_NOM_ARQUIVO       OUT VARCHAR2,
                                          I_MSG_ERRO          OUT VARCHAR2                );



 PROCEDURE GERA_ARQ_CNAB_AUXFUN ( I_COD_INS           IN TB_FOLHA.COD_INS%TYPE,
                                  I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                  I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                  I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                  I_GRP_PAGTO         IN NUMBER,
                                  I_DEFINITIVO        IN VARCHAR2,
                                  I_NOM_ARQUIVO       OUT VARCHAR2,
                                  I_MSG_ERRO          OUT VARCHAR2);

 PROCEDURE SP_ENCRIPTA_ARQ_BANCARIO
  (
     ARQ_ORIGEM    IN VARCHAR2
  );


  PROCEDURE SP_INCLUI_RESUMO_BANCARIO  ( I_PERPROCESSO  IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DAT_PAGTO         IN DATE,
                              I_NOM_ARQUIVO       IN VARCHAR2,
                              I_NOM_ARQUIVO_CRIP  IN VARCHAR2,
                              I_DataGeracao       IN VARCHAR2,
                              I_HoraGeracao       IN VARCHAR2,
                              I_total_liquido     IN NUMBER,
                              I_QTDE              IN NUMBER,
                              I_FLG_PA            IN VARCHAR2 ) ;
                              
   PROCEDURE GERA_ARQ_CNAB_REENVIO( I_PERPROCESSO      IN DATE,
                                   I_TIPPROCESSO      IN VARCHAR2,
                                   I_SEQ_PAGAMENTO    IN NUMBER,
                                   I_GRP_PAGTO        IN NUMBER,
                                   I_DEFINITIVO       IN VARCHAR2,
                                   I_MSG_ERRO         OUT VARCHAR2  );    
                                   
   PROCEDURE GERA_HIST_ECT  (  I_PERPROCESSO  IN TB_FOLHA.PER_PROCESSO%TYPE,
              I_TIPPROCESSO  IN TB_FOLHA.TIP_PROCESSO%TYPE,
              I_SEQ_PAGAMENTO IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
              I_COD_ENTIDADE  IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
              I_COD_TIPO_BENEF IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
              I_DES_NOM_BENEF  IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
              I_MSG_ERRO    OUT VARCHAR2  );  
              
   PROCEDURE GERA_ARQ_CNAB_TERCEIROS( I_PERPROCESSO     IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                );                                                                   

  PROCEDURE GERA_ARQ_SALDO_EXTINCAO
   (  
      I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
      I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
      I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
      I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
      I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
      I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
      I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
      I_GRP_PAGTO         IN NUMBER,
      I_DEFINITIVO        IN VARCHAR2,
      I_NOM_ARQUIVO       OUT VARCHAR2,
      I_MSG_ERRO          OUT VARCHAR2               
   );                              

   PROCEDURE sp_start_carga_retorno_guia;
   
   PROCEDURE SP_START_CARGA_RETORNO_BANCO;
   
   PROCEDURE sp_carga_arq_febraban(p_cod_ins     NUMBER,
                                p_num_carga   NUMBER,
                                p_cod_tip_arq NUMBER,
                                p_nome_arq    VARCHAR2);

END PAC_INTEGRACAO;
/
CREATE OR REPLACE PACKAGE BODY USER_IPESP.PAC_INTEGRACAO

AS

-- version production 201810/01 16:36
 
/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : SP_CARREGA_CONSIGNACAO
  Objetivo  : Fazer a carga das consignaCOES geradas por alguma empresa conveniada
  Parametros: Nenhum
  Autor    : Marcio Carrir
  Alterac?o : 07/11/2005 - Criac?o da procedure
  -------------------------------------------------------------------------------------------------------------------------*/



/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : SP_GERA_ARQ_DEBITOS
  Objetivo  : Gerar o arquivo com os debitos efetuados para cada consignataria
  Parametros: Nenhum
  Autor    : Marcio Carrir
  Alterac?o : 11/11/2005 - Criac?o da procedure
  -------------------------------------------------------------------------------------------------------------------------*/

FUNCTION FC_CALCULA_DV_BB( PTIPO     IN NUMBER  ,
                         PAGENCIA     IN VARCHAR2,
                         PCONTA       IN VARCHAR2)
          RETURN VARCHAR2
IS
  PDV       VARCHAR2(30);
  wTotal    number:=0;
  wResto    number:=0;
  k         number;

BEGIN
  PDV := NULL;
  IF PTIPO = 1 THEN -- dv agencia

     k := 5;
     FOR x IN REVERSE 5..9 LOOP

         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PAGENCIA,5,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;

     wResto := MOD( wTotal, 11 );

     IF wResto = 10 THEN
        PDV := 'X';
     ELSIF wResto < 10 THEN
        PDV := wResto;
     ELSIF wResto = 0 THEN
        PDV := 0;
     END IF;

  END IF;


  IF PTIPO = 2 THEN -- dv conta

     /*k := 8;
     FOR x IN REVERSE 2..9 LOOP

         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,8,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;*/

     k := 9;
     FOR x IN REVERSE 2..9 LOOP
         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,9,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;
     wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,9,'0'), k, 1), 0 ) * 9 );
     k := k - 1;

     wResto := MOD( wTotal, 11 );

     IF wResto = 10 THEN
        PDV := 'X';
     ELSIF wResto < 10 THEN
        PDV := wResto;
     ELSIF wResto = 0 THEN
        PDV := 0;
     END IF;

  END IF;

  RETURN PDV;
END FC_CALCULA_DV_BB;

PROCEDURE SP_CALCULA_DV_BB( PTIPO     IN NUMBER  ,
                         PAGENCIA     IN VARCHAR2,
                         PCONTA       IN VARCHAR2,
                         PDV          OUT CHAR   )
IS

  wTotal    number:=0;
  wResto    number:=0;
  k         number;

BEGIN

  IF PTIPO = 1 THEN -- dv agencia

     k := 5;
     FOR x IN REVERSE 5..9 LOOP

         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PAGENCIA,5,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;

     wResto := MOD( wTotal, 11 );

     IF wResto = 10 THEN
        PDV := 'X';
     ELSIF wResto < 10 THEN
        PDV := wResto;
     ELSIF wResto = 0 THEN
        PDV := 0;
     END IF;

  END IF;


  IF PTIPO = 2 THEN -- dv conta

     /*k := 8;
     FOR x IN REVERSE 2..9 LOOP

         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,8,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;*/

     k := 9;
     FOR x IN REVERSE 2..9 LOOP
         wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,9,'0'), k, 1), 0 ) * x );
         --k := k + 1;
         k := k - 1;
     END LOOP;
     wTotal := wTotal + ( TO_NUMBER( SUBSTR(LPAD(PCONTA,9,'0'), k, 1), 0 ) * 9 );
     k := k - 1;

     wResto := MOD( wTotal, 11 );

     IF wResto = 10 THEN
        PDV := 'X';
     ELSIF wResto < 10 THEN
        PDV := wResto;
     ELSIF wResto = 0 THEN
        PDV := 0;
     END IF;

  END IF;

END SP_CALCULA_DV_BB;
/*----------------------------------------------------------------------------------------------
*  Author  : Marcos Roberto da Silva                                                           *
*  Data    : 21/07/2009                                                                        *
*  Objetivo: Calculo do DV da agencia bancaria - Banco Nossa Caixa                             *
*            sendo : 1 - Agencia ( 4 digitos ). Esta procedure deve servir para                *
*            calcular outros DVs, como da Conta Corrente, CPF, CNPJ, etc.                      *
-----------------------------------------------------------------------------------------------*/
PROCEDURE SP_CALCULA_DV( PTIPO        IN NUMBER  ,
                         PAGENCIA     IN VARCHAR2,
                         PCONTA       IN VARCHAR2,
                         PDV         OUT CHAR            )
IS

  wTotal    number:=0;
  wResto    number:=0;
  k         number:=1;

BEGIN

  IF PTIPO = 1 THEN

     FOR x IN REVERSE 2..5 LOOP

         wTotal := wTotal + ( TO_NUMBER( SUBSTR( PAGENCIA, k, 1), 0 ) * x );
         k := k + 1;

     END LOOP;

     wResto := MOD( wTotal, 11 );

     IF wResto > 1 THEN
        PDV := 11 - wResto;
     ELSE
        PDV := 1 - wResto;
     END IF;

  END IF;

END SP_CALCULA_DV;


/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : GERA_ARQ_CNAB
  Objetivo  : Gerar arquivos dos creditos em conta corrente dos bancos com layout CNAB240
  Parametros: I_PERPROCESSO    => Data de processamento da folha
              I_TIPPROCESSO    => Tipo de processo em andamento
              I_BANCO         => Codigo do banco a gerar o arquivo
              I_SEQ_PAGAMENTO  => Sequencia de pagamento do processo aberto
              I_GRP_PAGTO     => Grupo de Pagamento de acordo com a tabela TB_GRUPO_PAGAMENTO
              I_NOM_ARQUIVO   => Nome do arquivo de saida gerado
              I_MSG_ERRO      => Mensagem de erro ocorrido
  Autor      : Marcos Lauria
  Alteracao : 16/12/2005 - Criacao da procedure
              10/02/2006 - Migracao para package PAC_INTEGRACAO
              28/07/2009 - Adequacao as necessidades da SPPREV, tais como:
                         - Processar por grupo de pagamento;
                         - Gerar arquivos por codigo de convenio;
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
 >>>>                    N O T A S   <>  I M P O R T A N T E S
 >>>>   -> SERA NECESSARIO ALTERAR AS TABELAS UTILIZADAS NO CURSOR: TB_FOLHA_20090616 e     -- OK 28/07/09
 >>>>      TB_INFORMACAO_BANCARIA_II PARA AS TABELAS ORIGINAIS. O CAMPO MATRICULA FOI
 >>>>      RETIRADO PARA AUXILIAR NO AGRUPAMENTO DAS INFORMACOES POR BENEFICIARIO;
 >>>>   -> INSERIR O PARAMETRO DE GRUPO DE PAGAMENTO <I_GRP_PAGTO> PARA POSSIBILITAR O      -- OK 24/07/09
 >>>>      PROCESSAMENTO POR GRUPOS INDIVIDUALIZADOS, EX.: CIVIL NOVOS ou LEGADO, etc;
 >>>>   -> E NECESSARIO ALTERAR A CONSTRAINT FK_TB_ENVIO_REFERENCE_TB_CRONO DA TABELA       -- OK 28/07/09
 >>>>      POIS A REFERENCIA ESTA ERRADA, ONDE EH COD_ENTIDADE DEVE SER NUM_GRP;
 >>>>   -> HABILITAR AS LINHAS DE UTL_FILE;                                                 -- OK 24/07/09
 >>>>   -> RETIRAR A FUNCAO ADD_MONTHS DO CAMPO I_PERPROCESSO, POIS FOI COLOCADO DEVIDO AO  -- OK 28/09/09
 >>>>      PROC DA FOLHA RODAR MES 06 E A TB_FOLHA ESTA FIXO MES 05;
 >>>>   -> VERIFICAR COMO DEVE FICAR O TIPO DE CONTA, PRINCIPALMENTE NO QUE TANGE A OUTROS  -- PENDENTE
 >>>>      BANCOS QUE NAO A NOSSA CAIXA.
 >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
---------------------------------------------------------------------------------------------------------------------------*/

---------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------------------------------


/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : GERA_ARQ_BANPARA
  Objetivo  : Gerar arquivos dos creditos em conta corrente para o BANPARA
  Parametros: I_PERPROCESSO  => Data de processamento da folha
              I_TIPPROCESSO  => Tipo de processo em andamento
              I_GRP_PAG    => Grupo de pagamento
              I_BANCO     => Codigo do banco a gerar o arquivo
              I_SEQ_PAGAMENTO  => Sequencia de pagamento do processo aberto
              I_NOM_ARQUIVO   => Nome do arquivo de saida gerado
              I_MSG_ERRO    => Mensagem de erro ocorrido
  Autor    : Marcos Lauria
  Alterac?o : 14/12/2005 - Criac?o da procedure
        10/02/2006 - Migracao para package PAC_INTEGRACAO
  -------------------------------------------------------------------------------------------------------------------------*/

/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : GERA_HIST_ECT
  Objetivo  : Fazer a carga das consignaCOES geradas por alguma empresa conveniada
  Parametros: I_PERPROCESSO  -> Data do processo aberto para a folha de pagamento (Sempre 01/MM/YYYY)
        I_TIPPROCESSO  -> Tipo de processo aberto para a folha de pagamento
        I_MSG_ERRO    -> Mensagem de erro ocorrida no processamento da rotina
        I_SEQ_PAGAMENTO  -> Sequencia de pagamento do processo aberto
  Autor    : Marcio Carrir
  Alterac?o : 07/04/2006 - Criac?o da procedure

  -------------------------------------------------------------------------------------------------------------------------*/



/*-------------------------------------------------------------------------------------------------------------------------
  Procedure : Gera_Arq_Ect
  Objetivo  : Fazer a carga das consignaCOES geradas por alguma empresa conveniada
  Parametros: I_PERPROCESSO  -> Data do processo aberto para a folha de pagamento (Sempre 01/MM/YYYY)
        I_TIPPROCESSO  -> Tipo de processo aberto para a folha de pagamento
        I_GRP_PAG    -> Grupo de pagamento vinculado ao cronograma de pagamento (da tabela de grupos (TB_GRUPO_PAGAMENTO))
        I_TIPO_EMISSAO  -> Conjunto definido de servidores que ser?o considerados para gerac?o do arquivo
                SE I_GRP_PAG = 1 (CIVIL), filtra os servidores de acordo com o seguinte criterio:
                  1 :  Regi?o Metropolitada de Belem
                      BELEM
                      MOSQUEIRO
                      ANANINDEUA
                      MARITUBA
                      SANTA IZABEL
                      BENEVIDES
                        BENFICA
                        SANTA BARBARA DO PARA
                     2:   Outras areas
                     3:  Outros estados
                     4:   128341/1- Almir Gabriel
                         25020/1 - Sim?o Jatene
                         27928/2 - Leida Bosnic
                  SE I_GPP_PAG = 2 (MILITAR), filtra os servidores de acordo com o seguinte criterio:
                    1 :  (R) Servidores com beneficios de REFORMA
                  2 :  (E) Servidores com beneficios de RESERVA
        I_SEQ_PAGAMENTO  => Sequencia de pagamento do processo aberto
  Autor    : Marcio Carrir
  Alterac?o : 07/11/2005 - Criac?o da procedure
        10/04/2006 - Divis?o da procedure em duas, uma para gravac?o do historico e outro para gerac?o dos arquivos
  -------------------------------------------------------------------------------------------------------------------------*/

-------------------------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------------------------------








 ---------------------------------------------------------------------------------------------------------------------------


  ------------------------------------------------------------------------------------------------------------------------------
PROCEDURE GERA_ARQ_CNAB_JUD  (  I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                                I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                                I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                                I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                                I_GRP_PAGTO         IN NUMBER,
                                I_DEFINITIVO        IN VARCHAR2,
                                I_NOM_ARQUIVO       OUT VARCHAR2,
                                I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

type TConvenio is record
(
   dat_efetiva          date,
   grp_pago             number,
   seq_convenio         number(2),
   tipo_beneficio       varchar2(6),
   nome_beneficio       varchar2(60)
);

type TConvIdx   is table of TConvenio
                index by binary_integer;

type TypeDetLst is table of tb_folha%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;

aConvGrp              TConvIdx;

i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
i_cont                number:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/
vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := 1;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(05) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa          NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


/*----------------Header Arquivo---------------------------------*/
HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(05) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
HR_SiglaSistema    CHAR(03) := 'PPG';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '00943';                 -- Numero Agencia
HR_Digito          CHAR(01) := '1';                     -- DV
HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
HR_Modalidade       VARCHAR2(02) := '13';
HR_ContaCorrente   VARCHAR2(06) := '100109';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '8';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '020';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(12) := ' ';

/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '30';
HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '020';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(05) := ' ';      -- Codigo Convenio
HL_SiglaSistema      VARCHAR2(03) := 'PPG';     -- Sigla do Sistema
HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
HL_AgenciaManConta   VARCHAR2(05) := '00943';  -- Numero Agencia
HL_Digito            CHAR(01) := '1';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade         VARCHAR2(02) := '13';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100109'; -- Conta Corrente
HL_DVConta           CHAR(01) := '8';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02)     := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';
------------------------------------------------------------------------
vprocesso             CHAR(100) := ' ';

CURSOR c1 IS
    SELECT   distinct ff.cod_ide_cli,
            SUM(TRUNC(ff.val_liquido,2)) val_liquido,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
            SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
            ib.num_conta,
            SUBSTR(NVL(ib.num_dv_conta,'0'),1,1) num_dv_conta,
            DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
            SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30) nom_pessoa_fisica,
            pf.num_cpf,
            gp.cod_seq_convenio
    FROM    tb_folha               FF,
            TB_INFORMACAO_BANCARIA IB,
            TB_CONCESSAO_BENEFICIO CB,
            TB_BENEFICIARIO        BN,
            TB_PESSOA_FISICA       PF,
            TB_TIPOS_BENEFICIOS    TB,
            TB_GRUPO_PAGAMENTO     GP,
            TB_BANCO               BC
    WHERE   ff.cod_ins               = c_cod_ins
      AND   ff.per_processo          = I_PERPROCESSO
      AND   ff.tip_processo          = I_TIPPROCESSO
      AND   ff.seq_pagamento         = I_SEQ_PAGAMENTO
      AND   ff.val_liquido           > 0
      AND   ib.cod_ins               = ff.cod_ins
      AND   ib.cod_ide_cli           = ff.cod_ide_cli
      AND   TO_NUMBER(ib.cod_banco)  = nvl(I_BANCO,ib.cod_banco)
      AND   bn.cod_ins               = ff.cod_ins
      AND   bn.cod_beneficio         = ff.cod_beneficio
      AND   bn.cod_ide_cli_ben       = ff.cod_ide_cli_ben
      AND   bn.flg_status            in ( 'A', 'X' )  -- Inserido para processar um caso pontual
      AND   bn.cod_ide_cli_ben       = ff.cod_ide_cli
      AND   cb.cod_ins               = ff.cod_ins
      AND   cb.cod_beneficio         = ff.cod_beneficio
      AND   pf.cod_ins               = ff.cod_ins
      AND   pf.cod_ide_cli           = ff.cod_ide_cli_ben
      AND   cb.cod_tipo_beneficio    = tb.cod_tipo_beneficio
      AND   tb.cod_tipo_beneficio    = gp.cod_tipo_beneficio
      AND   CB.COD_ENTIDADE          = nvl(I_COD_ENTIDADE,CB.COD_ENTIDADE)
      AND   GP.NUM_GRP_PAG           = NVL(I_GRP_PAGTO, GP.NUM_GRP_PAG )
      AND   BN.COD_PROC_GRP_PAG      = GP.COD_PROC_GRP_PAGO
      AND   GP.COD_SEQ_CONVENIO      IS NOT NULL
      AND   TO_NUMBER( IB.COD_BANCO )= BC.COD_BANCO
      --and   ff.cod_ide_cli = '9036000001035900'  -- PM - Solicitou em 04/05/2010
      --**************************************************************
      --and   ff.cod_ide_cli in ( '95050015374840','95050031120740')
      --**************************************************************
      -- NAO GERA DADOS INVALIDOS --
      and   TRIM( nvl( ib.num_agencia,'0' ) ) != '00000'
      and   TRIM( nvl( ib.num_conta  ,'0' ) ) != '0000000'
      --and   ff.cod_ide_cli = '9036000000067700' -- PM - Solicitou em 09/04/2010
    GROUP BY   ff.cod_ide_cli,
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3),
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5),
              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1),
              ib.num_conta,
              SUBSTR(NVL(ib.num_dv_conta,'0'),1,1),
              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)),
              SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30),
              pf.num_cpf,
              gp.cod_seq_convenio;


c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,151)),3,'0');

    --
    aConvGrp.delete;
    i_cont := 0;

    FOR X1 IN (         SELECT   DISTINCT CP.DAT_PAG_EFETIVA,
                                 DECODE( I_GRP_PAGTO, NULL, 99, CP.NUM_GRP ) num_grp,
                                 GP.COD_SEQ_CONVENIO,
                                 TB.COD_TIPO_BENEFICIO,
                                 TB.NOM_TIPO_BENEFICIO
                        FROM   TB_CRONOGRAMA_PAG   CP,
                               TB_GRUPO_PAGAMENTO  GP,
                               TB_TIPOS_BENEFICIOS TB
                        WHERE   CP.NUM_GRP            = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
                        AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                        AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                        AND     CP.PER_PROCESSO       = I_PERPROCESSO
                        AND     CP.FLG_STATUS         = 'A'
                        AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                        ORDER BY 1,2,3                                                 ) LOOP


         i_cont := i_cont + 1;

         aConvGrp(i_cont).dat_efetiva    := x1.dat_pag_efetiva;
         aConvGrp(i_cont).grp_pago       := x1.num_grp;
         aConvGrp(i_cont).seq_convenio   := x1.cod_seq_convenio;
         aConvGrp(i_cont).tipo_beneficio := x1.cod_tipo_beneficio;
         aConvGrp(i_cont).nome_beneficio := x1.nom_tipo_beneficio;


    END LOOP;

    IF aConvGrp.count = 0 THEN
       c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
       RAISE e_ERROR;
    END IF;

/*
    BEGIN

        SELECT   CP.DAT_PAG_EFETIVA,         CP.NUM_GRP,  GP.COD_SEQ_CONVENIO, TB.COD_TIPO_BENEFICIO, TB.NOM_TIPO_BENEFICIO
        INTO         c_data_efetiva,  c_grupo_pagamento,           c_seq_conv,      c_cod_tipo_benef,       c_des_nom_benef
        FROM   TB_CRONOGRAMA_PAG   CP,
               TB_GRUPO_PAGAMENTO  GP,
               TB_TIPOS_BENEFICIOS TB
        WHERE   CP.NUM_GRP            = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
        AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
        AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
        AND     CP.PER_PROCESSO       = I_PERPROCESSO
        AND     CP.FLG_STATUS         = 'A'
        AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
        RAISE e_ERROR;
    END;

*/
    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo           => I_PERPROCESSO,
                                        p_cod_tip_processo       => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,   MRS
                                        p_cod_tipo_beneficio     =>  NULL,             -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => NVL(I_BANCO,151),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro               => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo              => null,
                                        p_cod_categoria          => null,
                                        p_cod_pccs               => null,
                                        p_cod_entidade           => I_COD_ENTIDADE,
/*                                        p_num_processo        => 0,
                                        p_num_grp             => I_GRP_PAGTO,
                                        p_num_seq_proc        => NULL,*/
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,  MRS
                                        p_cod_tipo_beneficio    => NULL,              -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => NVL(I_BANCO,151),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        /* p_num_processo        => 0,
                                        p_num_grp             => I_GRP_PAGTO,
                                        p_num_seq_proc        => NULL,*/
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*MRS-Header do Arquivo - Banco 151*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD( HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,12,' ');

    /*MRS-Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------
    FOR f IN aConvGrp.first..aConvGrp.last LOOP

        vDetalhe.delete;

        FOR REG IN C1  LOOP

            IF REG.COD_SEQ_CONVENIO = aConvGrp(f).seq_convenio THEN

                -- Inicializacao das tables e controle de exceptions
                BEGIN

                     IF REG.COD_BANCO = '151' THEN
                        i_conv  := 1;
                        i_pagto := vDetalhe(i_conv).count+1;      --1 CC
                     ELSE
                        i_conv  := 2;
                        i_pagto := vDetalhe(i_conv).count+1;      --2 DOC/TED
                     END IF;


                EXCEPTION
                WHEN NO_DATA_FOUND THEN
                   i_pagto := 1;

                END;

                ------------------------------------------------------------------------------------------------------------
                -- EXCESSAO PARA TRATAR PROBLEMA RELACIONADO AO COD_IDE_CLI = 0200010334900 QUE POSSUI DOIS BENEFICIOS
                -- SENDO UM DELES ( 717881 ) PARA CREDITO DE ORDERM JUDICIAL E O OUTRO NAO ( 917511 ) - Alteracao efetuada
                -- de acordo com orientacoes do Pepe - MRS 01/10/2009.
                ------------------------------------------------------------------------------------------------------------
                /*
                IF REG.COD_IDE_CLI = '0200010334900' THEN

                   -- Inicialmente ajusta a acao judicial
                   SELECT FF.COD_IDE_CLI, '151', '384', NULL, '62693', '0', '01', FF.VAL_LIQUIDO
                   INTO   vDetalhe(i_conv)(i_pagto).cod_ide_cli,
                          vDetalhe(i_conv)(i_pagto).cod_banco,
                          vDetalhe(i_conv)(i_pagto).num_agencia,
                          vDetalhe(i_conv)(i_pagto).num_dv_agencia,
                          vDetalhe(i_conv)(i_pagto).num_conta,
                          vDetalhe(i_conv)(i_pagto).num_dv_conta,
                          vDetalhe(i_conv)(i_pagto).cod_tipo_conta,
                          vDetalhe(i_conv)(i_pagto).val_liquido
                   FROM TB_FOLHA FF
                   WHERE FF.COD_INS      = c_cod_ins          AND   FF.TIP_PROCESSO = I_TIPPROCESSO
                   AND   FF.PER_PROCESSO = I_PERPROCESSO      AND   FF.SEQ_PAGAMENTO= I_SEQ_PAGAMENTO
                   AND   FF.COD_IDE_CLI  = REG.COD_IDE_CLI    AND   FF.COD_BENEFICIO= 717881;

                   vDetalhe(i_conv)(i_pagto).cod_ide_serv     := REG.NUM_CPF;
                   vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;

                   i_pagto := vDetalhe(i_conv).count+1;

                   SELECT  FF.VAL_LIQUIDO  INTO vDetalhe(i_conv)(i_pagto).val_liquido FROM TB_FOLHA FF
                   WHERE FF.COD_INS      = c_cod_ins       AND   FF.TIP_PROCESSO = I_TIPPROCESSO
                   AND   FF.PER_PROCESSO = I_PERPROCESSO   AND   FF.SEQ_PAGAMENTO= I_SEQ_PAGAMENTO
                   AND   FF.COD_IDE_CLI  = REG.COD_IDE_CLI AND   FF.COD_BENEFICIO= 917511;

                  vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
                  vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
                  vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
                  vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
                  vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
                  vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
                  vDetalhe(i_conv)(i_pagto).cod_ide_serv     := REG.NUM_CPF;             -- CAMPO UTILIZADO PARA O CPF
                  vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
                  vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;

                ELSE*/

                  -- Atrinbuicao dos valores a table
                  vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
                  vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
                  vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
                  vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
                  vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
                  vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
                  vDetalhe(i_conv)(i_pagto).cod_ide_serv     := REG.NUM_CPF;             -- CAMPO UTILIZADO PARA O CPF
                  vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
                  vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
                  vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
                  -------------------------------------------------------------------

            END IF;

        END LOOP;

        IF vDetalhe.count = 0 THEN
           c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
           RAISE e_ERROR;
        END IF;

        FOR j IN vDetalhe.first..vDetalhe.last
        LOOP

            BEGIN

              IF vDetalhe(j).count > 0 THEN

                  <<GET_CONVENIO>>
                  BEGIN

                    c_num_nsa           := 0;

                    -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                    SELECT   DISTINCT
                             RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                             LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                             LPAD(NVL(CB.COD_CONV,0),5,0),
                             TRIM(CB.DES_CONVENIO)
                    INTO   HR_NomBanco,
                           c_num_nsa,
                           HR_CodConvenio,
                           c_desc_conv
                    FROM   TB_CONVENIO_BANCO CB,
                           TB_BANCO          TB,
                           TB_ENVIO_BANCO    EB
                    WHERE CB.COD_BANCO        = NVL(I_BANCO,151)
                    AND   CB.COD_BANCO        = TB.COD_BANCO
                    AND   EB.COD_BANCO        = CB.COD_BANCO
                    AND   EB.COD_CONV         = CB.COD_CONV
                    AND   EB.PER_PROCESSO     = I_PERPROCESSO
                    AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)             -- EB.COD_ENTIDADE)
                    AND   EB.NUM_GRP          = aConvGrp(f).grp_pago                -- DECODE( aConvGrp(f).grp_pago, 99, EB.NUM_GRP, aConvGrp(f).grp_pago )
                    AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                    AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                    AND   CB.NUM_SEQ          = aConvGrp(f).seq_convenio            -- c_seq_conv MRS
                    AND   CB.TIPO_PAGTO       = j;

                  EXCEPTION
                  WHEN NO_DATA_FOUND THEN

                       SELECT RPAD(SUBSTR(BC.DES_BANCO,1,30),30,' '), CB.COD_CONV, CB.NUM_NSA, TRIM(CB.DES_CONVENIO)
                       INTO   HR_NomBanco, HR_CodConvenio, c_num_nsa, c_desc_conv
                       FROM TB_CONVENIO_BANCO CB,
                            TB_BANCO          BC
                       WHERE CB.COD_BANCO  = NVL(I_BANCO,151)
                       AND   CB.COD_INS    = c_cod_ins
                       AND   CB.NUM_SEQ    = aConvGrp(f).seq_convenio                    -- c_seq_conv
                       AND   CB.TIPO_PAGTO = j
                       AND   CB.COD_BANCO  = BC.COD_BANCO;

                       FOR K1 IN (  SELECT   GP.NUM_GRP_PAG
                                    FROM   TB_CRONOGRAMA_PAG   CP,
                                           TB_GRUPO_PAGAMENTO  GP,
                                           TB_TIPOS_BENEFICIOS TB
                                    WHERE   CP.NUM_GRP            = DECODE( aConvGrp(f).grp_pago, 99, CP.NUM_GRP, aConvGrp(f).grp_pago )
                                    AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                                    AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                                    AND     CP.PER_PROCESSO       = I_PERPROCESSO
                                    AND     CP.FLG_STATUS         = 'A'
                                    AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                                    AND     GP.COD_SEQ_CONVENIO   = aConvGrp(f).seq_convenio
                                    ORDER BY 1                                                         ) LOOP


                             BEGIN

                               -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                               INSERT INTO TB_ENVIO_BANCO EB
                               (
                                 COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                                 SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                                 NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                                 NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                                 COD_CONV
                               )
                               VALUES
                               (
                                 c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                                 I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 151 )    ,
                                 0                        , SYSDATE                  , SYSDATE                ,
                                 USER                     , 'GERA_ARQ_CNAB'          , K1.NUM_GRP_PAG         ,
                                 HR_CodConvenio
                               );

                               COMMIT;

                             EXCEPTION
                             WHEN OTHERS THEN
                               c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                               lOraErr     := TRUE;
                               RAISE e_ERROR;

                             END;

                       END LOOP;

                  WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END GET_CONVENIO;

                  IF  c_desc_conv = 'CONTA CORRENTE' THEN
                     HL_Lancamento  := '01';
                  ELSE
                     HL_Lancamento  := '03';
                  END IF;

              ELSE

                  GOTO END_LOOP;

              END IF;

            EXCEPTION
            WHEN NO_DATA_FOUND THEN
               GOTO END_LOOP;

            END;

            BEGIN

              c_cont_tot    := 0;
              c_cont_seq    := 0;
              c_count_seg_a := 0;
              v_Seq         := 0;
              vQtdeArq      := 0;
              c_total_geral := 0;
              HR_Sequencial := nvl(c_num_nsa,0);
              lFim          := FALSE;

              IF vDetalhe(j).count > 0 THEN

                  FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                      c_count_seg_a := c_count_seg_a + 1;
                      c_cont_seq := c_cont_seq + 1;
                      c_cont_tot := c_cont_tot + 1;

                      <<PRINT_FILE>>
                      BEGIN

                          IF k = 1                             OR
                             mod( c_cont_seq, vLimQuebra ) = 0 THEN

                              IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                                  IF c_cont_tot >= vDetalhe(j).last THEN
                                    lFim := TRUE;
                                  ELSE
                                    lFim := FALSE;
                                  END IF;

                                  TL_LoteServico     := LPAD(v_lote,4,0);
                                  TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                  TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                  TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                  TR_QtdContas     := LPAD(1,6,0);

                                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                        TR_QtdContas   || TR_Brancos2);

                                  UTL_FILE.FCLOSE( f_OutputCredito );

                              END IF;

                              c_cont_seq           := 1;
                              v_Seq                := NVL(v_Seq,0) + 1;
                              v_lote               := 1;
                              c_total_liquido      := 0;
                              vQtdeArq             := NVL(vQtdeArq,0) + 1;
                              HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );
                              --HR_Sequencial        := lpad( HR_Sequencial + vQtdeArq, 6, 0 ); -- Incremental incorreto

                              c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( aConvGrp(f).grp_pago, '0' ), 2, '0' );


                              IF c_definitivo = 'S' THEN
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                              ELSE
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt.conf';
                              END IF;

                              IF I_NOM_ARQUIVO IS NULL THEN
                                 I_NOM_ARQUIVO := c_OutputFileCredito;
                              ELSE
                                 I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                              END IF;

                              BEGIN

                                IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                   f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                                END IF;

                              EXCEPTION
                                WHEN UTL_FILE.INVALID_PATH THEN
                                     c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_MODE THEN
                                     c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_OPERATION THEN
                                     c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              -- Header de Arquivo
                              UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                    HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                    HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                    HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                    HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                    HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                    HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                    HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                    HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                    HR_Brancos5   );
                              -- Header de Lote
                              UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                                 HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                                 HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                                 HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                                 HL_Brancos2         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                 HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                                 HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                                 HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                                 HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                                 HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia          );

                          END IF;

                          DR_LoteServico       := LPAD(v_lote, 4, 0);
                          DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                          DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                          DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                          DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                          DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;
                          DR_NumeroDoc         := RPAD(vDetalhe(j)(k).cod_ide_cli,20,' ');            -- Numero do documento  p/ empresa (Doc,NF,NP
                          DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                          DR_DataLancamento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');

/*                          IF vDetalhe(j)(k).cod_ide_cli = '0200015892900' THEN                      --0200013964300' THEN
                             vprocesso := '';
                          END IF;
*/
                          IF DR_CodBancoFav = '151' THEN
                            /*---Calculo do DV da Agencia-------------------------------------------*/
                              SP_CALCULA_DV( 1,
                                             LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                             Null,
                                             vDvAg );
                            /*----------------------------------------------------------------------*/
                             DR_Digito             := NVL(TO_NUMBER(vDvAg),0);
                             DR_CamaraCentra       := '000';
                             DR_Zeros1             := LPAD(NVL(DR_Zeros1,0),4,0);
                             DR_Modalidade         := LPAD(NVL(to_number(vDetalhe(j)(k).cod_tipo_conta),0),2,'0');
                             DR_ContaCorrenteFav   := LPAD(SUBSTR(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,0);
                             vTipo                 := 1;

                          ELSE

                             DR_CamaraCentra       := '018';
                             DR_Digito             := ' ';            --NVL(vDetalhe(j)(k).num_dv_agencia,' ');
                             DR_Zeros1             := Null;
                             DR_Modalidade         := Null;

                             IF    DR_CodBancoFav = '033' THEN
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')||LPAD(TRUNC(vDetalhe(j)(k).num_conta), 6,0),12,0);
                             ELSIF DR_CodBancoFav = '104' THEN
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')||LPAD(TRUNC(vDetalhe(j)(k).num_conta), 8,0),12,0);
                             ELSE
                                DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                             END IF;

                             c_cont_seq := c_cont_seq + 1;

                             DRB_LoteServico       := LPAD(v_lote,4,0);                                             -- Lote de Servico
                             DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                             DRB_DataVencimento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );                  -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                             DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');                                       -- sequencial do registro no lote
                             DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);
                             vTipo                 := 2;

                          END IF;
                          --
                          vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                    DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                    DR_CodInstrucao      ||   DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                    DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                    DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                    DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                    DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                    DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                    DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                    DR_Brancos1          ||   DR_AvisoFavorecido  ||  DR_CodOcorrencia;
                          --

                          -- Imprime Detalhe
                          UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                              DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                              DR_CodInstrucao      ||   DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                              DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                              DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                              DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                              DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                              DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                              DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                              DR_Brancos1          ||   DR_AvisoFavorecido  ||  DR_CodOcorrencia);

                          -- Incrementa a tb_envio_arq_bancario
                          INSERT INTO TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV
                          )
                          VALUES
                          (
                                 1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                          aConvGrp(f).dat_efetiva,    DR_NomeFavorecido,
                                       ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                      null,      c_OutputFileCredito,
                                        vLinha,               c_definitivo,           DR_CodBancoFav,
                              DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                    DR_DVConta,              DR_Modalidade,            I_PERPROCESSO,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                           'N',                        '0'
                          );


                          IF DR_CodBancoFav != '151' THEN

                             -- DOC/TED
                             UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco           ||  DRB_LoteServico        ||  DRB_RegistroDet      ||
                                                                 DRB_SeqRegistroLote   ||  DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                                 DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                                                 DRB_Numero            ||  DRB_Complemento       ||  DRB_Bairro          ||
                                                                 DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                                                 DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                                                 DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                                                 DRB_CodigoFavorecido  || DRB_Brancos2  );

                             vLinha := DRB_CodBanco           ||  DRB_LoteServico        ||  DRB_RegistroDet      ||
                                       DRB_SeqRegistroLote   ||  DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                       DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                       DRB_Numero            ||  DRB_Complemento       ||  DRB_Bairro          ||
                                       DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                       DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                       DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                       DRB_CodigoFavorecido  || DRB_Brancos2;

                             --Incrementa a tb_envio_arq_bancario
                              INSERT INTO TB_ENVIO_ARQ_BANCARIO
                              (
                                           COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                              LOTE,                   CONVENIO,                 SEGMENTO,
                                           NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                        DT_GERACAO,                   DT_PAGTO,                     NOME,
                                             VALOR,                    NUM_CPF,                  ARQUIVO,
                                             LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                       COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                          DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                      TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                            FLG_PA,                    TIP_MOV
                              )
                              VALUES
                              (
                                     1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                   DRB_LoteServico,             HR_CodConvenio,     DRB_CodSegRegDetalhe,
                                     HR_Sequencial,                      vTipo,      DRB_SeqRegistroLote,
                                           to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                                c_data_efetiva,                     NULL,
                                                                             0,
                                                                          null,      c_OutputFileCredito,
                                            vLinha,               c_definitivo,           DR_CodBancoFav,
                                  DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                        DR_DVConta,              DR_Modalidade,            I_PERPROCESSO,
                                     I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                               'N',                        '0'
                              );


                          END IF;

                      EXCEPTION
                      WHEN OTHERS THEN
                           IF c_ERROR_MSG IS NULL THEN
                              c_ERROR_MSG := SQLERRM;
                           END IF;
                           I_MSG_ERRO  := c_ERROR_MSG;
                           lOraErr     := TRUE;
                           RAISE e_ERROR;

                      END PRINT_FILE;

                      UTL_FILE.FFLUSH(f_OutputCredito);

                      vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                      c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                      c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                      vcontador := vcontador + 1;
                      vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                      IF c_definitivo = 'S' THEN

                          -- ATUALIZACAO DA TB_FOLHA PARA O COD_IDE_CLI = '0200010334900'
/*
                          IF vDetalhe(j)(k).cod_ide_cli = '0200010334900' AND vDetalhe(j)(k).num_conta = '62693'    THEN

                            UPDATE   tb_folha
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            AND     seq_pagamento  = I_SEQ_PAGAMENTO
                            AND     cod_ide_cli    = vDetalhe(j)(k).cod_ide_cli
                            AND     cod_beneficio  = 717881;

                          ELSIF vDetalhe(j)(k).cod_ide_cli = '0200010334900' AND vDetalhe(j)(k).num_conta = '63789' THEN

                            UPDATE   tb_folha
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            AND     seq_pagamento  = I_SEQ_PAGAMENTO
                            AND     cod_ide_cli    = vDetalhe(j)(k).cod_ide_cli
                            AND     cod_beneficio  = 917511;

                          ELSE
*/
                            -- Esta parte do codigo devera ser mantida ate q haja uma definicao qto ao tratamento - MRS 01/10/2009

                            begin

                            UPDATE   tb_folha ff    --tmp_folha_reenvio_20100308    ff
                            SET   ff.cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  ff.num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  ff.num_dv_agencia   = vDvAg,
                                  ff.num_conta       = vDetalhe(j)(k).num_conta,
                                  ff.num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  ff.cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   ff.cod_ins        = c_cod_ins
                            AND     ff.tip_processo   = c_tipo_processo
                            AND     ff.per_processo   = I_PERPROCESSO
                            AND     ff.seq_pagamento  = I_SEQ_PAGAMENTO
                            AND     ff.cod_ide_cli    = vDetalhe(j)(k).cod_ide_cli
                            AND     EXISTS ( SELECT 1 FROM tb_beneficiario bn
                                             WHERE bn.cod_ins          = ff.cod_ins
                                             AND   bn.cod_beneficio    = ff.cod_beneficio
                                             AND   bn.cod_ide_cli_ben  = ff.cod_ide_cli
                                             AND   bn.cod_proc_grp_pag = LPAD( NVL( aConvGrp(f).grp_pago, bn.cod_proc_grp_pag ), 2, '0' ) );
                            exception
                            when others then
                                 dbms_output.put_line(vDetalhe(j)(k).cod_ide_cli);
                                 c_ERROR_MSG := sqlerrm;
                            end;

                          /*END IF;*/

                      END IF;

                  END LOOP;

                  IF not lFim THEN

                    TL_LoteServico     := LPAD(v_lote,4,0);
                    TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                    TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                    TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                    UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                        TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                        TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                    TR_QTDRegLote    := LPAD(v_lote,6,'0');
                    TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                    TR_QtdContas     := LPAD(1,6,0);

                    UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                          TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                          TR_QtdContas  || TR_Brancos2);
                    UTL_FILE.FCLOSE( f_OutputCredito );
                  END IF;

                  /*------------------------------------------
                    Atualiza os controles de envio para banco
                  ------------------------------------------*/
                  IF c_definitivo = 'S' THEN

                    BEGIN

                          c_num_nsa := vQtdeArq + c_num_nsa;

                          UPDATE   TB_ENVIO_BANCO
                          SET   VAL_LIQUIDO      = c_total_geral,
                                DAT_ENVIO        = SYSDATE,
                                DAT_ULT_ATU      = SYSDATE,
                                NOM_USU_ULT_ATU  = USER,
                                NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                                NUM_NSA          = c_num_nsa
                          WHERE  COD_INS           = c_cod_ins
                          AND    PER_PROCESSO      = I_PERPROCESSO
                          AND    COD_TIP_PROCESSO  = I_TIPPROCESSO
                          AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                          AND    COD_ENTIDADE      = NVL(I_COD_ENTIDADE,999)
                          AND    COD_BANCO         = NVL(I_BANCO,151)
                          AND    NUM_GRP           = DECODE( aConvGrp(f).grp_pago, 99, NUM_GRP, aConvGrp(f).grp_pago )
                          AND    COD_CONV          = TRUNC( HR_CodConvenio );

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                          UPDATE TB_CONVENIO_BANCO C
                          SET NUM_NSA   = c_num_nsa
                          WHERE COD_INS   = c_cod_ins
                          AND   COD_BANCO = NVL(I_BANCO,151)
                          AND   COD_CONV  = TRUNC( HR_CodConvenio );
                          --AND   SEQ_VIG   = I_SEQ_PAGAMENTO;       -- Retirado pois o processo nao trabalha sob esta condicao

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                    EXCEPTION
                      WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;
                    END;

                    COMMIT;

                  END IF;

              END IF;

            EXCEPTION
            WHEN OTHERS THEN
              GOTO END_LOOP;

            END;

            <<GERA_RESUMO>>
            BEGIN

              INSERT INTO TB_RESUMO_ARQ_BANCARIO
              (
                 COD_INS         ,                  PER_PROCESSO,          TIP_PROCESSO,
                 SEQ_PAGAMENTO   ,                     GRP_PAGTO,        FLG_DEFINITIVO,
                 DT_GERACAO      ,                      DT_PAGTO,               ARQUIVO,
                 QTDE            ,                         TOTAL,                FLG_PA,
                 TIP_MOV
              )
              VALUES
              (
                    1            ,                     I_PERPROCESSO,           I_TIPPROCESSO,
               I_SEQ_PAGAMENTO, LPAD( NVL( aConvGrp(f).grp_pago, '00' ), 2, '0' ),
                                                                                 c_definitivo,
               to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                aConvGrp(f).dat_efetiva,     c_OutputFileCredito,
                    c_count_seg_a,                      c_total_liquido,                 'N',
                             '0'
              );


            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;

            END;

            COMMIT;

            <<END_LOOP>>
            IF lOraErr THEN
               I_NOM_ARQUIVO := NULL;
               RAISE e_ERROR;
            END IF;

        END LOOP;

    END LOOP;

    UTL_FILE.FCLOSE_ALL;

  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => c_des_nom_benef,
                                        p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                        p_cod_banco              => NVL(I_BANCO,151),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                       /* p_num_processo        => 0,
                                        p_num_grp             => I_GRP_PAGTO,
                                        p_num_seq_proc        => NULL,*/
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => c_des_nom_benef,
                                          p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                          p_cod_banco              => NVL(I_BANCO,151),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
/*                                        p_num_processo        => 0,
                                        p_num_grp             => I_GRP_PAGTO,
                                        p_num_seq_proc        => NULL,*/
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


END GERA_ARQ_CNAB_jud;


PROCEDURE SP_GERA_ARQ_CNAB_CARGA  ( P_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                    P_PER_PROCESSO      IN DATE,
                                    P_DAT_PAGTO         IN DATE,
                                    I_MSG_ERRO          OUT VARCHAR2                ) IS
P_NOM_ARQUIVO VARCHAR2(300);
P_MSG_ERRO VARCHAR2(500);
BEGIN

   FOR C_CARGA IN
     (
          SELECT DISTINCT tb.num_carga
            FROM user_ipesp.tb_pagamentos_ordem_jud tb
           WHERE flg_status_pagamento = 'A'
             AND TB.VAL_PAGAMENTO > 0
           order by tb.num_carga
     )
   LOOP
      P_NOM_ARQUIVO := NULL;
      P_MSG_ERRO := NULL;

      SP_GERA_ARQ_CNAB_JUD2_V3(P_COD_INS, 'S', C_CARGA.NUM_CARGA, P_PER_PROCESSO, '00', TO_CHAR(P_DAT_PAGTO,'DD/MM/YYYY'), P_NOM_ARQUIVO, P_MSG_ERRO);

      IF (P_MSG_ERRO IS NULL) THEN
        UPDATE user_ipesp.tb_pagamentos_ordem_jud tb
           SET TB.FLG_STATUS_PAGAMENTO = 'F'
         WHERE TB.COD_INS = P_COD_INS
           AND TB.flg_status_pagamento = 'A'
           AND TB.VAL_PAGAMENTO > 0
           AND TB.NUM_CARGA = C_CARGA.NUM_CARGA;
         COMMIT;
      END IF;

   END LOOP;



END SP_GERA_ARQ_CNAB_CARGA;

PROCEDURE SP_GERA_ARQ_CNAB_JUD2_V3     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                          I_DEFINITIVO        IN VARCHAR2,
                                          I_NUM_CARGA         IN NUMBER,
                                          I_PER_PROCESSO      IN DATE,
                                          I_GRUPO             IN VARCHAR2 DEFAULT '00',
                                          I_DAT_PAGTO         IN VARCHAR2,
                                          I_NOM_ARQUIVO       OUT VARCHAR2,
                                          I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

type TConvenio is record
(
   dat_efetiva          date,
   grp_pago             number,
   seq_convenio         number(2),
   tipo_beneficio       varchar2(6),
   nome_beneficio       varchar2(60)
);

type TConvIdx   is table of TConvenio
                index by binary_integer;

type TypeDetLst is table of TB_FOLHA_PAG_JUD%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;

aConvGrp              TConvIdx;

i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
i_cont                number:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/

vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := I_COD_INS;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(05) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa         NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


/*----------------Header Arquivo---------------------------------*/

HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(20) := '0009662160126       ';-- odigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
--HR_SiglaSistema    CHAR(03) := 'PPG';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
HR_Digito          CHAR(01) := 'X';                     -- DV
--HR_Zeros           VARCHAR2(04) := '0000';                  -- Reservado
--HR_Modalidade      VARCHAR2(02) := '13';
HR_ContaCorrente   VARCHAR2(12) := '000000100957';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(12) := ' ';



/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '20';
HL_Lancamento        CHAR(02) := '71';         -- Forma de Lancamento 71 Deposito Judicial - 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '020';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(20) :='0009662160126       ';-- Codigo Convenio
HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
HL_Digito            CHAR(01) := 'X';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade        VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'RANGEL PESTANA';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_FILLER            VARCHAR(20):= 'XxxxxxxxxxxxxxxxxxxX';
--DR_IDENTIFICADOR     VARCHAR2(20) := ' ';
--DR_OutrasInf         CHAR(20) := ' ';            -- Outras Informacoes
DR_IDENTIFICADOR     VARCHAR(18) :=' ';
DR_FILLER2           VARCHAR(2)  :='YY';
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';
------------------------------------------------------------------------
vprocesso             CHAR(100) := ' ';

-- VARIAVEIS USADAS COMO PARAMETROS E QUE N?O S?O MAIS NECESSARIAS

I_GRP_PAGTO           VARCHAR2(2) := '99'; -- GRUPO PARA PAGAMENTOS EXTERNOS DEFINIDO NA TB_GRUPO_PAGAMENTO
I_TIPPROCESSO         CHAR(1) := 'N';
I_SEQ_PAGAMENTO       NUMBER(8) := 1;
I_COD_ENTIDADE        NUMBER(8) := NULL;
I_BANCO               NUMBER(8) := NULL;
VN_SEQ_CONVENIO       NUMBER;
VS_DAT_PAGTO          VARCHAR2(10) := NULL;
VS_PER_PROCESSO       VARCHAR2(10) := NULL;
c_convenio            VARCHAR2(20) := NULL;

CURSOR c1 IS
   SELECT DISTINCT nvl(tb.cod_ide_cli, ' ') cod_ide_cli,
					--trunc(to_number(REPLACE(REPLACE(TRIM(tb.val_pagamento), '.'),',','.')),2) AS val_liquido,
          tb.val_pagamento AS val_liquido,
          substr(lpad(to_char(to_number(nvl('0', 0))), 3, '0'), 1, 3) cod_banco,
					substr(lpad(to_char(to_number(nvl('0', 0))), 5, '0'), 1, 5) num_agencia,
					substr(nvl(nvl('0', 0), '0'), 1, 1) num_dv_agencia,
					'000' num_conta,
					'0' num_dv_conta,
					'00' cod_tipo_conta,
					substr(rpad(upper(nvl(tb.nom_beneficiario, ' ')), 30, ' '),
						   1,
						   30) nom_pessoa_fisica,
					tb.num_cpf num_cpf,
					'1' cod_seq_convenio, -- AGREGAR EM TABELA DE CONVENIOS

					I_DAT_PAGTO dat_pagamento,
					'00' cod_grp_pagto,
					tb.per_processo,
					tb.cod_identificador ID_PAGAMENTO,
					01 num_seq_benef,
					tb.rowid
			FROM user_ipesp.tb_pagamentos_ordem_jud tb
	   WHERE tb.cod_ins = i_cod_ins
			 AND tb.per_processo = i_per_processo
			 AND tb.flg_status_pagamento = 'A'
       AND tb.val_pagamento > 0
			 and tb.num_carga = I_num_carga;



c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
  END IF;

  BEGIN
    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    vprocesso := 'Inicio...';

    /*Header do Arquivo - Banco 001 Banco de Brasil*/
    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,12,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_IDENTIFICADOR     := ' ';
    --DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    ------------------------------------------
    DR_FILLER             := 'XxxxxxxxxxxxxxxxxxxX';
    DR_FILLER             := '                    ';
    DR_IDENTIFICADOR      :='                 ';
    DR_FILLER2            :='YY';
    DR_FILLER2            :='  ';

    ------------------------------------------

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------
    vDetalhe.delete;

    FOR REG IN C1  LOOP
        -- Inicializacao das tables e controle de exceptions
      BEGIN
          i_conv  := 1;
          i_pagto := vDetalhe(i_conv).count+1;      --1 CC
          EXCEPTION
        WHEN NO_DATA_FOUND THEN
           i_pagto := 1;
        END;


        -- Atribuicao dos valores a tabelas

        vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
        vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
        vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
        vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
        vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
        vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
        vDetalhe(i_conv)(i_pagto).num_cpf          := REG.NUM_CPF;
        vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
        vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
        vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
        vDetalhe(i_conv)(i_pagto).num_grup         := REG.cod_grp_pagto;
        vDetalhe(i_conv)(i_pagto).per_processo     := REG.PER_PROCESSO;
        vDetalhe(i_conv)(i_pagto).DAT_PROCESSO     := REG.DAT_PAGAMENTO; -- ARMAZEZA A DATA DE PAGAMENTO
        vDetalhe(i_conv)(i_pagto).ID_PAGAMENTO     := REG.ID_PAGAMENTO;

        -------------------------------------------------------------------

   END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

        FOR j IN vDetalhe.first..vDetalhe.last
        LOOP
            -- INICIO DA LEITURA PARA IMPRESS?O.
            BEGIN
              c_cont_tot    := 0;
              c_cont_seq    := 0;
              c_count_seg_a := 0;
              v_Seq         := 0;
              vQtdeArq      := 0;
              c_total_geral := 0;
              HR_Sequencial := nvl(c_num_nsa,0);
              lFim          := FALSE;
              c_convenio    := ' ';

              IF vDetalhe(j).count > 0 THEN
                  FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                      --------*******USADO PARA OBETER O CODIDO DO CONVENIO E O NUMERO DO NSA----------
                      BEGIN
                           BEGIN
                              c_num_nsa   := 0;
                              VS_DAT_PAGTO := vDetalhe(j)(K).DAT_PROCESSO;
                              VS_PER_PROCESSO := vDetalhe(j)(K).PER_PROCESSO;

                            EXCEPTION
                              WHEN OTHERS THEN
                                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                                   lOraErr     := TRUE;
                                   RAISE e_ERROR;
                            END;

                             HR_NomBanco :='BB';
                             c_num_nsa   :=0;
                             HR_CodConvenio:=99;
                             c_desc_conv   :='BB';
                             HL_Lancamento  := '71';
                             HR_Sequencial := nvl(c_num_nsa,0);

                      EXCEPTION
                      WHEN NO_DATA_FOUND THEN
                         GOTO END_LOOP;

                      END;
                      ----------------------------************************-------------------------

                      c_count_seg_a := c_count_seg_a + 1;
                      c_cont_seq := c_cont_seq + 1;
                      c_cont_tot := c_cont_tot + 1;

                      <<PRINT_FILE>>
                      BEGIN
                          IF k = 1 OR mod( c_cont_seq, vLimQuebra ) = 0 or c_convenio != HR_CodConvenio THEN
                              c_convenio := HR_CodConvenio;
                              IF mod( c_cont_seq, vLimQuebra ) = 0 OR (UTL_FILE.IS_OPEN( f_OutputCredito )) THEN -- Executa qdo ha quebra de arquivo

                                  TL_LoteServico     := LPAD(v_lote,4,0);
                                  TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                  TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                  TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                  TR_QtdContas     := LPAD(' ',6,' ');

                                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                        TR_QtdContas   || TR_Brancos2);

                                  UTL_FILE.FCLOSE( f_OutputCredito );
                                  COMMIT;

                              END IF;

                              c_cont_seq           := 1;
                              v_Seq                := NVL(v_Seq,0) + 1;
                              v_lote               := 1;
                              c_total_liquido      := 0;
                              vQtdeArq             := NVL(vQtdeArq,0) + 1;
                              HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                              c_OutputFileCredito  := 'cnab240' ||'_'||TO_CHAR(I_NUM_CARGA)||'_'|| TO_CHAR(I_PER_PROCESSO,'YYYY')||TO_CHAR(I_PER_PROCESSO,'MM')||'-'||I_GRUPO || '_' || LPAD(v_Seq,2,0);
                              c_OutputFileCredito  := c_OutputFileCredito;

                              if (j = 1) then
                                 c_OutputFileCredito  := c_OutputFileCredito || '_JUD_EXT';
                              elsif (j = 2) then
                                 c_OutputFileCredito  := c_OutputFileCredito || '_DOC_EXT';
                              end if;

                              IF c_definitivo = 'S' THEN
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                              ELSE
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt.conf';
                              END IF;

                              IF I_NOM_ARQUIVO IS NULL THEN
                                 I_NOM_ARQUIVO := c_OutputFileCredito;
                              ELSE
                                 I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                              END IF;

                              BEGIN

                              IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                 f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                              END IF;

                              EXCEPTION
                                WHEN UTL_FILE.INVALID_PATH THEN
                                     c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_MODE THEN
                                     c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_OPERATION THEN
                                     c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              -- Header de Arquivo
                              UTL_FILE.PUT_LINE( f_OutputCredito, '00100000         2090412130001360009662160126       01897X0000001009575 Sao Paulo Previdencia - SPPREVBANCO DO BRASIL S.A.                    12112201011463600005808200000                                                                     ');
                              /*UTL_FILE.PUT_LINE( f_OutputCredito, HR_CodBanco
                                                                  || HR_LoteServicoArq
                                                                  || HR_RegistroHeader
                                                                  || HR_Brancos1
                                                                  || HR_TipoInscricao
                                                                  || HR_CGCEmpresa
                                                                  || HR_CodConvenio
                                                                  || HR_AgenciaManConta
                                                                  || HR_Digito
                                                                  || HR_ContaCorrente
                                                                  || HR_DVConta
                                                                  || HR_DVAgenciaConta
                                                                  || HR_NomEmpresa
                                                                  || HR_NomBanco
                                                                  || HR_Brancos2
                                                                  || HR_CodRemRet
                                                                  || HR_DataGeracao
                                                                  || HR_HoraGeracao
                                                                  || HR_Sequencial
                                                                  || HR_NRLayout
                                                                  || HR_DenGravacao
                                                                  || HR_Brancos3
                                                                  || HR_Brancos4
                                                                  || HR_Brancos5
                                                                  );*/

                              -- Header de Lote
                              UTL_FILE.PUT_LINE( f_OutputCredito,'00100011C2071020 2090412130001360009662160126       01897X0000001009575 Sao Paulo Previdencia - SPPREV                                        RANGEL PESTANA                00300               Sao Paulo           01017911SP                  ');
                              /*UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader ||
                                                                 HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento     ||
                                                                 HL_VersaoLote      ||  HL_Brancos1       ||  HL_TipoInscricao  ||
                                                                 HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                 HL_Zeros           ||  HL_Modalidade    ||   HL_ContaCorrente ||
                                                                 HL_DVConta         ||  HL_DVAgenciaConta||  HL_NomEmpresa     ||
                                                                 HL_Mensagem        ||  HL_NomeRua       ||  HL_NumeroLocal    ||
                                                                 HL_Complemento     ||  HL_Cidade        ||  HL_Cep            ||
                                                                 HL_UF              ||  HL_Brancos3      ||  HL_CodOcorrencia   );*/

                          END IF;

                          DR_LoteServico       := LPAD(v_lote, 4, 0);
                          DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                          DR_CodBancoFav       := '001';
                          DR_CodAgenciaFav     := '00000';
                          DR_DVConta           := '0';
                          DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;
                          DR_NumeroDoc         := RPAD(vDetalhe(j)(k).cod_ide_cli,20,' ');  -- Numero do documento  p/ empresa (Doc,NF,NP
                          DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                          DR_DataLancamento    := replace(VS_DAT_PAGTO, '/' );



                          /*----------------------------------------------------------------------*/
                           DR_Digito             := NVL(TO_NUMBER(vDvAg),0);
                           DR_CamaraCentra       := '000';
                           DR_Zeros1             := LPAD(NVL(DR_Zeros1,0),4,0);
                           DR_Modalidade         := LPAD(NVL(to_number(vDetalhe(j)(k).cod_tipo_conta),0),2,'0');
                           DR_ContaCorrenteFav   := LPAD(SUBSTR(TRUNC(0),1,6),6,0);
                           vTipo                 := 1;

                          DR_IDENTIFICADOR :=rpad(vDetalhe(j)(k).ID_PAGAMENTO,18,'0');
                          vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                    DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                    DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                    DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                    DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                    DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                    DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                    DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                    DR_DataReal          ||  DR_ValorReal         ||   DR_FILLER          || DR_IDENTIFICADOR    ||
                                    DR_FILLER2           ||  DR_Brancos1          ||  DR_AvisoFavorecido  ||
                                    DR_CodOcorrencia;
                          --

                          -- Imprime Detalhe
                          UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                              DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                              DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav       ||
                                                              DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                              DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                              DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                              DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                              DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                              DR_DataReal          ||  DR_ValorReal         ||  DR_FILLER           ||
                                                              DR_IDENTIFICADOR     ||  DR_FILLER2          ||  DR_Brancos1         ||  DR_AvisoFavorecido  ||
                                                              DR_CodOcorrencia);


                      EXCEPTION
                          WHEN OTHERS THEN
                             IF c_ERROR_MSG IS NULL THEN
                                c_ERROR_MSG := SQLERRM;
                             END IF;
                             I_MSG_ERRO  := c_ERROR_MSG;
                             lOraErr     := TRUE;
                             RAISE e_ERROR;
                      END PRINT_FILE;



                      UTL_FILE.FFLUSH(f_OutputCredito);

                      vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                      c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                      c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                      vcontador := vcontador + 1;
                      vprocesso := 'Atualizando registro ' || vcontador || ' na tb_folha_Externo.';

                  END LOOP;


                  TL_LoteServico    := LPAD(v_lote,4,0);
                  TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                  TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                  TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                  TR_QtdContas     := LPAD(' ',6,' ');

                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                        TR_QtdContas   || TR_Brancos2);
                  UTL_FILE.FCLOSE( f_OutputCredito );
                  COMMIT;

                  /*------------------------------------------
                    Atualiza os controles de envio para banco
                  ------------------------------------------*/
                  IF c_definitivo = 'S' THEN
                    BEGIN
                         c_num_nsa := vQtdeArq + c_num_nsa;

                    EXCEPTION
                      WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO_EXTERNO) : ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;
                    END;

                    COMMIT;

                  END IF;

              END IF;

            EXCEPTION
            WHEN OTHERS THEN
              GOTO END_LOOP;

            END;

            <<END_LOOP>>
            IF lOraErr THEN
               ROLLBACK;
               I_NOM_ARQUIVO := NULL;
               RAISE e_ERROR;
            END IF;

        END LOOP;
    UTL_FILE.FCLOSE_ALL;

  EXCEPTION
      WHEN e_ERROR THEN
           DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
           UTL_FILE.FCLOSE_ALL;
           RAISE e_ERROR;

      WHEN OTHERS THEN
           c_error_msg := SQLERRM;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           UTL_FILE.FCLOSE_ALL;
           DBMS_OUTPUT.PUT_LINE(vprocesso);
           RAISE e_ERROR;
  END;

EXCEPTION
  WHEN OTHERS THEN
       NULL;


END SP_GERA_ARQ_CNAB_JUD2_V3;

PROCEDURE GERA_ARQ_CNAB_JUD2     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                    I_DEFINITIVO        IN VARCHAR2,
                                    I_PER_PROCESSO      IN DATE,
                                    I_GRUPO             IN VARCHAR2,
                                    I_DAT_PAGTO         IN VARCHAR2,
                                    I_NOM_ARQUIVO       OUT VARCHAR2,
                                    I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

type TConvenio is record
(
   dat_efetiva          date,
   grp_pago             number,
   seq_convenio         number(2),
   tipo_beneficio       varchar2(6),
   nome_beneficio       varchar2(60)
);

type TConvIdx   is table of TConvenio
                index by binary_integer;

type TypeDetLst is table of TB_FOLHA_PAG_JUD%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;

aConvGrp              TConvIdx;

i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
i_cont                number:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/

vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := I_COD_INS;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(05) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa         NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


/*----------------Header Arquivo---------------------------------*/

HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(20) := '0009662160126       ';-- odigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
--HR_SiglaSistema    CHAR(03) := 'PPG';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
HR_Digito          CHAR(01) := 'X';                     -- DV
--HR_Zeros           VARCHAR2(04) := '0000';                  -- Reservado
--HR_Modalidade      VARCHAR2(02) := '13';
HR_ContaCorrente   VARCHAR2(12) := '000000100957';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(12) := ' ';



/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '20';
HL_Lancamento        CHAR(02) := '71';         -- Forma de Lancamento 71 Deposito Judicial - 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '020';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(20) :='0009662160126       ';-- Codigo Convenio
HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
HL_Digito            CHAR(01) := 'X';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade        VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'RANGEL PESTANA';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_FILLER            VARCHAR(20):= 'XxxxxxxxxxxxxxxxxxxX';
--DR_IDENTIFICADOR     VARCHAR2(20) := ' ';
--DR_OutrasInf         CHAR(20) := ' ';            -- Outras Informacoes
DR_IDENTIFICADOR     VARCHAR(18) :=' ';
DR_FILLER2           VARCHAR(2)  :='YY';
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';
------------------------------------------------------------------------
vprocesso             CHAR(100) := ' ';

-- VARIAVEIS USADAS COMO PARAMETROS E QUE N?O S?O MAIS NECESSARIAS

I_GRP_PAGTO           VARCHAR2(2) := '99'; -- GRUPO PARA PAGAMENTOS EXTERNOS DEFINIDO NA TB_GRUPO_PAGAMENTO
I_TIPPROCESSO         CHAR(1) := 'N';
I_SEQ_PAGAMENTO       NUMBER(8) := 1;
I_COD_ENTIDADE        NUMBER(8) := NULL;
I_BANCO               NUMBER(8) := NULL;
VN_SEQ_CONVENIO       NUMBER;
VS_DAT_PAGTO          VARCHAR2(10) := NULL;
VS_PER_PROCESSO       VARCHAR2(10) := NULL;
c_convenio            VARCHAR2(20) := NULL;

CURSOR c1 IS


 SELECT distinct nvl(ff.cod_ide_cli,' ') cod_ide_cli, -- ID_CLI
                 --trunc(TO_NUMBER(REPLACE(FF.VAL_LIQUIDO, ',', '.')),2) VAL_LIQUIDO,
                 trunc(TO_NUMBER(REPLACE(replace(trim(FF.VAL_LIQUIDO),'.'), ',', '.')),2) as VAL_LIQUIDO,
                 SUBSTR(LPAD(TO_CHAR(TO_NUMBER(nvl(ff.cod_banco,0))), 3, '0'),
                        1,
                        3) cod_banco,
                 SUBSTR(LPAD(TO_CHAR(TO_NUMBER(nvl(ff.num_agencia,0))), 5, '0'),
                        1,
                        5) num_agencia,
                 SUBSTR(NVL(nvl(ff.num_dv_agencia,0), '0'), 1, 1) num_dv_agencia,
                 '000' num_conta,
                 '0' num_dv_conta,
                 '00' cod_tipo_conta,
                 SUBSTR(RPAD(UPPER(nvl(FF.NOM_BEN,' ')), 30, ' '), 1, 30) nom_pessoa_fisica,
                  FF.NUM_CPF num_cpf,
                 -- '966216' cod_seq_convenio, -- Agregar em tabela de convenios
                 '1' cod_seq_convenio, -- Agregar em tabela de convenios

                 FF.DAT_PAGAMENTO,
                 '00' cod_grp_pagto,
                 FF.PER_PROCESSO,
                 FF.ID_PAGAMENTO,
                 01 num_seq_benef

   FROM USER_IPESP.TB_FOLHA_PAG_JUD FF
  WHERE ff.cod_ins = I_COD_INS
    AND ff.per_processo=I_PER_PROCESSO
    and trunc(TO_NUMBER(replace(REPLACE(trim(FF.VAL_LIQUIDO),'.'), ',', '.')),2) > 0
    --AND trunc(TO_NUMBER(REPLACE(FF.VAL_LIQUIDO, ',', '.')),2) > 0
    AND FF.FLG_STATUS = '1'
    AND FF.DAT_PAGAMENTO = TO_DATE(I_DAT_PAGTO,'DD/MM/YYYY')
    AND FF.COD_GRP_PAGTO=TO_NUMBER(I_GRUPO); -- PROCESSO DISPONIVEL PARA ENVIO BANCARIO



c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
  END IF;

  BEGIN
    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    vprocesso := 'Inicio...';

    /*Header do Arquivo - Banco 001 Banco de Brasil*/
    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,12,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_IDENTIFICADOR     := ' ';
    --DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    ------------------------------------------
    DR_FILLER             := 'XxxxxxxxxxxxxxxxxxxX';
    DR_FILLER             := '                    ';
    DR_IDENTIFICADOR      :='                 ';
    DR_FILLER2            :='YY';
    DR_FILLER2            :='  ';

    ------------------------------------------

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------
    vDetalhe.delete;

    FOR REG IN C1  LOOP
        -- Inicializacao das tables e controle de exceptions
      BEGIN
          i_conv  := 1;
          i_pagto := vDetalhe(i_conv).count+1;      --1 CC
          EXCEPTION
        WHEN NO_DATA_FOUND THEN
           i_pagto := 1;
        END;


        -- Atribuicao dos valores a tabelas

        vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
        vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
        vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
        vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
        vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
        vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
        vDetalhe(i_conv)(i_pagto).num_cpf          := REG.NUM_CPF;
        vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
        vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
        vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
        vDetalhe(i_conv)(i_pagto).num_grup         := REG.cod_grp_pagto;
        vDetalhe(i_conv)(i_pagto).per_processo     := REG.PER_PROCESSO;
        vDetalhe(i_conv)(i_pagto).DAT_PROCESSO     := REG.DAT_PAGAMENTO; -- ARMAZEZA A DATA DE PAGAMENTO
        vDetalhe(i_conv)(i_pagto).ID_PAGAMENTO     := REG.ID_PAGAMENTO;

        -------------------------------------------------------------------

   END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

        FOR j IN vDetalhe.first..vDetalhe.last
        LOOP
            -- INICIO DA LEITURA PARA IMPRESS?O.
            BEGIN
              c_cont_tot    := 0;
              c_cont_seq    := 0;
              c_count_seg_a := 0;
              v_Seq         := 0;
              vQtdeArq      := 0;
              c_total_geral := 0;
              HR_Sequencial := nvl(c_num_nsa,0);
              lFim          := FALSE;
              c_convenio    := ' ';

              IF vDetalhe(j).count > 0 THEN
                  FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                      --------*******USADO PARA OBETER O CODIDO DO CONVENIO E O NUMERO DO NSA----------
                      BEGIN
                           BEGIN
                              c_num_nsa   := 0;
                              VS_DAT_PAGTO := vDetalhe(j)(K).DAT_PROCESSO;
                              VS_PER_PROCESSO := vDetalhe(j)(K).PER_PROCESSO;

                            EXCEPTION
                              WHEN OTHERS THEN
                                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                                   lOraErr     := TRUE;
                                   RAISE e_ERROR;
                            END;

                             HR_NomBanco :='BB';
                             c_num_nsa   :=0;
                             HR_CodConvenio:=99;
                             c_desc_conv   :='BB';
                             HL_Lancamento  := '71';
                             HR_Sequencial := nvl(c_num_nsa,0);

                      EXCEPTION
                      WHEN NO_DATA_FOUND THEN
                         GOTO END_LOOP;

                      END;
                      ----------------------------************************-------------------------

                      c_count_seg_a := c_count_seg_a + 1;
                      c_cont_seq := c_cont_seq + 1;
                      c_cont_tot := c_cont_tot + 1;

                      <<PRINT_FILE>>
                      BEGIN
                          IF k = 1 OR mod( c_cont_seq, vLimQuebra ) = 0 or c_convenio != HR_CodConvenio THEN
                              c_convenio := HR_CodConvenio;
                              IF mod( c_cont_seq, vLimQuebra ) = 0 OR (UTL_FILE.IS_OPEN( f_OutputCredito )) THEN -- Executa qdo ha quebra de arquivo

                                  TL_LoteServico     := LPAD(v_lote,4,0);
                                  TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                  TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                  TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                  TR_QtdContas     := LPAD(' ',6,' ');

                                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                        TR_QtdContas   || TR_Brancos2);

                                  UTL_FILE.FCLOSE( f_OutputCredito );
                                  COMMIT;

                              END IF;

                              c_cont_seq           := 1;
                              v_Seq                := NVL(v_Seq,0) + 1;
                              v_lote               := 1;
                              c_total_liquido      := 0;
                              vQtdeArq             := NVL(vQtdeArq,0) + 1;
                              HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                              c_OutputFileCredito  := 'cnab240' || '_'  ||'_'|| TO_CHAR(I_PER_PROCESSO,'YYYY')||TO_CHAR(I_PER_PROCESSO,'MM')||'-'||I_GRUPO || '_' || LPAD(v_Seq,2,0);
                              c_OutputFileCredito  := c_OutputFileCredito;

                              if (j = 1) then
                                 c_OutputFileCredito  := c_OutputFileCredito || '_JUD_EXT';
                              elsif (j = 2) then
                                 c_OutputFileCredito  := c_OutputFileCredito || '_DOC_EXT';
                              end if;

                              IF c_definitivo = 'S' THEN
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                              ELSE
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt.conf';
                              END IF;

                              IF I_NOM_ARQUIVO IS NULL THEN
                                 I_NOM_ARQUIVO := c_OutputFileCredito;
                              ELSE
                                 I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                              END IF;

                              BEGIN

                              IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                 f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                              END IF;

                              EXCEPTION
                                WHEN UTL_FILE.INVALID_PATH THEN
                                     c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_MODE THEN
                                     c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_OPERATION THEN
                                     c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              -- Header de Arquivo
                              UTL_FILE.PUT_LINE( f_OutputCredito, '00100000         2090412130001360009662160126       01897X0000001009575 Sao Paulo Previdencia - SPPREVBANCO DO BRASIL S.A.                    12112201011463600005808200000                                                                     ');
                              /*UTL_FILE.PUT_LINE( f_OutputCredito, HR_CodBanco
                                                                  || HR_LoteServicoArq
                                                                  || HR_RegistroHeader
                                                                  || HR_Brancos1
                                                                  || HR_TipoInscricao
                                                                  || HR_CGCEmpresa
                                                                  || HR_CodConvenio
                                                                  || HR_AgenciaManConta
                                                                  || HR_Digito
                                                                  || HR_ContaCorrente
                                                                  || HR_DVConta
                                                                  || HR_DVAgenciaConta
                                                                  || HR_NomEmpresa
                                                                  || HR_NomBanco
                                                                  || HR_Brancos2
                                                                  || HR_CodRemRet
                                                                  || HR_DataGeracao
                                                                  || HR_HoraGeracao
                                                                  || HR_Sequencial
                                                                  || HR_NRLayout
                                                                  || HR_DenGravacao
                                                                  || HR_Brancos3
                                                                  || HR_Brancos4
                                                                  || HR_Brancos5
                                                                  );*/

                              -- Header de Lote
                              UTL_FILE.PUT_LINE( f_OutputCredito,'00100011C2071020 2090412130001360009662160126       01897X0000001009575 Sao Paulo Previdencia - SPPREV                                        RANGEL PESTANA                00300               Sao Paulo           01017911SP                  ');
                              /*UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader ||
                                                                 HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento     ||
                                                                 HL_VersaoLote      ||  HL_Brancos1       ||  HL_TipoInscricao  ||
                                                                 HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                 HL_Zeros           ||  HL_Modalidade    ||   HL_ContaCorrente ||
                                                                 HL_DVConta         ||  HL_DVAgenciaConta||  HL_NomEmpresa     ||
                                                                 HL_Mensagem        ||  HL_NomeRua       ||  HL_NumeroLocal    ||
                                                                 HL_Complemento     ||  HL_Cidade        ||  HL_Cep            ||
                                                                 HL_UF              ||  HL_Brancos3      ||  HL_CodOcorrencia   );*/

                          END IF;

                          DR_LoteServico       := LPAD(v_lote, 4, 0);
                          DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                          DR_CodBancoFav       := '001';
                          DR_CodAgenciaFav     := '00000';
                          DR_DVConta           := '0';
                          DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;
                          DR_NumeroDoc         := RPAD(vDetalhe(j)(k).cod_ide_cli,20,' ');            -- Numero do documento  p/ empresa (Doc,NF,NP
                          DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                          DR_DataLancamento    := replace(VS_DAT_PAGTO, '/' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');



                          /*----------------------------------------------------------------------*/
                           DR_Digito             := NVL(TO_NUMBER(vDvAg),0);
                           DR_CamaraCentra       := '000';
                           DR_Zeros1             := LPAD(NVL(DR_Zeros1,0),4,0);
                           DR_Modalidade         := LPAD(NVL(to_number(vDetalhe(j)(k).cod_tipo_conta),0),2,'0');
                           DR_ContaCorrenteFav   := LPAD(SUBSTR(TRUNC(0),1,6),6,0);
                           vTipo                 := 1;

                          DR_IDENTIFICADOR :=rpad(vDetalhe(j)(k).ID_PAGAMENTO,18,'0');
                          vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                    DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                    DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                    DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                    DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                    DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                    DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                    DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                    DR_DataReal          ||  DR_ValorReal         ||   DR_FILLER          || DR_IDENTIFICADOR    ||
                                    DR_FILLER2           ||  DR_Brancos1          ||  DR_AvisoFavorecido  ||
                                    DR_CodOcorrencia;
                          --

                          -- Imprime Detalhe
                          UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                              DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                              DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav       ||
                                                              DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                              DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                              DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                              DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                              DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                              DR_DataReal          ||  DR_ValorReal         ||  DR_FILLER           ||
                                                              DR_IDENTIFICADOR     ||  DR_FILLER2          ||  DR_Brancos1         ||  DR_AvisoFavorecido  ||
                                                              DR_CodOcorrencia);


                      EXCEPTION
                          WHEN OTHERS THEN
                             IF c_ERROR_MSG IS NULL THEN
                                c_ERROR_MSG := SQLERRM;
                             END IF;
                             I_MSG_ERRO  := c_ERROR_MSG;
                             lOraErr     := TRUE;
                             RAISE e_ERROR;
                      END PRINT_FILE;



                      UTL_FILE.FFLUSH(f_OutputCredito);

                      vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                      c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                      c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                      vcontador := vcontador + 1;
                      vprocesso := 'Atualizando registro ' || vcontador || ' na tb_folha_Externo.';

                  END LOOP;


                  TL_LoteServico    := LPAD(v_lote,4,0);
                  TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                  TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                  TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                  TR_QtdContas     := LPAD(' ',6,' ');

                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                        TR_QtdContas   || TR_Brancos2);
                  UTL_FILE.FCLOSE( f_OutputCredito );
                  COMMIT;

                  /*------------------------------------------
                    Atualiza os controles de envio para banco
                  ------------------------------------------*/
                  IF c_definitivo = 'S' THEN
                    BEGIN
                         c_num_nsa := vQtdeArq + c_num_nsa;

                    EXCEPTION
                      WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO_EXTERNO) : ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;
                    END;

                    COMMIT;

                  END IF;

              END IF;

            EXCEPTION
            WHEN OTHERS THEN
              GOTO END_LOOP;

            END;

            <<END_LOOP>>
            IF lOraErr THEN
               ROLLBACK;
               I_NOM_ARQUIVO := NULL;
               RAISE e_ERROR;
            END IF;

        END LOOP;
    UTL_FILE.FCLOSE_ALL;
    
    
  EXCEPTION
      WHEN e_ERROR THEN
           DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
           UTL_FILE.FCLOSE_ALL;
           RAISE e_ERROR;

      WHEN OTHERS THEN
           c_error_msg := SQLERRM;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           UTL_FILE.FCLOSE_ALL;
           DBMS_OUTPUT.PUT_LINE(vprocesso);
           RAISE e_ERROR;
  END;

EXCEPTION
  WHEN OTHERS THEN
       NULL;


END GERA_ARQ_CNAB_JUD2;




  ------------------------------------------------------------------------------------------------------


PROCEDURE GERA_ARQ_CNAB_SALFAM  (I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                 I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                 I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                                 I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                 I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                                 I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                                 I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                                 I_GRP_PAGTO         IN NUMBER,
                                 I_DEFINITIVO        IN VARCHAR2,
                                 I_NOM_ARQUIVO       OUT VARCHAR2,
                                 I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;
v_grp_pagto number := 60; -- baseado no comentario do marcos roberto o grupo deve SEMPRE SER 60

type TConvenio is record
(
   dat_efetiva          date,
   grp_pago             number,
   seq_convenio         number(2),
   tipo_beneficio       varchar2(6),
   nome_beneficio       varchar2(60)
);

type TConvIdx   is table of TConvenio
                index by binary_integer;

type TypeDetLst is table of tb_folha%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;

aConvGrp              TConvIdx;

i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
i_cont                number:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/
vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;
c_OutputFileCredito_Crip   VARCHAR2(100) := NULL;
Qtd_Arq_Criptografado  NUMBER;

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := 1;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(05) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa          NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


/*----------------Header Arquivo---------------------------------*/
HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
HR_Digito          CHAR(01) := 'X';                     -- DV
HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
HR_Modalidade       VARCHAR2(02) := '00';
HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(7) := ' ';

/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '  ';
HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '043';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
HL_Digito            CHAR(01) := 'X';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';
------------------------------------------------------------------------
vprocesso             CHAR(100) := ' ';

CURSOR c1 IS
    SELECT  distinct
            ff.cod_ide_cli,
            SUM(TRUNC(ff.val_liquido,2)) val_liquido,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
            SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
            ib.num_conta,
            SUBSTR(NVL(ib.num_dv_conta,'0'),1,1) num_dv_conta,
            DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
            SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30) nom_pessoa_fisica,
            pf.num_cpf,
            gp.cod_seq_convenio,
            IB.COD_IDE_CLI_TERCEIRO
    FROM    user_ipesp.TB_FOLHA_SFAM          FF,
            TB_INFORMACAO_BANCARIA IB,
            TB_BANCO               BC,
            TB_PESSOA_FISICA       PF,
            TB_GRUPO_PAGAMENTO     GP
    WHERE   ff.cod_ins               = c_cod_ins
      AND   ff.per_processo          = TO_DATE(I_PERPROCESSO,'DD/MM/YYYY')
      AND   ff.tip_processo          = I_TIPPROCESSO
      AND   ff.val_liquido           > 0
      AND   ib.cod_ins               = ff.cod_ins
      AND   ib.cod_ide_cli           = ff.cod_ide_cli
      AND   TO_NUMBER(ib.cod_banco)  = nvl(I_BANCO,ib.cod_banco)
      AND   FF.COD_INS               = PF.COD_INS
      AND   FF.COD_IDE_CLI           = PF.COD_IDE_CLI
      AND   BC.COD_INS               = IB.COD_INS
      AND   BC.COD_BANCO             = IB.COD_BANCO
      AND   GP.NUM_GRP_PAG           = NVL(v_grp_pagto, GP.NUM_GRP_PAG )  -- DEVE SER SEMPRE 1
    GROUP BY   ff.cod_ide_cli,
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3),
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5),
              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1),
              ib.num_conta,
              SUBSTR(NVL(ib.num_dv_conta,'0'),1,1),
              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)),
              SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30),
              pf.num_cpf,
              gp.cod_seq_convenio,
              IB.COD_IDE_CLI_TERCEIRO;

c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    --
    aConvGrp.delete;
    i_cont := 0;

    FOR X1 IN (         SELECT   DISTINCT CP.DAT_PAG_EFETIVA,
                                 DECODE( v_grp_pagto, NULL, 99, CP.NUM_GRP ) num_grp,
                                 GP.COD_SEQ_CONVENIO,
                                 TB.COD_TIPO_BENEFICIO,
                                 TB.NOM_TIPO_BENEFICIO
                        FROM   TB_CRONOGRAMA_PAG   CP,
                               TB_GRUPO_PAGAMENTO  GP,
                               TB_TIPOS_BENEFICIOS TB
                        WHERE   CP.NUM_GRP            = NVL(v_grp_pagto,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
                        AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                        AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                        AND     CP.PER_PROCESSO       = I_PERPROCESSO
                        AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                        AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                        ORDER BY 1,2,3                                                 ) LOOP


         i_cont := i_cont + 1;

         aConvGrp(i_cont).dat_efetiva    := x1.dat_pag_efetiva;
         aConvGrp(i_cont).grp_pago       := x1.num_grp;
         aConvGrp(i_cont).seq_convenio   := x1.cod_seq_convenio;
         aConvGrp(i_cont).tipo_beneficio := x1.cod_tipo_beneficio;
         aConvGrp(i_cont).nome_beneficio := x1.nom_tipo_beneficio;


    END LOOP;

    IF aConvGrp.count = 0 THEN
       c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
       RAISE e_ERROR;
    END IF;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo           => I_PERPROCESSO,
                                        p_cod_tip_processo       => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,   MRS
                                        p_cod_tipo_beneficio     =>  NULL,             -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro               => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo              => null,
                                        p_cod_categoria          => null,
                                        p_cod_pccs               => null,
                                        p_cod_entidade           => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,  MRS
                                        p_cod_tipo_beneficio    => NULL,              -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD( HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------
    FOR f IN aConvGrp.first..aConvGrp.last LOOP

        vDetalhe.delete;

        FOR REG IN C1  LOOP

            IF REG.COD_SEQ_CONVENIO = aConvGrp(f).seq_convenio THEN

                -- Inicializacao das tables e controle de exceptions
                BEGIN

                     IF REG.COD_BANCO = '001' THEN
                        if (REG.COD_TIPO_CONTA  in('1','01','51')) then
                            i_conv  := 3;
                            i_pagto := vDetalhe(i_conv).count+1;      --3 conta poupança
                            vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA ;
                        else
                            i_conv  := 1;
                            i_pagto := vDetalhe(i_conv).count+1;      --1 CC
                            vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := '00';
                        end if;
                     ELSE
                        i_conv  := 2;
                        i_pagto := vDetalhe(i_conv).count+1;      --2 DOC/TED
                        vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
                     END IF;


                EXCEPTION
                WHEN NO_DATA_FOUND THEN
                   i_pagto := 1;

                END;

                -- Atrinbuicao dos valores a table
                vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
                vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
                vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
                vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
                vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
                vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;

                DR_CpfBen := NULL;
                DR_NomeBen := NULL;

                -- validação dos dados de terceiro
                IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                      SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                        INTO DR_CpfBen, DR_NomeBen
                        FROM USER_IPESP.TB_PESSOA_FISICA PF
                       WHERE PF.COD_INS = 1
                         AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
                ELSE
                   DR_CpfBen := REG.NUM_CPF;
                   DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
                END IF;

                vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;             -- CAMPO UTILIZADO PARA O CPF
                vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
                vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
                vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := REG.cod_ide_cli_terceiro;

                -------------------------------------------------------------------

            END IF;

        END LOOP;

        IF vDetalhe.count = 0 THEN
           c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
           RAISE e_ERROR;
        END IF;

        FOR j IN vDetalhe.first..vDetalhe.last
        LOOP

            BEGIN

              IF vDetalhe(j).count > 0 THEN

                  <<GET_CONVENIO>>
                  BEGIN

                    c_num_nsa           := 0;

                    -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                    SELECT   DISTINCT
                             RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                             LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                             LPAD(NVL(CB.COD_CONV,0),9,0),
                             TRIM(CB.DES_CONVENIO)
                    INTO   HR_NomBanco,
                           c_num_nsa,
                           HR_CodConvenio,
                           c_desc_conv
                    FROM   TB_CONVENIO_BANCO CB,
                           TB_BANCO          TB,
                           TB_ENVIO_BANCO    EB
                    WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                    AND   CB.COD_BANCO        = TB.COD_BANCO
                    AND   EB.COD_BANCO        = CB.COD_BANCO
                    AND   EB.COD_CONV         = CB.COD_CONV
                    AND   EB.PER_PROCESSO     = I_PERPROCESSO
                    AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)             -- EB.COD_ENTIDADE)
                    AND   EB.NUM_GRP          = aConvGrp(f).grp_pago                -- DECODE( aConvGrp(f).grp_pago, 99, EB.NUM_GRP, aConvGrp(f).grp_pago )
                    AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                    AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                    AND   CB.NUM_SEQ          = aConvGrp(f).seq_convenio            -- c_seq_conv MRS
                    AND   CB.TIPO_PAGTO       = j;

                  EXCEPTION
                  WHEN NO_DATA_FOUND THEN

                       SELECT RPAD(SUBSTR(BC.DES_BANCO,1,30),30,' '), LPAD(NVL(CB.COD_CONV,0),9,0), CB.NUM_NSA, TRIM(CB.DES_CONVENIO)
                       INTO   HR_NomBanco, HR_CodConvenio, c_num_nsa, c_desc_conv
                       FROM TB_CONVENIO_BANCO CB,
                            TB_BANCO          BC
                       WHERE CB.COD_BANCO  = NVL(I_BANCO,001)
                       AND   CB.COD_INS    = c_cod_ins
                       AND   CB.NUM_SEQ    = aConvGrp(f).seq_convenio                    -- c_seq_conv
                       AND   CB.TIPO_PAGTO = j
                       AND   CB.COD_BANCO  = BC.COD_BANCO;

                       FOR K1 IN (  SELECT   GP.NUM_GRP_PAG
                                    FROM   TB_CRONOGRAMA_PAG   CP,
                                           TB_GRUPO_PAGAMENTO  GP,
                                           TB_TIPOS_BENEFICIOS TB
                                    WHERE   CP.NUM_GRP            = DECODE( aConvGrp(f).grp_pago, 99, CP.NUM_GRP, aConvGrp(f).grp_pago )
                                    AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                                    AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                                    AND     CP.PER_PROCESSO       = I_PERPROCESSO
                                    AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                                    AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                                    AND     GP.COD_SEQ_CONVENIO   = aConvGrp(f).seq_convenio
                                    ORDER BY 1                                                         ) LOOP


                             BEGIN

                               -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                               INSERT INTO TB_ENVIO_BANCO EB
                               (
                                 COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                                 SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                                 NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                                 NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                                 COD_CONV
                               )
                               VALUES
                               (
                                 c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                                 I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                                 0                        , SYSDATE                  , SYSDATE                ,
                                 USER                     , 'GERA_ARQ_CNAB'          , K1.NUM_GRP_PAG         ,
                                 HR_CodConvenio
                               );

                               COMMIT;

                             EXCEPTION
                             WHEN OTHERS THEN
                               c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                               lOraErr     := TRUE;
                               RAISE e_ERROR;

                             END;

                       END LOOP;

                  WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END GET_CONVENIO;

                  --DALVES 06/07/2016 -- TASK31674
                  --Alteração do campo Tipo de Serviço
                  IF  c_desc_conv = 'CONTA CORRENTE' THEN
                     HL_Lancamento  := '01';
                     HL_TipoServico := '30'; --Pagamento Salários
                  ELSIF c_desc_conv = 'DOC' THEN
                     HL_Lancamento  := '03'; -- DOC
                     HL_TipoServico := '98'; -- Pagamento Diversos
                  ELSE
                     HL_Lancamento  := '05'; -- POUPANCA
                     HL_TipoServico := '98';
                  END IF;

              ELSE

                  GOTO END_LOOP;

              END IF;

            EXCEPTION
            WHEN NO_DATA_FOUND THEN
               GOTO END_LOOP;

            END;

            BEGIN

              c_cont_tot    := 0;
              c_cont_seq    := 0;
              c_count_seg_a := 0;
              v_Seq         := 0;
              vQtdeArq      := 0;
              c_total_geral := 0;
              HR_Sequencial := nvl(c_num_nsa,0);
              lFim          := FALSE;

              IF vDetalhe(j).count > 0 THEN

                  FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                      c_count_seg_a := c_count_seg_a + 1;
                      c_cont_seq := c_cont_seq + 1;
                      c_cont_tot := c_cont_tot + 1;

                      <<PRINT_FILE>>
                      BEGIN

                          IF k = 1                             OR
                             mod( c_cont_seq, vLimQuebra ) = 0 THEN

                              IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                                  IF c_cont_tot >= vDetalhe(j).last THEN
                                    lFim := TRUE;
                                  ELSE
                                    lFim := FALSE;
                                  END IF;

                                  TL_LoteServico     := LPAD(v_lote,4,0);
                                  TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                  TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                  TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || chr(13)   );

                                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                  TR_QtdContas     := LPAD(1,6,0);

                                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                        TR_QtdContas   || TR_Brancos2       || chr(13));

                                  UTL_FILE.FCLOSE( f_OutputCredito );

                              END IF;

                              c_cont_seq           := 1;
                              v_Seq                := NVL(v_Seq,0) + 1;
                              v_lote               := 1;
                              c_total_liquido      := 0;
                              vQtdeArq             := NVL(vQtdeArq,0) + 1;
                              HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                              c_OutputFileCredito_Crip := null;
                              c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                              c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( aConvGrp(f).grp_pago, '0' ), 2, '0' );


                              IF c_definitivo = 'S' THEN
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                              ELSE
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                              END IF;

                              IF I_NOM_ARQUIVO IS NULL THEN
                                 I_NOM_ARQUIVO := c_OutputFileCredito;
                              ELSE
                                 I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                              END IF;

                              BEGIN

                                IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                   f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                                END IF;

                              EXCEPTION
                                WHEN UTL_FILE.INVALID_PATH THEN
                                     c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_MODE THEN
                                     c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_OPERATION THEN
                                     c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              -- Header de Arquivo
                              UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                    HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                    HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                    HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                    HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                    HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                    HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                    HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                    HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                    HR_Brancos5         || chr(13));
                              -- Header de Lote
                              UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                                 HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                                 HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                                 HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                                 HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                 HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                                 HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                                 HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                                 HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                                 HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   || chr(13)       );

                          END IF;

                          DR_LoteServico       := LPAD(v_lote, 4, 0);
                          DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                          DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                          DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                          DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                          DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                          select sq_envio_banco.nextval into DR_NumeroDoc from dual;

                          DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');
                          DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                          DR_DataLancamento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                          DR_Zeros1             := Null;
                          DR_Modalidade         := Null;

                          IF DR_CodBancoFav = '001' THEN
                            /*---Calculo do DV da Agencia-------------------------------------------*/
                              SP_CALCULA_DV_BB( 1,
                                             LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                             Null,
                                             vDvAg );
                            /*----------------------------------------------------------------------*/
                             DR_Digito             := vDvAg;--NVL(TO_NUMBER(vDvAg),0);
                             DR_CamaraCentra       := '000';
                             DR_ContaCorrenteFav   := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                             if (LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') in ('01','51')) then
                                 vTipo                 := 3; -- conta poupanca
                             else
                                 vTipo                 := 1; -- cc
                             end if;

                          ELSE

                             DR_CamaraCentra       := '018';
                             DR_Digito             := ' ';            --NVL(vDetalhe(j)(k).num_dv_agencia,' ');

                             IF (DR_CodBancoFav = '033') THEN
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                             elsif (DR_CodBancoFav = '104') then
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')|| substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                             ELSE
                                DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                             END IF;

                             vTipo                 := 2;

                          END IF;
                          --
                          vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                    DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                    DR_CodInstrucao      ||   DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                    DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                    DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                    DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                    DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                    DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                    DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                    DR_Brancos1          ||   DR_AvisoFavorecido  ||  DR_CodOcorrencia;
                          --

                          -- Imprime Detalhe
                          UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                              DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                              DR_CodInstrucao      ||   DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                              DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                              DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                              DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                              DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                              DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                              DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                              DR_Brancos1          ||   DR_AvisoFavorecido  ||  DR_CodOcorrencia    || chr(13));

                          -- Incrementa a tb_envio_arq_bancario
                          INSERT INTO TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                  cod_identificador,         flg_terceiro,                 cod_ide_cli_terceiro
                          )
                          VALUES
                          (
                                 1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                          aConvGrp(f).dat_efetiva,    DR_NomeFavorecido,
                                       ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                      null,
                                 CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                        vLinha,               c_definitivo,           DR_CodBancoFav,
                              DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                    DR_DVConta,              DR_Modalidade,            I_PERPROCESSO,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                 DR_NumeroDoc,
                                 case when vDetalhe(j)(k).cod_ide_cli_ben is not null then 'S' else 'N' end,
                                 vDetalhe(j)(k).cod_ide_cli_ben
                          );


                          c_cont_seq := c_cont_seq + 1;
                          DRB_LoteServico       := LPAD(v_lote,4,0);                                             -- Lote de Servico
                          DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                          DRB_DataVencimento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );                  -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                          DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');                                       -- sequencial do registro no lote
                          DRB_NumInscricao      := LPAD(trim(vDetalhe(j)(k).cod_ide_serv),14,0);

                          --IF DR_CodBancoFav != '001' THEN
                             -- SEGEMENTO B
                             UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico        ||  DRB_RegistroDet      ||
                                                                 DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                                 DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                                                 DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                                 DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                                                 DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                                                 DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                                                 DRB_CodigoFavorecido  || DRB_Brancos2          || chr(13));

                             vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                       DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                       DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                       DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                       DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                       DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                       DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                       DRB_CodigoFavorecido  || DRB_Brancos2;

                             --Incrementa a tb_envio_arq_bancario
                              INSERT INTO TB_ENVIO_ARQ_BANCARIO
                              (
                                           COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                              LOTE,                   CONVENIO,                 SEGMENTO,
                                           NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                        DT_GERACAO,                   DT_PAGTO,                     NOME,
                                             VALOR,                    NUM_CPF,                  ARQUIVO,
                                             LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                       COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                          DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                      TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                      cod_identificador,         flg_terceiro,                 cod_ide_cli_terceiro
                              )
                              VALUES
                              (
                                     1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                   DRB_LoteServico,             HR_CodConvenio,     DRB_CodSegRegDetalhe,
                                     HR_Sequencial,                      vTipo,      DRB_SeqRegistroLote,
                                           to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                                c_data_efetiva,                     NULL,
                                                                             0,
                                                                          null,
                                  CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                            vLinha,               c_definitivo,           DR_CodBancoFav,
                                  DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                        DR_DVConta,              DR_Modalidade,            I_PERPROCESSO,
                                     I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                     DR_NumeroDoc,
                                     case when vDetalhe(j)(k).cod_ide_cli_ben is not null then 'S' else 'N' end,
                                     vDetalhe(j)(k).cod_ide_cli_ben
                              );


                          --END IF;

                      EXCEPTION
                      WHEN OTHERS THEN
                           IF c_ERROR_MSG IS NULL THEN
                              c_ERROR_MSG := SQLERRM;
                           END IF;
                           I_MSG_ERRO  := c_ERROR_MSG;
                           lOraErr     := TRUE;
                           RAISE e_ERROR;

                      END PRINT_FILE;

                      UTL_FILE.FFLUSH(f_OutputCredito);

                      vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                      c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                      c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                      vcontador := vcontador + 1;
                      vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                      IF c_definitivo = 'S' THEN

                            UPDATE   tb_folha_sfam ff
                            SET   ff.cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  ff.num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  ff.num_dv_agencia   = vDvAg,
                                  ff.num_conta       = vDetalhe(j)(k).num_conta,
                                  ff.num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  ff.cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   ff.cod_ins        = c_cod_ins
                            AND     ff.tip_processo   = c_tipo_processo
                            AND     ff.per_processo   = I_PERPROCESSO
                            AND     ff.cod_ide_cli    = vDetalhe(j)(k).cod_ide_cli;

                      END IF;

                  END LOOP;

                  IF not lFim THEN

                    TL_LoteServico     := LPAD(v_lote,4,0);
                    TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                    TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                    TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                    UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                        TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                        TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || chr(13)   );

                    TR_QTDRegLote    := LPAD(v_lote,6,'0');
                    TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                    TR_QtdContas     := LPAD(1,6,0);

                    UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                          TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                          TR_QtdContas  || TR_Brancos2       || chr(13));
                    UTL_FILE.FCLOSE( f_OutputCredito );
                  END IF;

                  /*------------------------------------------
                    Atualiza os controles de envio para banco
                  ------------------------------------------*/
                  IF c_definitivo = 'S' THEN

                    BEGIN

                          c_num_nsa := vQtdeArq + c_num_nsa;

                          UPDATE   TB_ENVIO_BANCO
                          SET   VAL_LIQUIDO      = c_total_geral,
                                DAT_ENVIO        = SYSDATE,
                                DAT_ULT_ATU      = SYSDATE,
                                NOM_USU_ULT_ATU  = USER,
                                NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                                NUM_NSA          = c_num_nsa
                          WHERE  COD_INS           = c_cod_ins
                          AND    PER_PROCESSO      = I_PERPROCESSO
                          AND    COD_TIP_PROCESSO  = I_TIPPROCESSO
                          AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                          AND    COD_ENTIDADE      = NVL(I_COD_ENTIDADE,999)
                          AND    COD_BANCO         = NVL(I_BANCO,001)
                          AND    NUM_GRP           = DECODE( aConvGrp(f).grp_pago, 99, NUM_GRP, aConvGrp(f).grp_pago )
                          AND    COD_CONV          = TRUNC( HR_CodConvenio );

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                          UPDATE TB_CONVENIO_BANCO C
                          SET NUM_NSA   = c_num_nsa
                          WHERE COD_INS   = c_cod_ins
                          AND   COD_BANCO = NVL(I_BANCO,001)
                          AND   COD_CONV  = TRUNC( HR_CodConvenio );

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                    EXCEPTION
                      WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;
                    END;

                    COMMIT;

                  END IF;

              END IF;

            EXCEPTION
            WHEN OTHERS THEN
              GOTO END_LOOP;

            END;

            <<GERA_RESUMO>>
            BEGIN

              IF (c_definitivo = 'S') THEN

                  SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                            I_TIPPROCESSO,
                                            I_SEQ_PAGAMENTO,
                                            LPAD( NVL( aConvGrp(f).grp_pago, '00' ), 2, '0' ),
                                            aConvGrp(f).dat_efetiva,
                                            c_OutputFileCredito,
                                            c_OutputFileCredito_Crip,
                                            HR_DataGeracao,
                                            HR_HoraGeracao,
                                            c_total_liquido,
                                            c_count_seg_a,
                                            'N');

                  c_OutputFileCredito := c_OutputFileCredito_CRIP||'_'||c_OutputFileCredito;
                  SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

                  -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                  USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(aConvGrp(f).dat_efetiva,'YYYYMMDD'), aConvGrp(f).dat_efetiva, 'S','A');
                  --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(aConvGrp(f).dat_efetiva,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO,I_PERPROCESSO,I_SEQ_PAGAMENTO,aConvGrp(f).dat_efetiva, I_GRP_PAGTO);



              END IF;

            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;

            END;

            COMMIT;

            <<END_LOOP>>
            IF lOraErr THEN
               I_NOM_ARQUIVO := NULL;
               RAISE e_ERROR;
            END IF;

        END LOOP;

    END LOOP;

    UTL_FILE.FCLOSE_ALL;

  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => c_des_nom_benef,
                                        p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => c_des_nom_benef,
                                          p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                          p_cod_banco              => NVL(I_BANCO,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_CNAB_SALFAM;


  ---------------------------------------------------------------------------------------------------------------------------
  PROCEDURE GERA_ARQ_CNAB_CREDITO     (  I_COD_INS           IN TB_FOLHA_EXTERNO.COD_INS%TYPE,
                                         I_DEFINITIVO        IN VARCHAR2,
                                         I_NOM_ARQUIVO       OUT VARCHAR2,
                                         I_MSG_ERRO          OUT VARCHAR2                ) IS

  /*------------------Grupos de Pagamento------------------------*/
  c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

  type TConvenio is record
  (
     dat_efetiva          date,
     grp_pago             number,
     seq_convenio         number(2),
     tipo_beneficio       varchar2(6),
     nome_beneficio       varchar2(60)
  );

  type TConvIdx   is table of TConvenio
                  index by binary_integer;

  type TypeDetLst is table of Tb_Folha%rowtype
                  index by binary_integer;

  type TypeDetIdx is table of TypeDetLst
                  index by binary_integer;

  type TypeConvenio is table of varchar2(10)
                    index by binary_integer;

  vConvenio             TypeConvenio;
  vDetalhe              TypeDetIdx;

  aConvGrp              TConvIdx;

  i_conv                NUMBER    := 0;
  i_pagto               NUMBER    := 0;
  v_lote                NUMBER    := 0;
  v_seq                 NUMBER    := 0;
  vcontador             NUMBER    := 0;
  vQtdeMoedaDetalhe     NUMBER    := 0;
  vQtdeArq              NUMBER    := 0;
  vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
  lFim                  BOOLEAN:=FALSE;
  lOraErr               BOOLEAN:=FALSE;
  vLinha                VARCHAR2(240);
  vTipo                 NUMBER:=0;
  i_cont                number:=0;
  /*--------------Variaveis Auxiliares para calculo de DV--------*/
  vDvAg    char(1):=null;

  /*--------------Variaveis Para Geracao de Arquivo--------------*/
  f_OutputCredito            UTL_FILE.FILE_TYPE;
  c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
  c_OutputFileCredito        VARCHAR2(100) := NULL;

  c_desc_conv       VARCHAR2(20);
  c_grupo_pagamento NUMBER:=0;
  c_data_efetiva    DATE := NULL;
  c_tipo_processo   CHAR(1) := NULL;
  c_cod_ins         NUMBER := I_COD_INS;
  c_cont_credito    NUMBER(6)  := 0;
  c_cont_cadastro   NUMBER(6)  := 0;
  c_total_liquido   NUMBER(18,2) := 0;
  c_total_geral     NUMBER(18,2) := 0;
  cs_cod_banco      CHAR(03) := '   ';
  c_cont_seq        NUMBER(05) := 0;
  c_erro_log        CHAR(02) := '00';
  c_num_nsa         NUMBER(8) := 0;
  c_cont_tot        NUMBER(8) := 0;
  c_definitivo      VARCHAR2(01);
  c_seq_conv        NUMBER(02):=0;
  c_count_seg_a     NUMBER(8):=0;

  c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
  c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


  /*----------------Header Arquivo---------------------------------*/
  HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
  HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
  HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
  HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
  HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
  HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
  HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
  HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
  HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
  HR_Digito          CHAR(01) := 'X';                     -- DV
  HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
  HR_Modalidade      VARCHAR2(02) := '00';
  HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
  HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
  HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
  HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
  HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
  HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
  HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
  HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
  HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
  HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
  HR_NRLayout        CHAR(03) := '082';                   -- Fixo
  HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
  HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
  HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
  HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
  HR_Brancos6        VARCHAR2(7) := ' ';

  /*----------------Header Lote------------------------------------*/
  HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
  HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
  HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
  HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
  HL_TipoServico       CHAR(02) := '30';
  HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
  HL_VersaoLote        CHAR(03) := '043';
  HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
  HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
  HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
  HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
  HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
  HL_Brancos2          VARCHAR2(11) := ' ';       -- Reservado 2
  HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
  HL_Digito            CHAR(01) := 'X';          -- DV
  HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
  HL_Modalidade        VARCHAR2(02) := '00';      -- Modalidade
  HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
  HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
  HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
  HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
  HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
  HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
  HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
  HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
  HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
  HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
  HL_UF                CHAR(02) := 'SP';            -- UF
  HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
  HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
  HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

  /*----------------Detalhe Registro 3 Segmento A--------------------*/
  DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
  DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
  DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
  DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

  DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
  DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
  DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
  DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

  -- Campos utilizados somente quando pagto for credido em conta corrente
  DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
  DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
  ------------------------------------------------------------------------

  DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
  DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
  DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
  DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
  DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
  DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
  DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
  DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
  DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
  DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
  DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
  DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
  DR_IDENTIFICADOR     VARCHAR2(20) := ' ';
  DR_OutrasInf         CHAR(20) := ' ';            -- Outras Informacoes
  DR_Brancos1          CHAR(12) := ' ';
  DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
  DR_CodOcorrencia     CHAR(10) := ' ';

  /*----------------Detalhe Registro 3 Segmento B---------------------------*/
  DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
  DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
  DRB_Brancos1          VARCHAR2(03) := ' ';
  DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
  DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
  DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
  DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
  DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
  DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
  DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
  DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
  DRB_UF                VARCHAR2(02) := 'SP';      -- UF
  DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
  DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
  DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
  DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
  DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
  DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
  DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
  DRB_Brancos2          VARCHAR2(15) := ' ';

  /*----------------Trailler Lote--------------------------------------------*/
  TL_CodBanco           CHAR(03) := '000';
  TL_LoteServico        CHAR(04) := '0001';
  TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
  TL_Brancos1           CHAR(09) := ' ';
  TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
  TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_Brancos2           CHAR(171) := ' ';
  TL_CodOcorrencia      CHAR(10) := ' ';

  /*----------------Trailler do Arquivo--------------------------------------*/
  TR_CodBanco           CHAR(03) := '000';
  TR_LoteServico        CHAR(04) := '9999';
  TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
  TR_Brancos1           CHAR(09) := ' ';
  TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
  TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
  TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
  TR_Brancos2           CHAR(205) := ' ';
  ------------------------------------------------------------------------
  vprocesso             CHAR(100) := ' ';


  -- VARIAVEIS USADAS COMO PARAMETROS E QUE N?O S?O MAIS NECESSARIAS
  I_GRP_PAGTO           VARCHAR2(2) := '99'; -- GRUPO PARA PAGAMENTOS EXTERNOS DEFINIDO NA TB_GRUPO_PAGAMENTO
  I_TIPPROCESSO         CHAR(1) := 'N';
  I_SEQ_PAGAMENTO       NUMBER(8) := 1;
  I_COD_ENTIDADE        NUMBER(8) := NULL;
  I_BANCO               NUMBER(8) := NULL;
  VN_SEQ_CONVENIO       NUMBER;
  VS_DAT_PAGTO          VARCHAR2(10) := NULL;
  VS_PER_PROCESSO       VARCHAR2(10) := NULL;
  c_convenio            number;

  CURSOR c1 IS
      SELECT  ff.cod_beneficio,
              ff.cod_ide_cli,
              SUM(TRUNC(ff.val_liquido,2)) val_liquido,
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.cod_banco)),3,'0'),1,3) cod_banco,
              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.num_agencia)),5,'0'),1,5) num_agencia,
              SUBSTR(NVL(ff.num_dv_agencia,'0'),1,1) num_dv_agencia,
              ff.num_conta,
              SUBSTR(NVL(ff.num_dv_conta,'0'),1,1) num_dv_conta,
              DECODE(ASCII(ff.COD_TIPO_CONTA),0,'00',DECODE(ff.COD_TIPO_CONTA,NULL,'00',ff.COD_TIPO_CONTA)) cod_tipo_conta,
              SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30) nom_pessoa_fisica,
              pf.num_cpf,
              gp.cod_seq_convenio,
              FF.DAT_PAGAMENTO,
              ff.cod_grp_pagto,
              FF.PER_PROCESSO
        FROM  user_ipesp.TB_FOLHA_EXTERNO       FF,
              TB_CONCESSAO_BENEFICIO CB,
              TB_PESSOA_FISICA       PF,
              TB_GRUPO_PAGAMENTO     GP
      WHERE   ff.cod_ins               = I_COD_INS
        AND   ff.val_liquido           > 0
        AND   FF.FLG_STATUS            = 3 -- PROCESSO DISPONIVEL PARA ENVIO BANCARIO
        AND   cb.cod_ins               = ff.cod_ins
        AND   cb.cod_beneficio         = ff.cod_beneficio
        AND   pf.cod_ins               = ff.cod_ins
        AND   pf.cod_ide_cli           = ff.cod_ide_cli
        AND   GP.NUM_GRP_PAG           = FF.COD_GRP_PAGTO
        AND   GP.COD_PROC_GRP_PAGO     = FF.COD_GRP_PAGTO
        AND   GP.COD_SEQ_CONVENIO      IS NOT NULL
        and   TRIM( nvl( ff.num_agencia,'0' ) ) != '00000'
        and   TRIM( nvl( ff.num_conta  ,'0' ) ) != '0000000'
      /*GROUP BY   ff.cod_ide_cli,
                SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.cod_banco)),3,'0'),1,3),
                SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.num_agencia)),5,'0'),1,5),
                SUBSTR(NVL(ff.num_dv_agencia,'0'),1,1),
                ff.num_conta,
                SUBSTR(NVL(ff.num_dv_conta,'0'),1,1),
                DECODE(ASCII(ff.COD_TIPO_CONTA),0,'00',DECODE(ff.COD_TIPO_CONTA,NULL,'00',ff.COD_TIPO_CONTA)),
                SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30),
                pf.num_cpf,
                gp.cod_seq_convenio,
                FF.DAT_PAGAMENTO,
                ff.cod_grp_pagto,
                FF.PER_PROCESSO*/
      ORDER BY FF.COD_GRP_PAGTO, SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.cod_banco)),3,'0'),1,3);



  c_ERROR_MSG       VARCHAR2(500);
  e_ERROR           EXCEPTION;
  vsqlstr           VARCHAR2(500);

  BEGIN

    vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
    EXECUTE IMMEDIATE vsqlstr;

    IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
       c_definitivo := 'S';
       c_OutputLocation  := 'ARQS_BANCARIOS';
    ELSE
       c_definitivo := 'N';
       c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
    END IF;

    BEGIN
      c_tipo_processo      := I_TIPPROCESSO;
      cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

      vprocesso := 'Inicio...';

      /*MRS-Header do Arquivo - Banco 001*/
      HR_CodBanco      := cs_cod_banco;
      HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
      HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
      HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
      HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
      HR_Zeros         := LPAD(HR_Zeros,4,0);
      HR_Modalidade    := LPAD(HR_Modalidade,2,0);
      HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
      HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
      HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
      HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
      HR_Brancos4      := HR_Brancos3;
      HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
      HR_Brancos6      := LPAD(HR_Brancos6,8,' ');


      /*MRS-Header de Lote */
      HL_CodBanco       := cs_cod_banco;
      HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
      HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
      HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
      HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
      HL_Zeros          := LPAD(HL_Zeros,4,0);
      HL_Modalidade     := RPAD(HL_Modalidade,2,0);
      HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
      HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
      HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
      HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
      HL_Complemento    := RPAD(HL_Complemento,15,' ');
      HL_Cidade         := RPAD(HL_Cidade,20,' ');
      HL_Cep            := LPAD(HL_Cep,8,0);
      HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
      HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
      HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

      DR_CodBanco          := cs_cod_banco;
      DR_RegistroDet       := '3';
      DR_CodSegRegDetalhe  := 'A';
      DR_CodInstrucao      := '00';
      DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
      DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
      DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
      DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
      DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
      DR_IDENTIFICADOR     := ' ';
      DR_OutrasInf         := ' ';                                   -- Outras Informacoes
      DR_Brancos1          := ' ';
      DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
      DR_CodOcorrencia     := ' ';

      DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
      DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
      DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
      DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
      DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
      DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
      DRB_Numero            := '00000';                              -- Numero
      DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
      DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
      DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
      DRB_CEP               := '00000   ';                           -- Cep
      DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
      DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
      DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
      DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
      DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
      DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

      TL_CodBanco        := HR_CodBanco;
      TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
      TL_Brancos1        := ' ';
      TL_Brancos2       := ' ';
      TL_CodOcorrencia  := ' ';

      TR_CodBanco      := HR_CodBanco;
      TR_LoteServico   := '9999';
      TR_RegistroDet   := '9';
      TR_Brancos1      := ' ';
      TR_Brancos2      := ' ';

      c_cont_credito      := 0;
      c_cont_cadastro     := 0;
      c_total_liquido     := 0;
      c_num_nsa           := 0;
      vprocesso := 'Preparando leitura de registros...';

      -------------------------------------------------------------------
      vDetalhe.delete;

      FOR REG IN C1  LOOP
          -- Inicializacao das tables e controle de exceptions
          BEGIN
               IF REG.COD_BANCO = '001' THEN
                  i_conv  := 1;
                  i_pagto := vDetalhe(i_conv).count+1;      --1 CC
                  vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := '00';
               ELSE
                  i_conv  := 2;
                  i_pagto := vDetalhe(i_conv).count+1;      --2 DOC/TED
                  vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
               END IF;
          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             i_pagto := 1;
          END;

          -- Atrinbuicao dos valores a tabelas
          vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.COD_BENEFICIO;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
          vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
          vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
          vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
          vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
          vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
          vDetalhe(i_conv)(i_pagto).cod_ide_ben      := REG.NUM_CPF;
          vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
          vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
          --vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
          vDetalhe(i_conv)(i_pagto).num_grp          := REG.cod_grp_pagto;
          vDetalhe(i_conv)(i_pagto).num_seq_benef    := REG.cod_seq_convenio; -- armazena a sequencia do convenio
          vDetalhe(i_conv)(i_pagto).per_processo     := REG.PER_PROCESSO;
          vDetalhe(i_conv)(i_pagto).DAT_PROCESSO     := REG.DAT_PAGAMENTO; -- ARMAZEZA A DATA DE PAGAMENTO
          -------------------------------------------------------------------
      END LOOP;

      IF vDetalhe.count = 0 THEN
         c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
         RAISE e_ERROR;
      END IF;

          FOR j IN vDetalhe.first..vDetalhe.last
          LOOP
              -- INICIO DA LEITURA PARA IMPRESS?O.
              BEGIN
                c_cont_tot    := 0;
                c_cont_seq    := 0;
                c_count_seg_a := 0;
                v_Seq         := 0;
                vQtdeArq      := 0;
                c_total_geral := 0;
                HR_Sequencial := nvl(c_num_nsa,0);
                lFim          := FALSE;
                c_convenio    := null;

                IF vDetalhe(j).count > 0 THEN
                    FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                        --------*******USADO PARA OBETER O CODIDO DO CONVENIO E O NUMERO DO NSA----------
                        BEGIN
                             BEGIN
                                c_num_nsa   := 0;
                                VN_SEQ_CONVENIO := vDetalhe(j)(K).num_seq_benef;
                                VS_DAT_PAGTO := vDetalhe(j)(K).DAT_PROCESSO;
                                VS_PER_PROCESSO := vDetalhe(j)(K).PER_PROCESSO;

                                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                                SELECT DISTINCT
                                       RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                                       LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                                       LPAD(NVL(CB.COD_CONV,0),6,0),
                                       TRIM(CB.DES_CONVENIO)
                                INTO   HR_NomBanco,
                                       c_num_nsa,
                                       HR_CodConvenio,
                                       c_desc_conv
                                FROM   TB_CONVENIO_BANCO CB,
                                       TB_BANCO          TB
                                WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                                AND   CB.COD_BANCO        = TB.COD_BANCO
                                AND   CB.NUM_SEQ          = VN_SEQ_CONVENIO           -- c_seq_conv MRS
                                AND   CB.TIPO_PAGTO       = j;

                              EXCEPTION
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                                 HL_Lancamento  := '01';
                              ELSE
                                 HL_Lancamento  := '03';
                              END IF;

                        EXCEPTION
                        WHEN NO_DATA_FOUND THEN
                           GOTO END_LOOP;

                        END;
                        ----------------------------************************-------------------------

                        c_count_seg_a := c_count_seg_a + 1;
                        c_cont_seq := c_cont_seq + 1;
                        c_cont_tot := c_cont_tot + 1;

                        <<PRINT_FILE>>
                        BEGIN
                            IF k = 1 OR mod( c_cont_seq, vLimQuebra ) = 0 or c_convenio != HR_CodConvenio THEN
                                c_convenio := HR_CodConvenio;
                                IF mod( c_cont_seq, vLimQuebra ) = 0 OR (UTL_FILE.IS_OPEN( f_OutputCredito )) THEN -- Executa qdo ha quebra de arquivo

                                    TL_LoteServico     := LPAD(v_lote,4,0);
                                    TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                    TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                    TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                    UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                        TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                        TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                                    TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                    TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                    TR_QtdContas     := LPAD(1,6,0);

                                    UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                          TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                          TR_QtdContas   || TR_Brancos2);

                                    UTL_FILE.FCLOSE( f_OutputCredito );
                                    COMMIT;

                                END IF;

                                c_cont_seq           := 1;
                                v_Seq                := NVL(v_Seq,0) + 1;
                                v_lote               := 1;
                                c_total_liquido      := 0;
                                vQtdeArq             := NVL(vQtdeArq,0) + 1;
                                HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                                c_OutputFileCredito  := 'cnab240' || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD(vDetalhe(J)(k).num_grp , 2, '0' );

                                if (j = 1) then
                                   c_OutputFileCredito  := c_OutputFileCredito || '_CRED_EXT';
                                elsif (j = 2) then
                                   c_OutputFileCredito  := c_OutputFileCredito || '_DOC_EXT';
                                end if;

                                IF c_definitivo = 'S' THEN
                                  c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                                ELSE
                                  c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt.conf';
                                END IF;

                                IF I_NOM_ARQUIVO IS NULL THEN
                                   I_NOM_ARQUIVO := c_OutputFileCredito;
                                ELSE
                                   I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                                END IF;

                                BEGIN

                                IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                   f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                                END IF;

                                EXCEPTION
                                  WHEN UTL_FILE.INVALID_PATH THEN
                                       c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                       lOraErr     := TRUE;
                                       RAISE e_ERROR;
                                  WHEN UTL_FILE.INVALID_MODE THEN
                                       c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                       lOraErr     := TRUE;
                                       RAISE e_ERROR;
                                  WHEN UTL_FILE.INVALID_OPERATION THEN
                                       c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                       lOraErr     := TRUE;
                                       RAISE e_ERROR;
                                  WHEN OTHERS THEN
                                       c_ERROR_MSG := SQLERRM;
                                       lOraErr     := TRUE;
                                       RAISE e_ERROR;
                                END;

                                -- Header de Arquivo
                                UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                      HR_Brancos1          ||  HR_TipoInscricao     ||  HR_CGCEmpresa      ||
                                                                      HR_CodConvenio      ||  HR_SiglaSistema       ||    HR_Brancos6     ||
                                                                      HR_AgenciaManConta  ||  HR_Digito             ||    HR_Zeros        ||
                                                                      HR_Modalidade        ||  HR_ContaCorrente     ||  HR_DVConta        ||
                                                                      HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                      HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                      HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                      HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                      HR_Brancos5   );
                                -- Header de Lote
                                UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                                   HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                                   HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                                   HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                                   HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                   HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                                   HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                                   HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                                   HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                                   HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia          );

                            END IF;

                            DR_LoteServico       := LPAD(v_lote, 4, 0);
                            DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                            DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                            DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                            DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                            DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                            select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                            DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                            /*IF (DR_NumeroDoc = '9999999') THEN
                              EXECUTE IMMEDIATE 'DROP SEQUENCE USER_IPESP.SQ_ENVIO_BANCO';
                              EXECUTE IMMEDIATE 'create sequence USER_IPESP.sq_envio_banco_01 minvalue 1 maxvalue 9999999999999 start with 1 increment by 1';
                              select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                            END IF;
                            DR_NumeroDoc := RPAD(vDetalhe(j)(k).cod_ide_cli,13,' ')||lpad(DR_NumeroDoc,7,'0');
                            */

                            DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                            DR_DataLancamento    := replace(VS_DAT_PAGTO, '/' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');


                            IF DR_CodBancoFav = '001' THEN
                              /*---Calculo do DV da Agencia-------------------------------------------*/
                                SP_CALCULA_DV_BB( 1,
                                               LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                               Null,
                                               vDvAg );
                              /*----------------------------------------------------------------------*/
                               DR_Digito             := vDvAg;--NVL(TO_NUMBER(vDvAg),0);
                               DR_CamaraCentra       := '000';
                               /*DR_Zeros1             := LPAD(NVL(DR_Zeros1,0),4,0);
                               DR_Modalidade         := LPAD(NVL(vDetalhe(j)(k).cod_tipo_conta,0),2,'0');
                               DR_ContaCorrenteFav   := LPAD(SUBSTR(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,0);*/
                               DR_Zeros1             := Null;
                               DR_Modalidade         := Null;
                               DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                               vTipo                 := 1;

                            ELSE

                               DR_CamaraCentra       := '018';
                               DR_Digito             := ' ';            --NVL(vDetalhe(j)(k).num_dv_agencia,' ');
                               DR_Zeros1             := Null;
                               DR_Modalidade         := Null;

                               IF (DR_CodBancoFav = '033') THEN
                                  DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                                  --DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')||LPAD(TRUNC(vDetalhe(j)(k).num_conta), 6,0),12,0);
                               ELSIF (DR_CodBancoFav = '104') THEN
                                  DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')||LPAD(TRUNC(vDetalhe(j)(k).num_conta), 8,0),12,0);
                               ELSE
                                  DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                               END IF;

                               c_cont_seq := c_cont_seq + 1;

                               DRB_LoteServico       := LPAD(v_lote,4,0);                                             -- Lote de Servico
                               DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                               DRB_DataVencimento    := replace(VS_DAT_PAGTO, '/' );                  -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                               DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');                                       -- sequencial do registro no lote
                               DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);
                               vTipo                 := 2;

                            END IF;

                            select seq_folha_externo.nextval INTO DR_IDENTIFICADOR from dual;
                            --DR_IDENTIFICADOR := lpad((vQtdeArq+c_num_nsa),6,'0')||lpad(DR_IDENTIFICADOR,14,'0');
                            DR_IDENTIFICADOR := DR_NumeroDoc;
                            --
                            vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                      DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                      DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                      DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                      DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                      DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                      DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                      DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                      DR_DataReal          ||  DR_ValorReal         ||  DR_IDENTIFICADOR    ||
                                      DR_OutrasInf         ||  DR_Brancos1          ||  DR_AvisoFavorecido  ||
                                      DR_CodOcorrencia;
                            --

                            -- Imprime Detalhe
                            UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                                DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav       ||
                                                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                                DR_DataReal          ||  DR_ValorReal         ||  DR_IDENTIFICADOR    ||
                                                                DR_OutrasInf         ||  DR_Brancos1          ||  DR_AvisoFavorecido  ||
                                                                DR_CodOcorrencia);

                            -- Incrementa a tb_envio_arq_bancario
                            INSERT INTO TB_ENVIO_ARQ_BANCARIO
                            (
                                         COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                            LOTE,                   CONVENIO,                 SEGMENTO,
                                         NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                      DT_GERACAO,                   DT_PAGTO,                     NOME,
                                           VALOR,                    NUM_CPF,                  ARQUIVO,
                                           LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                     COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                        DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                    TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                          FLG_PA,                    TIP_MOV,         COD_IDENTIFICADOR,
                                   COD_BENEFICIO
                            )
                            VALUES
                            (
                                  I_COD_INS, vDetalhe(j)(k).cod_ide_cli, '3',
                                  DR_LoteServico, HR_CodConvenio, DR_CodSegRegDetalhe,
                                  HR_Sequencial, vTipo, DR_SeqRegistroLote,
                                  to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                  TO_DATE(VS_DAT_PAGTO,'DD/MM/YYYY'),    DR_NomeFavorecido,
                                  ROUND(vDetalhe(j)(k).val_liquido,2),
                                  null, c_OutputFileCredito,
                                  vLinha, c_definitivo, DR_CodBancoFav,
                                  DR_CodAgenciaFav, DR_Digito, vDetalhe(j)(k).num_conta,
                                  DR_DVConta, DR_Modalidade, TO_DATE(VS_PER_PROCESSO,'DD/MM/YYYY'),
                                  I_TIPPROCESSO, I_SEQ_PAGAMENTO, LPAD( vDetalhe(j)(K).NUM_GRP, 2, '0' ),
                                  'N', '0', DR_IDENTIFICADOR, vDetalhe(j)(k).cod_BENEFICIO
                            );

                            IF DR_CodBancoFav != '001' THEN
                               -- DOC/TED
                               UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          ||  DRB_LoteServico       ||  DRB_RegistroDet     ||
                                                                   DRB_SeqRegistroLote   ||  DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                                   DRB_TipoInscricao     ||  DRB_NumInscricao      ||  DRB_Endereco        ||
                                                                   DRB_Numero            ||  DRB_Complemento       ||  DRB_Bairro          ||
                                                                   DRB_NomeCidade        ||  DRB_CEP               ||  DRB_UF              ||
                                                                   DRB_DataVencimento    ||  DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                                                   DRB_ValorDesconto     ||  DRB_ValorMora         ||  DRB_ValorMulta      ||
                                                                   DRB_CodigoFavorecido  ||  DRB_Brancos2  );

                               vLinha := DRB_CodBanco          ||  DRB_LoteServico        ||  DRB_RegistroDet     ||
                                         DRB_SeqRegistroLote   ||  DRB_CodSegRegDetalhe   ||  DRB_Brancos1        ||
                                         DRB_TipoInscricao     ||  DRB_NumInscricao       ||  DRB_Endereco        ||
                                         DRB_Numero            ||  DRB_Complemento        ||  DRB_Bairro          ||
                                         DRB_NomeCidade        ||  DRB_CEP                ||  DRB_UF              ||
                                         DRB_DataVencimento    ||  DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                         DRB_ValorDesconto     ||  DRB_ValorMora          ||  DRB_ValorMulta      ||
                                         DRB_CodigoFavorecido  ||  DRB_Brancos2;

                               --Incrementa a tb_envio_arq_bancario
                                INSERT INTO TB_ENVIO_ARQ_BANCARIO
                                (
                                             COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                                LOTE,                   CONVENIO,                 SEGMENTO,
                                             NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                          DT_GERACAO,                   DT_PAGTO,                     NOME,
                                               VALOR,                    NUM_CPF,                  ARQUIVO,
                                               LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                         COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                            DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                        TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                              FLG_PA,                    TIP_MOV,         COD_IDENTIFICADOR,
                                       COD_BENEFICIO
                                )
                                VALUES
                                (
                                     I_COD_INS, vDetalhe(j)(k).cod_ide_cli, '3',
                                     DRB_LoteServico, HR_CodConvenio, DRB_CodSegRegDetalhe,
                                     HR_Sequencial, vTipo, DRB_SeqRegistroLote,
                                     to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                     c_data_efetiva, NULL,  0,  null, c_OutputFileCredito,
                                     vLinha, c_definitivo, DR_CodBancoFav,
                                     DR_CodAgenciaFav, DR_Digito, vDetalhe(j)(k).num_conta,
                                     DR_DVConta, DR_Modalidade, TO_DATE(VS_PER_PROCESSO,'DD/MM/YYYY'),
                                     I_TIPPROCESSO, I_SEQ_PAGAMENTO, LPAD( c_grupo_pagamento, 2, '0' ),
                                     'N', '0', DR_IDENTIFICADOR, vDetalhe(j)(k).cod_BENEFICIO
                                );
                            END IF;

                        EXCEPTION
                            WHEN OTHERS THEN
                               IF c_ERROR_MSG IS NULL THEN
                                  c_ERROR_MSG := SQLERRM;
                               END IF;
                               I_MSG_ERRO  := c_ERROR_MSG;
                               lOraErr     := TRUE;
                               RAISE e_ERROR;
                        END PRINT_FILE;

                        UTL_FILE.FFLUSH(f_OutputCredito);

                        vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                        c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                        c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                        vcontador := vcontador + 1;
                        vprocesso := 'Atualizando registro ' || vcontador || ' na tb_folha_Externo.';

                        IF c_definitivo = 'S' THEN
                              -- Esta parte do codigo devera ser mantida ate q haja uma definicao qto ao tratamento - MRS 01/10/2009
                              begin
                                UPDATE Tb_Folha_Externo ff
                                SET   ff.cod_banco        = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                      ff.num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                      ff.num_dv_agencia   = vDvAg,
                                      ff.num_conta        = vDetalhe(j)(k).num_conta,
                                      ff.num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                      ff.cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta,
                                      FF.FLG_STATUS       = 4 -- VALOR PAGO
                                WHERE ff.cod_ins          = c_cod_ins
                                AND   ff.per_processo     = TO_DATE(VS_PER_PROCESSO,'DD/MM/YYYY')
                                AND   FF.FLG_STATUS = 3
                                AND   ff.cod_ide_cli    = vDetalhe(j)(k).cod_ide_cli
                                AND   FF.COD_BENEFICIO  = vDetalhe(j)(k).cod_BENEFICIO;
                              exception
                              when others then
                                   dbms_output.put_line(vDetalhe(j)(k).cod_ide_cli);
                                   c_ERROR_MSG := sqlerrm;
                              end;
                              COMMIT;
                        END IF;
                    END LOOP;


                    TL_LoteServico    := LPAD(v_lote,4,0);
                    TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                    TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                    TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                    UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                        TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                        TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia    );

                    TR_QTDRegLote    := LPAD(v_lote,6,'0');
                    TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                    TR_QtdContas     := LPAD(1,6,0);

                    UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                          TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                          TR_QtdContas  || TR_Brancos2);
                    UTL_FILE.FCLOSE( f_OutputCredito );
                    COMMIT;

                    /*------------------------------------------
                      Atualiza os controles de envio para banco
                    ------------------------------------------*/
                    IF c_definitivo = 'S' THEN
                      BEGIN
                           c_num_nsa := vQtdeArq + c_num_nsa;

                            UPDATE TB_CONVENIO_BANCO C
                            SET   NUM_NSA   = c_num_nsa
                            WHERE COD_INS   = c_cod_ins
                            AND   COD_BANCO = NVL(I_BANCO, 001)
                            AND   COD_CONV  = TRUNC( HR_CodConvenio );

                            IF sql%rowcount = 0 THEN
                               ROLLBACK;
                               c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                               lOraErr := TRUE;
                            END IF;

                      EXCEPTION
                        WHEN OTHERS THEN
                         c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO_EXTERNO) : ' || SQLERRM;
                         lOraErr     := TRUE;
                         RAISE e_ERROR;
                      END;

                      COMMIT;

                    END IF;

                END IF;

              EXCEPTION
              WHEN OTHERS THEN
                GOTO END_LOOP;

              END;

              <<END_LOOP>>
              IF lOraErr THEN
                 ROLLBACK;
                 I_NOM_ARQUIVO := NULL;
                 RAISE e_ERROR;
              END IF;

          END LOOP;
      UTL_FILE.FCLOSE_ALL;

    EXCEPTION
        WHEN e_ERROR THEN
             DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
             I_MSG_ERRO  := c_ERROR_MSG;
             DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
             UTL_FILE.FCLOSE_ALL;
             RAISE e_ERROR;

        WHEN OTHERS THEN
             c_error_msg := SQLERRM;
             DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
             I_MSG_ERRO  := c_ERROR_MSG;
             UTL_FILE.FCLOSE_ALL;
             DBMS_OUTPUT.PUT_LINE(vprocesso);
             RAISE e_ERROR;
    END;

    EXCEPTION
      WHEN OTHERS THEN
           NULL;

  END GERA_ARQ_CNAB_CREDITO;


  PROCEDURE GERA_ARQ_CNAB_A  ( I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                ) IS

    /*------------------Grupos de Pagamento------------------------*/
    c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

    type TConvenio is record
    (
       dat_efetiva          date,
       grp_pago             number,
       seq_convenio         number(2),
       tipo_beneficio       varchar2(6),
       nome_beneficio       varchar2(60)
    );

    type TConvIdx   is table of TConvenio
                    index by binary_integer;

    type TypeDetLst is table of tb_folha%rowtype
                    index by binary_integer;

    type TypeDetIdx is table of TypeDetLst
                    index by binary_integer;

    type TypeConvenio is table of varchar2(10)
                      index by binary_integer;

    vConvenio             TypeConvenio;
    vDetalhe              TypeDetIdx;

    aConvGrp              TConvIdx;

    i_conv                NUMBER    := 0;
    i_pagto               NUMBER    := 0;
    i_pagto_cc            NUMBER    := 0;
    i_pagto_dc            NUMBER    := 0;
    i_pagto_PP            NUMBER    := 0;
    v_lote                NUMBER    := 0;
    v_seq                 NUMBER    := 0;
    vcontador             NUMBER    := 0;
    vQtdeMoedaDetalhe     NUMBER    := 0;
    vQtdeArq              NUMBER    := 0;
    vLimQuebra            NUMBER(8) := 300000;    -- Define a limite de quebra de arquivo para um mesmo convenio
    lFim                  BOOLEAN:=FALSE;
    lOraErr               BOOLEAN:=FALSE;
    vLinha                VARCHAR2(240);
    vTipo                 NUMBER:=0;
    i_cont                number:=0;
    v_dat_pgto            date;
    /*--------------Variaveis Auxiliares para calculo de DV--------*/
    vDvAg    char(1):=null;
    vDvConta char(1):=null;
    /*--------------Variaveis Para Geracao de Arquivo--------------*/
    f_OutputCredito            UTL_FILE.FILE_TYPE;
    c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
    c_OutputFileCredito        VARCHAR2(100) := NULL;

    f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
    c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

    c_OutputFileCredito_Crip VARCHAR2(100);

    c_desc_conv       VARCHAR2(20);
    c_grupo_pagamento NUMBER:=0;
    c_data_efetiva    DATE := NULL;
    c_tipo_processo   CHAR(1) := NULL;
    c_cod_ins         NUMBER := 1;
    c_cont_credito    NUMBER(6)  := 0;
    c_cont_cadastro   NUMBER(6)  := 0;
    c_total_liquido   NUMBER(18,2) := 0;
    c_total_geral     NUMBER(18,2) := 0;
    cs_cod_banco      CHAR(03) := '   ';
    c_cont_seq        NUMBER(06) := 0;
    c_erro_log        CHAR(02) := '00';
    c_num_nsa         NUMBER(8) := 0;
    c_cont_tot        NUMBER(8) := 0;
    c_definitivo      VARCHAR2(01);
    c_seq_conv        NUMBER(02):=0;
    c_count_seg_a     NUMBER(8):=0;

    c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
    c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


    /*----------------Header Arquivo---------------------------------*/
    HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
    HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
    HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
    HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco

    HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
    HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
    HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
    HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
    HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
    HR_Digito          CHAR(01) := 'X';                     -- DV
    HR_Zeros           VARCHAR2(04) := '0';                 -- Reservado
    HR_Modalidade      VARCHAR2(02) := '00';                -- Conta Corrente
    HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';
    HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
    HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
    HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
    HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
    HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban

    HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
    HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
    HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
    HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
    HR_NRLayout        CHAR(03) := '082';                   -- Fixo
    HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
    HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
    HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
    HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
    HR_Brancos6        VARCHAR2(7) := ' ';

    /*----------------Header Lote------------------------------------*/
    HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
    HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
    HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
    HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
    HL_TipoServico       CHAR(02) := '  ';
    HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
    HL_VersaoLote        CHAR(03) := '043';
    HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
    HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
    HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
    HL_CodConvenio       VARCHAR2(05) := ' ';      -- Codigo Convenio
    HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
    HL_Digito            CHAR(01) := 'X';          -- DV
    HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
    HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
    HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
    HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
    HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
    HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
    HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
    HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
    HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
    HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
    HL_UF                CHAR(02) := 'SP';            -- UF
    HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
    HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa

    HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
    HL_Modalidade        VARCHAR2(02) := '00';      -- Modalidade
    HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
    HL_Brancos2          VARCHAR2(11) := ' ';       -- Reservado 2
    HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2
    /*----------------Detalhe Registro 3 Segmento A--------------------*/
    DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
    DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
    DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
    DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
    DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
    DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
    DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

    DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
    DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
    DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
    DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

    -- Campos utilizados somente quando pagto for credido em conta corrente
    DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
    DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
    ------------------------------------------------------------------------

    DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
    DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
    DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
    DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
    DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
    DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
    DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
    DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
    DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
    DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
    DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
    DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
    DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
    DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
    DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
    DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
    DR_Brancos1          CHAR(12) := ' ';
    DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     CHAR(10) := ' ';

    /*----------------Detalhe Registro 3 Segmento B---------------------------*/
    DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
    DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
    DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
    DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
    DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          VARCHAR2(03) := ' ';
    DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
    DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
    DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
    DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
    DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
    DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
    DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
    DRB_UF                VARCHAR2(02) := 'SP';      -- UF
    DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
    DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
    DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
    DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
    DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
    DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
    DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
    DRB_Brancos2          VARCHAR2(15) := ' ';

    /*----------------Trailler Lote--------------------------------------------*/
    TL_CodBanco           CHAR(03) := '000';
    TL_LoteServico        CHAR(04) := '0001';
    TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
    TL_Brancos1           CHAR(09) := ' ';
    TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
    TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
    TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
    TL_Brancos2           CHAR(171):= ' ';
    TL_CodOcorrencia      CHAR(10) := ' ';

    /*----------------Trailler do Arquivo--------------------------------------*/
    TR_CodBanco           CHAR(03) := '000';
    TR_LoteServico        CHAR(04) := '9999';
    TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
    TR_Brancos1           CHAR(09) := ' ';
    TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
    TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
    TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
    TR_Brancos2           CHAR(205):= ' ';
    ------------------------------------------------------------------------
    vprocesso             CHAR(100) := ' ';
    cont  number;
    cont1 number;

    vCodBancoFav varchar2(10);
    vCodAgenciaFav varchar2(10);
    vDvAgencia varchar2(10);
    vContaCorrenteFav varchar2(10);
    vDVContaFav varchar2(10);
    vTipoConta varchar2(10);

    CURSOR c1 IS
        SELECT  ff.cod_beneficio,
                ff.cod_ide_cli,
                trunc(ff.val_liquido,2) val_liquido,
                SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30) nom_pessoa_fisica,
                pf.num_cpf,
                gp.cod_seq_convenio,
                cb.cod_tipo_beneficio,
                bn.num_grupo as cod_proc_grp_pag
        FROM    USER_IPESP.TB_REL_FOLHA_AUX          bn,
                user_ipesp.TB_FOLHA                  FF,
                user_ipesp.TB_CONCESSAO_BENEFICIO    CB,
                user_ipesp.TB_PESSOA_FISICA          PF,
                user_ipesp.TB_GRUPO_PAGAMENTO        GP
        WHERE   bn.cod_ins               = c_cod_ins
          AND   BN.TIP_PROCESSO          = I_TIPPROCESSO
          AND   BN.SEQ_PAGAMENTO         = I_SEQ_PAGAMENTO
          AND   BN.PER_PROCESSO          = I_PERPROCESSO
          AND   BN.DAT_PGTO              = v_dat_pgto
          and   ff.cod_ins               = bn.cod_ins
          AND   ff.per_processo          = BN.PER_PROCESSO
          AND   ff.tip_processo          = BN.TIP_PROCESSO
          AND   ff.seq_pagamento         = BN.SEQ_PAGAMENTO
          AND   FF.cod_beneficio         = BN.cod_beneficio
          and   FF.cod_ide_cli           = BN.cod_ide_cli
          AND   ff.val_liquido           > 0
          AND   cb.cod_ins               = ff.cod_ins
          AND   cb.cod_beneficio         = ff.cod_beneficio
          AND   CB.COD_ENTIDADE          = nvl(I_COD_ENTIDADE,CB.COD_ENTIDADE)
          AND   pf.cod_ins               = ff.cod_ins
          AND   pf.cod_ide_cli           = ff.cod_ide_cli
          AND   GP.NUM_GRP_PAG           = NVL(I_GRP_PAGTO, GP.NUM_GRP_PAG )
          AND   GP.COD_PROC_GRP_PAGO     = BN.Num_Grupo
          AND   GP.COD_SEQ_CONVENIO      IS NOT NULL;



    c_ERROR_MSG       VARCHAR2(500);
    e_ERROR           EXCEPTION;
    vsqlstr           VARCHAR2(500);


    BEGIN

      vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
      EXECUTE IMMEDIATE vsqlstr;

      IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
         c_definitivo := 'S';
         c_OutputLocation  := 'ARQS_BANCARIOS';
      ELSE
         c_definitivo := 'N';
         --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
         c_OutputLocation  := 'ARQS_BANCARIOS';
      END IF;

      BEGIN


        c_tipo_processo      := I_TIPPROCESSO;
        cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');
        --
        aConvGrp.delete;
        i_cont := 0;

        FOR X1 IN (       SELECT   DISTINCT CP.DAT_PAG_EFETIVA,
                                   DECODE( I_GRP_PAGTO, NULL, 99, CP.NUM_GRP ) num_grp,
                                   GP.COD_SEQ_CONVENIO,
                                   TB.COD_TIPO_BENEFICIO,
                                   TB.NOM_TIPO_BENEFICIO
                            FROM   USER_IPESP.TB_CRONOGRAMA_PAG   CP,
                                   USER_IPESP.TB_GRUPO_PAGAMENTO  GP,
                                   USER_IPESP.TB_TIPOS_BENEFICIOS TB
                            WHERE   CP.NUM_GRP            = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
                            AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                            AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                            AND     CP.PER_PROCESSO       = I_PERPROCESSO
                            AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                            AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                            ORDER BY 1,2,3                                                 ) LOOP


             i_cont := i_cont + 1;

             aConvGrp(i_cont).dat_efetiva    := x1.dat_pag_efetiva;
             aConvGrp(i_cont).grp_pago       := x1.num_grp;
             aConvGrp(i_cont).seq_convenio   := x1.cod_seq_convenio;
             aConvGrp(i_cont).tipo_beneficio := x1.cod_tipo_beneficio;
             aConvGrp(i_cont).nome_beneficio := x1.nom_tipo_beneficio;

        END LOOP;

        IF aConvGrp.count = 0 THEN
           c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
           RAISE e_ERROR;
        END IF;

        /*-------------------------
          Abre o registro do log de processamento - Situacao 'A' - Agendado
         -------------------------*/
        PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                            p_cod_ins                => 1,
                                            p_per_processo           => I_PERPROCESSO,
                                            p_cod_tip_processo       => I_TIPPROCESSO,
                                            p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                            p_des_tipos_benef        => NULL,             -- c_des_nom_benef,   MRS
                                            p_cod_tipo_beneficio     =>  NULL,             -- c_cod_tipo_benef, MRS
                                            p_cod_banco              => NVL(I_BANCO,001),
                                            p_num_tip_emissao        => NULL,
                                            p_cod_ide_cli            => NULL,
                                            p_dat_agenda_proc        => SYSDATE,
                                            p_flg_processamento      => 'A' ,             -- Agendado
                                            p_msg_erro               => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                            p_cod_cargo              => null,
                                            p_cod_categoria          => null,
                                            p_cod_pccs               => null,
                                            p_cod_entidade           => I_COD_ENTIDADE,
                                            p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


        IF TO_NUMBER(c_erro_log) <> 0 THEN
          RAISE e_ERROR;
        END IF;

        vprocesso := 'Inicio...';

        /*-------------------------
          Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
          -------------------------*/

        PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                            p_cod_ins                => 1,
                                            p_per_processo          => I_PERPROCESSO,
                                            p_cod_tip_processo      => I_TIPPROCESSO,
                                            p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                            p_des_tipos_benef        => NULL,             -- c_des_nom_benef,  MRS
                                            p_cod_tipo_beneficio    => NULL,              -- c_cod_tipo_benef, MRS
                                            p_cod_banco              => NVL(I_BANCO,001),
                                            p_num_tip_emissao        => NULL,
                                            p_cod_ide_cli            => NULL,
                                            p_dat_agenda_proc        => SYSDATE,
                                            p_flg_processamento      => 'P' ,             -- Agendado
                                            p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                            p_cod_cargo             => null,
                                            p_cod_categoria         => null,
                                            p_cod_pccs              => null,
                                            p_cod_entidade          => I_COD_ENTIDADE,
                                            p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


        IF TO_NUMBER(c_erro_log) <> 0 THEN
          RAISE e_ERROR;
        END IF;

        /*Header do Arquivo - Banco 001 */
        HR_CodBanco      := cs_cod_banco;
        HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
        HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
        HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
        HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
        HR_Zeros         := LPAD(HR_Zeros,4,0);
        HR_Modalidade    := LPAD(HR_Modalidade,2,0);
        HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
        HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
        HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
        HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
        HR_Brancos4      := HR_Brancos3;
        HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
        HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

        /*Header de Lote */

        HL_CodBanco       := cs_cod_banco;
        HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
        HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
        HL_Brancos2       := RPAD(HL_Brancos2,11,' ');
        HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
        HL_Zeros          := LPAD(HL_Zeros,4,0);
        HL_Modalidade     := RPAD(HL_Modalidade,2,0);
        HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
        HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
        HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
        HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
        HL_Complemento    := RPAD(HL_Complemento,15,' ');
        HL_Cidade         := RPAD(HL_Cidade,20,' ');
        HL_Cep            := LPAD(HL_Cep,8,0);
        HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
        HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
        HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

        DR_CodBanco          := cs_cod_banco;
        DR_RegistroDet       := '3';
        DR_CodSegRegDetalhe  := 'A';
        DR_CodInstrucao      := '00';
        DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
        DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
        DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
        DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
        DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
        DR_OutrasInf         := ' ';                                   -- Outras Informacoes
        DR_Brancos1          := ' ';
        DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
        DR_CodOcorrencia     := ' ';

        DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
        DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
        DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
        DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
        DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
        DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
        DRB_Numero            := '00000';                              -- Numero
        DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
        DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
        DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
        DRB_CEP               := '00000   ';                           -- Cep
        DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
        DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
        DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
        DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
        DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
        DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

        TL_CodBanco        := HR_CodBanco;
        TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
        TL_Brancos1        := ' ';
        TL_Brancos2        := ' ';
        TL_CodOcorrencia   := ' ';

        TR_CodBanco      := HR_CodBanco;
        TR_LoteServico   := '9999';
        TR_RegistroDet   := '9';
        TR_Brancos1      := ' ';
        TR_Brancos2      := ' ';

        c_cont_credito      := 0;
        c_cont_cadastro     := 0;
        c_total_liquido     := 0;
        c_num_nsa           := 0;
        vprocesso := 'Preparando leitura de registros...';

        cont := 0;
        cont1:= 0;

        -------------------------------------------------------------------
        FOR f IN aConvGrp.first..aConvGrp.last LOOP

            c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
            c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || '000000000' || '_' || LPAD(v_Seq,2,0);
            c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || LPAD( NVL( aConvGrp(f).grp_pago, '0' ), 2, '0' );
            c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';
            -- implantacao nova
            v_dat_pgto := null;
            v_dat_pgto := aConvGrp(f).dat_efetiva;


            DELETE FROM USER_IPESP.TB_DETALHE_ENVIO_ARQ_BANCARIO E
             WHERE E.COD_INS = 1
               AND E.TIP_PROCESSO = I_TIPPROCESSO
               AND E.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
               AND E.PER_PROCESSO = I_PERPROCESSO
               AND E.NUM_GRUPO = I_GRP_PAGTO
               AND E.DAT_PAGAMENTO = v_dat_pgto
               AND E.FLG_DEFINITIVO = I_DEFINITIVO;
            COMMIT;


            IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w', 32767 );
            END IF;


            FOR REG IN C1  LOOP

                IF REG.COD_SEQ_CONVENIO = aConvGrp(f).seq_convenio THEN

                      vCodBancoFav := NULL;
                      vCodAgenciaFav := NULL;
                      vDvAgencia := NULL;
                      vContaCorrenteFav := NULL;
                      vDVContaFav := NULL;
                      vTipoConta := NULL;
                      DR_COD_IDE_CLI_TERC := NULL;

                      cont := cont+1;

                      BEGIN
                        --BUSCA OS DADOS BANCARIOS DO BENEFICIARIO COM BENEFICIO VINCULADO
                        SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                ib.num_conta,
                                Upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                ib.cod_ide_cli_terceiro
                           INTO vCodBancoFav, vCodAgenciaFav, vDvAgencia, vContaCorrenteFav, vDVContaFav, vTipoConta,
                                DR_COD_IDE_CLI_TERC
                           FROM TB_INFO_BANC_BENEFICIO I, user_Ipesp.TB_INFORMACAO_BANCARIA IB
                          WHERE I.COD_INS = IB.COD_INS
                            AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                            AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                            AND I.COD_BENEFICIO = REG.Cod_Beneficio
                            AND I.COD_IDE_CLI = REG.COD_IDE_CLI;
                      EXCEPTION
                         WHEN NO_DATA_FOUND THEN
                              BEGIN
                                 -- BUSCA OS DADOS BANCARIOS DO IDE_CLI QUE NÃO ESTA ASSOCIADO A NENHUM BENEFICIO
                                 SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                            SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                            ib.num_conta,
                                            Upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                            DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                            ib.cod_ide_cli_terceiro
                                       INTO vCodBancoFav, vCodAgenciaFav, vDvAgencia, vContaCorrenteFav, vDVContaFav, vTipoConta,
                                            DR_COD_IDE_CLI_TERC
                                       FROM TB_INFORMACAO_BANCARIA IB
                                      WHERE IB.COD_IDE_CLI = REG.COD_IDE_CLI
                                        AND NOT EXISTS
                                        (
                                            SELECT 1 FROM USER_IPESP.TB_INFO_BANC_BENEFICIO X
                                             WHERE X.COD_INS = 1
                                               AND X.COD_IDE_CLI = IB.COD_IDE_CLI
                                               AND X.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                                        );
                              EXCEPTION
                                 WHEN NO_DATA_FOUND THEN
                                      BEGIN
                                          -- BUSCA TODOS OS OUTROS BENEFICIOS ASSOCIADOS AO MESMO TIPO DE BENEFICIO E QUE NÃO SEJA O PROPRIO
                                          SELECT *
                                            INTO vCodBancoFav, vCodAgenciaFav, vDvAgencia, vContaCorrenteFav, vDVContaFav, vTipoConta, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       Upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       ib.cod_ide_cli_terceiro
                                                  FROM USER_IPESP.TB_BENEFICIARIO BE, TB_INFORMACAO_BANCARIA IB, TB_INFO_BANC_BENEFICIO I
                                                 WHERE BE.COD_INS = 1
                                                   AND BE.COD_IDE_CLI_BEN = REG.COD_IDE_CLI
                                                   AND BE.COD_BENEFICIO != REG.COD_BENEFICIO
                                                   AND BE.FLG_STATUS IN ('A','X')
                                                   AND (BE.DAT_FIM_BEN IS NULL OR BE.DAT_FIM_BEN >= TO_DATE(I_PERPROCESSO,'DD/MM/YYYY'))
                                                   AND I.COD_INS = IB.COD_INS
                                                   AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                                                   AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                                                   AND I.COD_BENEFICIO = BE.COD_BENEFICIO
                                                   AND I.COD_IDE_CLI = BE.COD_IDE_CLI_BEN
                                                   AND TRIM(IB.COD_TIPO_CONTA) NOT IN ('25','26','27','28')
                                                   AND EXISTS
                                                   (
                                                       SELECT 1 FROM USER_IPESP.TB_CONCESSAO_BENEFICIO CB
                                                        WHERE CB.COD_INS = BE.COD_INS
                                                          AND CB.COD_BENEFICIO = BE.COD_BENEFICIO
                                                          AND CB.COD_TIPO_BENEFICIO = REG.COD_TIPO_BENEFICIO
                                                   )
                                                   ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;

                                       EXCEPTION
                                           WHEN NO_DATA_FOUND THEN
                                               BEGIN
                                                   -- BUSCA QUALQUER LANÇAMENTO DE CONTA BANCARIA PARA AQUELE IDE_CLI
                                                   SELECT *
                                                     INTO vCodBancoFav, vCodAgenciaFav, vDvAgencia, vContaCorrenteFav, vDVContaFav, vTipoConta, DR_COD_IDE_CLI_TERC
                                                     FROM
                                                     (
                                                         SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                                SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                                SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                                ib.num_conta,
                                                                Upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                                DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                                ib.cod_ide_cli_terceiro
                                                           FROM TB_INFORMACAO_BANCARIA IB
                                                          WHERE IB.COD_IDE_CLI = REG.COD_IDE_CLI
                                                            AND TRIM(IB.COD_TIPO_CONTA) NOT IN ('25','26','27','28')
                                                          ORDER BY IB.COD_BANCO
                                                     ) WHERE ROWNUM = 1;
                                                EXCEPTION
                                                      WHEN NO_DATA_FOUND THEN
                                                          UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio);
                                                      WHEN others then
                                                          UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'CONTA BANCARIA DUPLICADA: Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio ||' - '||sqlerrm);
                                                END;

                                             WHEN others then
                                                UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio ||' - '||sqlerrm);
                                       END;
                                   WHEN others then
                                      UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio ||' - '||sqlerrm);
                               END;
                          WHEN others then
                             UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'Cod_Beneficio: '||reg.cod_beneficio ||' - '|| 'Cod_ide_cli: '||reg.cod_ide_cli||' - '||sqlerrm);
                      END;

                      if (vCodAgenciaFav = 0 or vCodBancoFav = 0) then
                         UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio);
                      end if;


                      BEGIN

                         IF vCodBancoFav = 1 THEN
                            BEGIN
                                if vTipoConta in (1,51) then
                                    i_conv  := 3; -- CONTA POUPANCA
                                    i_pagto_PP := i_pagto_PP + 1;
                                else
                                    i_conv  := 1; -- CC
                                    i_pagto_cc := i_pagto_cc + 1;
                                end if;
                            EXCEPTION
                               WHEN OTHERS THEN
                                    UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'TIPO DE CONTA INVALIDA: Cod_Beneficio: '||reg.cod_beneficio ||' - Cod_ide_cli: '||reg.cod_ide_cli || ' - Grupo: '|| reg.cod_proc_grp_pag || ' - Tipo_Beneficio: '||reg.cod_tipo_beneficio);
                                    i_conv  := 1;
                                    i_pagto_cc := i_pagto_cc + 1;
                            END;
                         ELSE
                            i_conv  := 2; -- DOC/TED
                            i_pagto_Dc := i_pagto_Dc + 1;
                         END IF;
                         i_pagto := i_pagto + 1;
                      EXCEPTION
                      WHEN NO_DATA_FOUND THEN
                         i_pagto := 1;
                      END;

                      DR_CpfBen := NULL;
                      DR_NomeBen := NULL;

                      -- validação dos dados de terceiro
                      IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                            SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                              INTO DR_CpfBen, DR_NomeBen
                              FROM USER_IPESP.TB_PESSOA_FISICA PF
                             WHERE PF.COD_INS = 1
                               AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
                      ELSE
                         DR_CpfBen := REG.NUM_CPF;
                         DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
                      END IF;

                      INSERT INTO USER_IPESP.TB_DETALHE_ENVIO_ARQ_BANCARIO
                      (
                            COD_INS,
                            TIP_PROCESSO,
                            SEQ_PAGAMENTO,
                            PER_PROCESSO,
                            COD_BENEFICIO,
                            COD_IDE_CLI,
                            DAT_PAGAMENTO,
                            NUM_GRUPO,
                            NUM_CPF,
                            NOM_PESSOA_FISICA,
                            VAL_LIQUIDO,
                            COD_BANCO,
                            NUM_AGENCIA,
                            NUM_DV_AGENCIA,
                            NUM_CONTA,
                            NUM_DV_CONTA,
                            COD_TIPO_CONTA,
                            TIP_PAGTO,
                            NUM_SEQ,
                            FLG_DEFINITIVO,
                            FLG_TERCEIRO,
                            COD_IDE_CLI_TERCEIRO
                      ) VALUES
                      (
                            1,
                            I_TIPPROCESSO,
                            I_SEQ_PAGAMENTO,
                            I_PERPROCESSO,
                            REG.Cod_Beneficio,
                            REG.COD_IDE_CLI,
                            v_dat_pgto,
                            I_GRP_PAGTO,
                            DR_CpfBen,
                            DR_NomeBen,
                            REG.VAL_LIQUIDO,
                            vCodBancoFav,
                            vCodAgenciaFav,
                            vDvAgencia,
                            vContaCorrenteFav,
                            vDVContaFav,
                            CASE WHEN i_conv = 1 THEN '00' ELSE vTipoConta END,
                            i_conv,
                            CASE WHEN i_conv = 1 THEN i_pagto_cc
                                 WHEN i_conv = 2 THEN i_pagto_DC
                                 WHEN i_conv = 3 THEN i_pagto_PP
                            ELSE i_pagto END,
                            I_DEFINITIVO,
                            CASE WHEN TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL THEN 'S' ELSE 'N' END,
                            DR_COD_IDE_CLI_TERC

                      );
                      COMMIT;

                END IF;

            END LOOP;

            SELECT COUNT(*)
              INTO i_pagto
              FROM USER_IPESP.TB_DETALHE_ENVIO_ARQ_BANCARIO E
             WHERE E.COD_INS = 1
               AND E.TIP_PROCESSO = I_TIPPROCESSO
               AND E.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
               AND E.PER_PROCESSO = I_PERPROCESSO
               AND E.NUM_GRUPO = I_GRP_PAGTO
               AND E.DAT_PAGAMENTO = v_dat_pgto
               AND E.FLG_DEFINITIVO = I_DEFINITIVO;


            IF i_pagto = 0 THEN
               c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
               RAISE e_ERROR;
            END IF;

            cont   := 0;
            cont1  := 0;
            i_conv := 0;

            FOR j IN (SELECT DISTINCT E.TIP_PAGTO
                        FROM USER_IPESP.TB_DETALHE_ENVIO_ARQ_BANCARIO E
                       WHERE E.COD_INS = 1
                         AND E.TIP_PROCESSO = I_TIPPROCESSO
                         AND E.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
                         AND E.PER_PROCESSO = I_PERPROCESSO
                         AND E.NUM_GRUPO = I_GRP_PAGTO
                         AND E.DAT_PAGAMENTO = v_dat_pgto
                         AND E.FLG_DEFINITIVO = I_DEFINITIVO
                       ORDER BY E.TIP_PAGTO
                      )
            LOOP
                cont := cont+1;
                BEGIN

                  IF (J.TIP_PAGTO != i_conv) THEN

                      <<GET_CONVENIO>>
                      BEGIN

                        c_num_nsa  := 0;

                        -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                        SELECT   DISTINCT
                                 RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                                 LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                                 LPAD(NVL(CB.COD_CONV,0),9,0),
                                 TRIM(CB.DES_CONVENIO)
                        INTO   HR_NomBanco,
                               c_num_nsa,
                               HR_CodConvenio,
                               c_desc_conv
                        FROM   user_ipesp.TB_CONVENIO_BANCO CB,
                               TB_BANCO          TB,
                               TB_ENVIO_BANCO    EB
                        WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                        AND   CB.COD_BANCO        = TB.COD_BANCO
                        AND   EB.COD_BANCO        = CB.COD_BANCO
                        AND   EB.COD_CONV         = CB.COD_CONV
                        AND   EB.PER_PROCESSO     = I_PERPROCESSO
                        AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)             -- EB.COD_ENTIDADE)
                        AND   EB.NUM_GRP          = aConvGrp(f).grp_pago                -- DECODE( aConvGrp(f).grp_pago, 99, EB.NUM_GRP, aConvGrp(f).grp_pago )
                        AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                        AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                        AND   CB.NUM_SEQ          = aConvGrp(f).seq_convenio            -- c_seq_conv MRS
                        AND   CB.TIPO_PAGTO       = j.Tip_Pagto;

                      EXCEPTION
                      WHEN NO_DATA_FOUND THEN

                           SELECT RPAD(SUBSTR(BC.DES_BANCO,1,30),30,' '), LPAD(NVL(CB.COD_CONV,0),9,0), CB.NUM_NSA, TRIM(CB.DES_CONVENIO)
                           INTO   HR_NomBanco, HR_CodConvenio, c_num_nsa, c_desc_conv
                           FROM user_ipesp.TB_CONVENIO_BANCO CB,
                                TB_BANCO          BC
                           WHERE CB.COD_BANCO  = NVL(I_BANCO,001)
                           AND   CB.COD_INS    = c_cod_ins
                           AND   CB.NUM_SEQ    = aConvGrp(f).seq_convenio                    -- c_seq_conv
                           AND   CB.TIPO_PAGTO = j.Tip_Pagto
                           AND   CB.COD_BANCO  = BC.COD_BANCO;

                           FOR K1 IN (  SELECT GP.NUM_GRP_PAG
                                        FROM   TB_CRONOGRAMA_PAG   CP,
                                               TB_GRUPO_PAGAMENTO  GP,
                                               TB_TIPOS_BENEFICIOS TB
                                        WHERE   CP.NUM_GRP            = DECODE( aConvGrp(f).grp_pago, 99, CP.NUM_GRP, aConvGrp(f).grp_pago )
                                        AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                                        AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                                        AND     CP.PER_PROCESSO       = I_PERPROCESSO
                                        AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                                        AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                                        AND     GP.COD_SEQ_CONVENIO   = aConvGrp(f).seq_convenio
                                        ORDER BY 1                                                         ) LOOP


                                 BEGIN

                                   -- VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                                   INSERT INTO USER_IPESP.TB_ENVIO_BANCO EB
                                   (
                                     COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                                     SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                                     NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                                     NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                                     COD_CONV
                                   )
                                   VALUES
                                   (
                                     c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                                     I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                                     0                        , SYSDATE                  , SYSDATE                ,
                                     USER                     , 'GERA_ARQ_CNAB'          , K1.NUM_GRP_PAG         ,
                                     HR_CodConvenio
                                   );

                                   COMMIT;

                                 EXCEPTION
                                 WHEN OTHERS THEN
                                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                                   lOraErr     := TRUE;
                                   RAISE e_ERROR;

                                 END;

                           END LOOP;

                      WHEN OTHERS THEN
                           c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                           lOraErr     := TRUE;
                           RAISE e_ERROR;

                      END GET_CONVENIO;


                      --DALVES 06/07/2016 -- TASK31674
                      --Alteração do campo Tipo de Serviço
                      IF  c_desc_conv = 'CONTA CORRENTE' THEN
                         HL_Lancamento  := '01';
                         HL_TipoServico := '30'; --Pagamento Salários
                      ELSIF c_desc_conv = 'DOC' THEN
                         HL_Lancamento  := '03'; -- DOC
                         HL_TipoServico := '98'; -- Pagamento Diversos
                      ELSE
                         HL_Lancamento  := '05'; -- POUPANCA
                         HL_TipoServico := '98';
                      END IF;

                      i_conv := J.TIP_PAGTO;

                  ELSE
                      GOTO END_LOOP;
                  END IF;

                EXCEPTION
                WHEN NO_DATA_FOUND THEN
                   GOTO END_LOOP;

                END;

                BEGIN

                  c_cont_tot    := 0;
                  c_cont_seq    := 0;
                  c_count_seg_a := 0;
                  v_Seq         := 0;
                  vQtdeArq      := 0;
                  c_total_geral := 0;
                  HR_Sequencial := nvl(c_num_nsa,0);
                  lFim          := FALSE;
                  cont1 := 0;

                      FOR k IN (SELECT *
                                  FROM USER_IPESP.TB_DETALHE_ENVIO_ARQ_BANCARIO E
                                 WHERE E.COD_INS = 1
                                   AND E.TIP_PROCESSO = I_TIPPROCESSO
                                   AND E.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
                                   AND E.PER_PROCESSO = I_PERPROCESSO
                                   AND E.NUM_GRUPO = I_GRP_PAGTO
                                   AND E.DAT_PAGAMENTO = v_dat_pgto
                                   AND E.TIP_PAGTO = J.TIP_PAGTO
                                   AND E.FLG_DEFINITIVO = I_DEFINITIVO
                                 ORDER BY E.NUM_SEQ
                               ) LOOP
                          cont1 := cont1+1;

                          c_count_seg_a := c_count_seg_a + 1;
                          c_cont_seq := c_cont_seq + 1;
                          c_cont_tot := c_cont_tot + 1;

                          <<PRINT_FILE>>
                          BEGIN

                              IF cont1 = 1                             OR
                                 mod( c_cont_seq, vLimQuebra ) = 0 THEN

                                  IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                                      IF c_cont_tot >= i_pagto THEN
                                        lFim := TRUE;
                                      ELSE
                                        lFim := FALSE;
                                      END IF;

                                      TL_LoteServico     := LPAD(v_lote,4,0);
                                      TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                      TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                      TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                      UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                          TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                          TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || chr(13)   );

                                      TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                      TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                      TR_QtdContas     := LPAD(1,6,0);

                                      UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                            TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                            TR_QtdContas   || TR_Brancos2       ||  CHR(13));

                                      UTL_FILE.FCLOSE( f_OutputCredito );

                                  END IF;

                                  c_cont_seq           := 1;
                                  v_Seq                := NVL(v_Seq,0) + 1;
                                  v_lote               := 1;
                                  c_total_liquido      := 0;
                                  vQtdeArq             := NVL(vQtdeArq,0) + 1;
                                  HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );


                                  c_OutputFileCredito_Crip := null;
                                  c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                                  c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                                  c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                                  c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( aConvGrp(f).grp_pago, '0' ), 2, '0' );


                                  IF c_definitivo = 'S' THEN
                                    c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                                  ELSE
                                    c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                                  END IF;

                                  IF I_NOM_ARQUIVO IS NULL THEN
                                     I_NOM_ARQUIVO := c_OutputFileCredito;
                                  ELSE
                                     I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                                  END IF;

                                  BEGIN

                                  IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                      f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w', 32767 );
                                  END IF;

                                  EXCEPTION
                                    WHEN UTL_FILE.INVALID_PATH THEN
                                         c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                         lOraErr     := TRUE;
                                         RAISE e_ERROR;
                                    WHEN UTL_FILE.INVALID_MODE THEN
                                         c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                         lOraErr     := TRUE;
                                         RAISE e_ERROR;
                                    WHEN UTL_FILE.INVALID_OPERATION THEN
                                         c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                         lOraErr     := TRUE;
                                         RAISE e_ERROR;
                                    WHEN OTHERS THEN
                                         c_ERROR_MSG := SQLERRM;
                                         lOraErr     := TRUE;
                                         RAISE e_ERROR;
                                  END;

                                  -- Header de Arquivo
                                  UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq   ||  HR_RegistroHeader  ||
                                                                        HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                        HR_CodConvenio       ||  HR_SiglaSistema     ||  HR_Brancos6        ||
                                                                        HR_AgenciaManConta   ||  HR_Digito           ||  HR_Zeros           ||
                                                                        HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta         ||
                                                                        HR_DVAgenciaConta    ||  HR_NomEmpresa       ||  HR_NomBanco        ||
                                                                        HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao     ||
                                                                        HR_HoraGeracao       ||  HR_Sequencial       ||  HR_NRLayout        ||
                                                                        HR_DenGravacao       ||  HR_Brancos3         ||  HR_Brancos4        ||
                                                                        HR_Brancos5          ||  CHR(13));
                                  -- Header de Lote
                                  UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                                     HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                                     HL_VersaoLote      ||  HL_Brancos1       ||  HL_TipoInscricao   ||
                                                                     HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema    ||
                                                                     HL_Brancos6        ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                     HL_Zeros           ||  HL_Modalidade     ||  HL_ContaCorrente   ||
                                                                     HL_DVConta         ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                                     HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal     ||
                                                                     HL_Complemento     ||  HL_Cidade         ||  HL_Cep             ||
                                                                     HL_UF              ||  HL_Brancos3       ||  HL_CodOcorrencia   ||
                                                                     CHR(13)       );

                              END IF;

                              DR_LoteServico       := LPAD(v_lote, 4, 0);
                              DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                              DR_CodBancoFav       := LPAD(TO_NUMBER(K.cod_banco),3,0);
                              DR_CodAgenciaFav     := LPAD(TO_NUMBER(K.num_agencia),5,0);
                              DR_DVConta           := K.num_dv_conta;
                              DR_NomeFavorecido    := K.NOM_PESSOA_FISICA;

                              select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                              DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                              DR_Valor             := LPAD(TO_CHAR((ROUND(K.val_liquido,2) * 100)),15,'0');
                              DR_DataLancamento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                              DR_Zeros1             := Null;
                              DR_Modalidade         := Null;

                             IF DR_CodBancoFav = 1 THEN
                                  PAC_INTEGRACAO.SP_CALCULA_DV_BB( 1,
                                                 LPAD( TO_NUMBER( K.num_agencia ), 4, 0 ),
                                                 Null,
                                                 vDvAg );

                                 DR_Digito             := vDvAg;
                                 DR_CamaraCentra       := '000';

                                 -- alteração pontual TT16079
                                 -- a conta esta com 8 digitos e inicia com o numero 8
                                 -- retirar o if quando arrumar a conta bancaria
                                 if (  (k.cod_beneficio = 209482 and k.cod_ide_cli = '0200001473400')
                                    or (k.cod_beneficio = 945851 and k.cod_ide_cli = '0200012112700')
                                    or (k.cod_beneficio = 90381 and k.cod_ide_cli = '0200007474700')
                                    ) then
                                     DR_ContaCorrenteFav  := lpad( (lpad(k.cod_tipo_conta,2,'0')||k.num_conta), 12, '0' );
                                 else
                                     DR_ContaCorrenteFav  := lpad( lpad(k.cod_tipo_conta,2,'0') || lpad(substr(trunc(k.num_conta),case when length(trunc(k.num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');
                                 end if;

                                 --  DR_ContaCorrenteFav  := lpad( lpad(k.cod_tipo_conta,2,'0') || lpad(substr(trunc(k.num_conta),case when length(trunc(k.num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                                 if (k.cod_tipo_conta in (1,51)) THEN
                                     vTipo                 := 3; -- conta poupanca
                                 else
                                     vTipo                 := 1; -- cc
                                 end if;
                             ELSE
                                 DR_CamaraCentra       := '018';
                                 DR_Digito             := ' ';

                                 IF (DR_CodBancoFav = 33) THEN -- SANTANDER
                                    DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(K.cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(K.num_conta),1,6),6,'0'), 12,0);
                                 ELSIF (DR_CodBancoFav = 104) THEN
                                    DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(K.cod_tipo_conta,2),'00'),2,'0') || substr(K.num_conta,1,10), 12,0);
                                 ELSE
                                    DR_ContaCorrenteFav   := LPAD(TRUNC(K.num_conta),12,0);
                                 END IF;

                                 vTipo := 2; -- DOC

                              END IF;

                              --
                              vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                        DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                        DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                        DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                        DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                        DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                        DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                        DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                        DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                        DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia;
                              --

                              -- Imprime Detalhe
                              UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                                  DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                                  DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                                                  DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                                  DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                                  DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                                  DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                                  DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                                  DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                                  DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia    || chr(13));

                              -- Incrementa a tb_envio_arq_bancario
                              INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                              (
                                           COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                              LOTE,                   CONVENIO,                 SEGMENTO,
                                           NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                        DT_GERACAO,                   DT_PAGTO,                     NOME,
                                             VALOR,                    NUM_CPF,                  ARQUIVO,
                                             LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                       COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                          DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                      TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                            FLG_PA,                    TIP_MOV,            COD_BENEFICIO,
                                  COD_IDENTIFICADOR,              FLG_TERCEIRO,     COD_IDE_CLI_TERCEIRO
                              )
                              VALUES
                              (
                                    1, K.cod_ide_cli, '3',
                                    DR_LoteServico, HR_CodConvenio, DR_CodSegRegDetalhe,
                                    HR_Sequencial, vTipo, DR_SeqRegistroLote,
                                    to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                    k.dat_pagamento, DR_NomeFavorecido,
                                    ROUND(K.val_liquido,2),
                                    null,
                                    CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                    vLinha, c_definitivo, DR_CodBancoFav,
                                    DR_CodAgenciaFav, DR_Digito, K.num_conta,
                                    DR_DVConta, LPAD(nvl(SUBSTR(K.cod_tipo_conta,1,2),'0'),2,0),
                                    I_PERPROCESSO, I_TIPPROCESSO, I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                    'N', '0', K.cod_beneficio,
                                    DR_NumeroDoc, K.FLG_TERCEIRO, K.COD_IDE_CLI_TERCEIRO
                              );


                              c_cont_seq := c_cont_seq + 1;
                              DRB_LoteServico       := LPAD(v_lote,4,0);                                             -- Lote de Servico
                              DRB_ValorDocumento    := LPAD(ROUND(K.val_liquido,2) * 100, 15, 0);       -- Valor do documento
                              DRB_DataVencimento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );                  -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                              DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');                                       -- sequencial do registro no lote
                              DRB_NumInscricao      := LPAD(TO_NUMBER( K.NUM_CPF ),14,0);

                              --IF DR_CodBancoFav != 1 THEN
                                 -- SEGMENTO B
                                 UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                                                     DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                                     DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                                                     DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                                     DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                                                     DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                                                     DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                                                     DRB_CodigoFavorecido  || DRB_Brancos2          ||chr(13));

                                 vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                           DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                           DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                           DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                           DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                           DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                           DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                           DRB_CodigoFavorecido  || DRB_Brancos2;

                                 --Incrementa a tb_envio_arq_bancario
                                  INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                                  (
                                               COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                                  LOTE,                   CONVENIO,                 SEGMENTO,
                                               NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                            DT_GERACAO,                   DT_PAGTO,                     NOME,
                                                 VALOR,                    NUM_CPF,                  ARQUIVO,
                                                 LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                           COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                              DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                          TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                                FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                                        cod_identificador,            FLG_TERCEIRO,             COD_IDE_CLI_TERCEIRO
                                  )
                                  VALUES
                                  (
                                       1, K.cod_ide_cli, '3',
                                       DRB_LoteServico, HR_CodConvenio, DRB_CodSegRegDetalhe,
                                       HR_Sequencial, vTipo, DRB_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                       k.dat_pagamento, NULL,
                                       0, null,
                                       CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                       vLinha, c_definitivo, DR_CodBancoFav,
                                       DR_CodAgenciaFav, DR_Digito, K.num_conta,
                                       DR_DVConta, LPAD(nvl(SUBSTR(K.cod_tipo_conta,1,2),'0'),2,0),
                                       I_PERPROCESSO, I_TIPPROCESSO, I_SEQ_PAGAMENTO,   LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                       'N', '0',  K.cod_BENEFICIO,
                                       DR_NumeroDoc, K.FLG_TERCEIRO, K.COD_IDE_CLI_TERCEIRO
                                  );


                              --END IF;

                          EXCEPTION
                          WHEN OTHERS THEN
                               IF c_ERROR_MSG IS NULL THEN
                                  c_ERROR_MSG := SQLERRM;
                               END IF;
                               I_MSG_ERRO  := c_ERROR_MSG;
                               lOraErr     := TRUE;
                               RAISE e_ERROR;

                          END PRINT_FILE;

                          UTL_FILE.FFLUSH(f_OutputCredito);

                          vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                          c_total_liquido   := c_total_liquido + ROUND(K.val_liquido,2);
                          c_total_geral     := c_total_geral + ROUND(K.val_liquido,2);

                          vcontador := vcontador + 1;
                          vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                          IF c_definitivo = 'S' THEN

                              -- ATUALIZACAO DA TB_FOLHA
                              -- Esta parte do codigo devera ser mantida ate q haja uma definicao qto ao tratamento - MRS 01/10/2009
                                begin
                                    UPDATE   TB_FOLHA ff
                                       SET   ff.cod_banco        = LPAD(K.cod_banco, 5, '0'),
                                             ff.num_agencia      = LPAD(K.num_agencia, 8, '0'),
                                             ff.num_dv_agencia   = vDvAg,
                                             ff.num_conta        = K.num_conta,
                                             ff.num_dv_conta     = K.num_dv_conta,
                                             ff.cod_tipo_conta   = K.cod_tipo_conta
                                    WHERE   ff.cod_ins        = c_cod_ins
                                    AND     ff.tip_processo   = c_tipo_processo
                                    AND     ff.per_processo   = I_PERPROCESSO
                                    AND     ff.seq_pagamento  = I_SEQ_PAGAMENTO
                                    AND     ff.cod_ide_cli    = K.cod_ide_cli
                                    AND     FF.COD_BENEFICIO  = K.cod_beneficio
                                    AND     EXISTS ( SELECT 1 FROM tb_beneficiario bn
                                                     WHERE bn.cod_ins          = ff.cod_ins
                                                     AND   bn.cod_beneficio    = ff.cod_beneficio
                                                     AND   bn.cod_ide_cli_ben  = ff.cod_ide_cli
                                                     AND   bn.cod_proc_grp_pag = LPAD( NVL( aConvGrp(f).grp_pago, bn.cod_proc_grp_pag ), 2, '0' ) );
                                exception
                                when others then
                                     dbms_output.put_line(K.cod_ide_cli);
                                     c_ERROR_MSG := sqlerrm;
                                end;

                          END IF;

                      END LOOP;

                      IF not lFim THEN

                        TL_LoteServico     := LPAD(v_lote,4,0);
                        TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                        TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                        TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                        UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet  ||
                                                            TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                            TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                        TR_QTDRegLote    := LPAD(v_lote,6,'0');
                        TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                        TR_QtdContas     := LPAD(1,6,0);

                        UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico   ||  TR_RegistroDet  ||
                                                              TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                              TR_QtdContas  || TR_Brancos2       || CHR(13));
                        UTL_FILE.FCLOSE( f_OutputCredito );
                      END IF;

                      /*------------------------------------------
                        Atualiza os controles de envio para banco
                      ------------------------------------------*/
                      IF c_definitivo = 'S' THEN

                        BEGIN

                              c_num_nsa := vQtdeArq + c_num_nsa;

                              UPDATE TB_ENVIO_BANCO
                              SET   VAL_LIQUIDO      = c_total_geral,
                                    DAT_ENVIO        = SYSDATE,
                                    DAT_ULT_ATU      = SYSDATE,
                                    NOM_USU_ULT_ATU  = USER,
                                    NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                                    NUM_NSA          = c_num_nsa
                              WHERE  COD_INS           = c_cod_ins
                              AND    PER_PROCESSO      = I_PERPROCESSO
                              AND    COD_TIP_PROCESSO  = I_TIPPROCESSO
                              AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                              AND    COD_ENTIDADE      = NVL(I_COD_ENTIDADE,999)
                              AND    COD_BANCO         = NVL(I_BANCO,001)
                              AND    NUM_GRP           = DECODE( aConvGrp(f).grp_pago, 99, NUM_GRP, aConvGrp(f).grp_pago )
                              AND    COD_CONV          = TRUNC( HR_CodConvenio );

                              IF sql%rowcount = 0 THEN
                                 ROLLBACK;
                                 c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                                 lOraErr := TRUE;
                              END IF;

                              UPDATE TB_CONVENIO_BANCO C
                              SET NUM_NSA   = c_num_nsa
                              WHERE COD_INS   = c_cod_ins
                              AND   COD_BANCO = NVL(I_BANCO,001)
                              AND   COD_CONV  = TRUNC( HR_CodConvenio )
                              -- 06/07/2010
                              -- Inserida a condicao para atualizar somente o convenio que deve ser afetado por este processo
                              AND   NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ) );

                              IF sql%rowcount = 0 THEN
                                 ROLLBACK;
                                 c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                                 lOraErr := TRUE;
                              END IF;

                        EXCEPTION
                          WHEN OTHERS THEN
                           c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                           lOraErr     := TRUE;
                           RAISE e_ERROR;
                        END;

                        COMMIT;

                      END IF;


                EXCEPTION
                WHEN OTHERS THEN
                  GOTO END_LOOP;

                END;

                <<GERA_RESUMO>>
                BEGIN

                IF (c_definitivo = 'S') THEN

                  SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                            I_TIPPROCESSO,
                                            I_SEQ_PAGAMENTO,
                                            LPAD( NVL( aConvGrp(f).grp_pago, '00' ), 2, '0' ),
                                            aConvGrp(f).dat_efetiva,
                                            c_OutputFileCredito,
                                            c_OutputFileCredito_Crip,
                                            HR_DataGeracao,
                                            HR_HoraGeracao,
                                            c_total_liquido,
                                            c_count_seg_a,
                                            'N');

                  c_OutputFileCredito  := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
                  SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

                  -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                  USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(v_dat_pgto,'YYYYMMDD'), v_dat_pgto, 'S','A');
                  --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(v_dat_pgto,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO, I_PERPROCESSO, I_SEQ_PAGAMENTO, v_dat_pgto, I_GRP_PAGTO);

                END IF;



                EXCEPTION
                WHEN OTHERS THEN
                    ROLLBACK;

                END;

                <<END_LOOP>>
                IF lOraErr THEN
                   I_NOM_ARQUIVO := NULL;
                   RAISE e_ERROR;
                END IF;

            END LOOP;




        END LOOP;

        UTL_FILE.FCLOSE_ALL;
        
        -- LJUNIOR EM 05/06/2018
        -- SOLICITADO POR PAULO PARA AGILIZAR O FECHAMENTO
        IF (UPPER(I_DEFINITIVO) = 'S') THEN
          USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_RESUMO_BANCO_ORDJUD (1, I_PERPROCESSO, I_TIPPROCESSO, I_SEQ_PAGAMENTO, I_GRP_PAGTO, c_ERROR_MSG);
          USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(v_dat_pgto,'YYYYMMDD')||'_'||LPAD(I_GRP_PAGTO,2,'0'),1, I_TIPPROCESSO, I_PERPROCESSO, I_SEQ_PAGAMENTO, v_dat_pgto, I_GRP_PAGTO);
        END IF;        

        
        /*-------------------------
        Fecha o registro do log de processamento - Situacao 'F' - Finalizado
        -------------------------*/

        PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                            p_cod_ins                => 1,
                                            p_per_processo          => I_PERPROCESSO,
                                            p_cod_tip_processo      => I_TIPPROCESSO,
                                            p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                            p_des_tipos_benef        => c_des_nom_benef,
                                            p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                            p_cod_banco              => NVL(I_BANCO,001),
                                            p_num_tip_emissao        => NULL,
                                            p_cod_ide_cli            => NULL,
                                            p_dat_agenda_proc        => SYSDATE,
                                            p_flg_processamento      => 'F' ,             -- Finalizado
                                            p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                            p_cod_cargo             => null,
                                            p_cod_categoria         => null,
                                            p_cod_pccs              => null,
                                            p_cod_entidade          => I_COD_ENTIDADE,
                                            p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log




        IF TO_NUMBER(c_erro_log) <> 0 THEN
          RAISE e_ERROR;
        END IF;

      EXCEPTION

      WHEN e_ERROR THEN
           DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
           UTL_FILE.FCLOSE_ALL;
           RAISE e_ERROR;


      WHEN OTHERS THEN
           c_error_msg := SQLERRM;
           DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
           I_MSG_ERRO  := c_ERROR_MSG;
           UTL_FILE.FCLOSE_ALL;
           DBMS_OUTPUT.PUT_LINE(vprocesso);
           RAISE e_ERROR;

      END;

    EXCEPTION
      WHEN OTHERS THEN

        /*-------------------------
          Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
          -------------------------*/
          PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                              p_cod_ins                => 1,
                                              p_per_processo          => I_PERPROCESSO,
                                              p_cod_tip_processo      => I_TIPPROCESSO,
                                              p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                              p_des_tipos_benef        => c_des_nom_benef,
                                              p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                              p_cod_banco              => NVL(I_BANCO,001),
                                              p_num_tip_emissao        => NULL,
                                              p_cod_ide_cli            => NULL,
                                              p_dat_agenda_proc        => SYSDATE,
                                              p_flg_processamento      => 'E' ,             -- Agendado
                                              p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                              p_cod_cargo             => null,
                                              p_cod_categoria         => null,
                                              p_cod_pccs              => null,
                                              p_cod_entidade          => I_COD_ENTIDADE,
                                              p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_CNAB_A;




  PROCEDURE GERA_ARQ_CNAB_PA_A( I_PERPROCESSO     IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

type TypeDetLst is table of tb_folha%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;


i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 300000;        -- Define a limite de quebra de arquivo paa um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/
vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100) := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;

f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

c_OutputFileCredito_Crip VARCHAR2(100);

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := 1;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(6) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa          NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

/*----------------Header Arquivo---------------------------------*/
HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
HR_Digito          CHAR(01) := 'X';                     -- DV
HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
HR_Modalidade       VARCHAR2(02) := '00';
HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(7) := ' ';

/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '  ';
HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '043';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
HL_Digito            CHAR(01) := 'X';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';

vprocesso             CHAR(100) := ' ';

CURSOR c1 IS
    SELECT
            ff.cod_beneficio,
            ff.cod_ide_cli_ben,
            TRUNC(ff.val_liquido,2) val_liquido,
            SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30) nom_pessoa_fisica,
            pf.num_cpf
    FROM    user_ipesp.tb_rel_folha_aux rr,
            user_ipesp.TB_FOLHA_PA FF,
            TB_PESSOA_FISICA       PF
    WHERE   rr.cod_ins               = c_cod_ins
      and   rr.tip_processo          = I_TIPPROCESSO
      and   rr.seq_pagamento         = I_SEQ_PAGAMENTO
      and   rr.per_processo          = I_PERPROCESSO
      and   rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
      and   rr.dat_pgto              = c_data_efetiva
      and   ff.cod_ins               = RR.COD_INS
      AND   ff.per_processo          = RR.PER_PROCESSO
      AND   ff.tip_processo          = RR.TIP_PROCESSO
      AND   ff.seq_pagamento         = RR.SEQ_PAGAMENTO            -- NVL(DECODE(I_SEQ_PAGAMENTO,1,NULL,I_SEQ_PAGAMENTO), ff.seq_pagamento)
      AND   FF.COD_BENEFICIO         = RR.COD_BENEFICIO
      AND   FF.COD_IDE_CLI           = RR.COD_IDE_CLI
      AND   ff.val_liquido           > 0
      AND   pf.cod_ins               = ff.cod_ins
      AND   pf.cod_ide_cli           = ff.cod_ide_cli_ben
      AND   EXISTS  ( SELECT 1 FROM tb_det_CALCULADO DC
                      WHERE DC.COD_INS        = FF.COD_INS
                      AND   DC.TIP_PROCESSO   = FF.TIP_PROCESSO
                      AND   DC.PER_PROCESSO   = FF.PER_PROCESSO
                      AND   DC.COD_IDE_CLI    = FF.COD_IDE_CLI
                      AND   DC.COD_BENEFICIO  = FF.COD_BENEFICIO
                      AND   DC.COD_FCRUBRICA IN (select distinct cod_rubrica from user_ipesp.tb_rubricas r where r.tip_evento_especial = 'P')
                    );



c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' )   THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    BEGIN

        SELECT CP.DAT_PAG_EFETIVA,     CP.NUM_GRP,  GP.COD_SEQ_CONVENIO
        INTO   c_data_efetiva,  c_grupo_pagamento,           c_seq_conv
        FROM   user_ipesp.TB_CRONOGRAMA_PAG  CP,
               TB_GRUPO_PAGAMENTO GP
        WHERE   CP.NUM_GRP          = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
        AND     CP.NUM_GRP          = GP.NUM_GRP_PAG
        AND     CP.COD_TIP_PROCESSO = I_TIPPROCESSO
        AND     CP.PER_PROCESSO     = I_PERPROCESSO
        AND     CP.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
        RAISE e_ERROR;
    END;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------

    c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';

    IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w' );
    END IF;

    FOR REG IN C1  LOOP

          BEGIN

            DR_CodBancoFav := NULL;
            DR_CodAgenciaFav := NULL;
            DR_Digito := NULL;
            DR_ContaCorrenteFav := NULL;
            DR_DVConta := NULL;
            DR_Modalidade := NULL;
            DR_COD_IDE_CLI_TERC := NULL;



             SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                    SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                    SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                    ib.num_conta,
                    upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                    DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',
                    DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                    IB.COD_IDE_CLI_TERCEIRO
               INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                    DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
               FROM TB_INFO_BANC_BENEFICIO I, TB_INFORMACAO_BANCARIA IB
              WHERE I.COD_INS = IB.COD_INS
                AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                AND I.COD_BENEFICIO = REG.Cod_Beneficio
                AND I.COD_IDE_CLI = REG.cod_ide_cli_ben;
          EXCEPTION
             WHEN NO_DATA_FOUND THEN
                  BEGIN
                       SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                              ib.num_conta,
                              upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                              IB.COD_IDE_CLI_TERCEIRO
                         INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade,
                              DR_COD_IDE_CLI_TERC
                         FROM TB_INFORMACAO_BANCARIA IB
                        WHERE IB.COD_INS = 1
                          AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                          and not exists
                          (
                                 select 1 from user_ipesp.tb_info_banc_beneficio d
                                  where d.cod_ins = 1
                                  and d.cod_ide_cli = ib.cod_ide_cli
                                  and d.cod_ide_inf_banc = ib.cod_ide_inf_banc
                          );
                   EXCEPTION
                          WHEN TOO_MANY_ROWS THEN
                               SELECT *
                                INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                FROM
                                (

                                    SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                           SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                           SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                           ib.num_conta,
                                           upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                           DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                           IB.COD_IDE_CLI_TERCEIRO
                                      FROM TB_INFORMACAO_BANCARIA IB
                                     WHERE IB.COD_INS = 1
                                       AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                     ORDER BY IB.COD_BANCO
                                 ) WHERE ROWNUM = 1;
                          WHEN NO_DATA_FOUND THEN
                                begin
                                        SELECT *
                                            INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       IB.COD_IDE_CLI_TERCEIRO
                                                  FROM TB_INFORMACAO_BANCARIA IB
                                                 WHERE IB.COD_INS = 1
                                                   AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                                 ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;
                               exception
                                   when no_data_found then
                                       UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
                                       DR_CodBancoFav := '000';
                                       DR_CodAgenciaFav := '00000' ;
                                       DR_Digito := '0';
                                       DR_ContaCorrenteFav := '000000';
                                       DR_DVConta := '0';
                                       DR_Modalidade := '00';
                                       DR_COD_IDE_CLI_TERC := NULL;
                                   when others then
                                         null;
                               end;
                          when others then
                            null;
                   END;
              when others then
                            null;
          END;
          IF (DR_CodAgenciaFav = 0 OR DR_ContaCorrenteFav = 0) THEN
             UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
          END IF;


          
          BEGIN
             IF DR_CodBancoFav = 1 THEN
                  if (DR_Modalidade in (1,51)) then
                    i_conv  := 3;
                  else
                    i_conv  := 1;
                  end if;
             ELSE
                /* TASK46548 - Alteração na Geração de Arquivos Bancários de Pensão Alimentícia e Terceiros
                 * Autor: Leandro Nunes
                 * Data: 14/05/2018
                 * Adicionada condição para Conta Judicial
                 */
                -- caso for conta judicial
                if (DR_Modalidade in (25, 26, 27, 28)) then
                  -- judicial
                  i_conv := 4;
                else
                  -- doc
                  i_conv := 2;
                end if;
                /* Fim TASK46548 */
             END IF;
             i_pagto := vDetalhe(i_conv).count+1;

          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             i_pagto := 1;
          END;

          vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.Cod_Beneficio;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.cod_ide_cli_ben;
          vDetalhe(i_conv)(i_pagto).cod_banco        := DR_CodBancoFav;
          vDetalhe(i_conv)(i_pagto).num_agencia      := DR_CodAgenciaFav;
          vDetalhe(i_conv)(i_pagto).num_dv_agencia   := DR_Digito;
          vDetalhe(i_conv)(i_pagto).num_conta        := DR_ContaCorrenteFav;
          vDetalhe(i_conv)(i_pagto).num_dv_conta     := DR_DVConta;
          vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := CASE WHEN I_CONV = 1 THEN '00' ELSE DR_Modalidade END;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := DR_COD_IDE_CLI_TERC;

          DR_CodBancoFav := NULL;
          DR_CodAgenciaFav := NULL;
          DR_Digito := NULL;
          DR_ContaCorrenteFav := NULL;
          DR_DVConta := NULL;
          DR_Modalidade := NULL;
          DR_CpfBen := NULL;
          DR_NomeBen := NULL;

          -- validação dos dados de terceiro
          IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                  INTO DR_CpfBen, DR_NomeBen
                  FROM USER_IPESP.TB_PESSOA_FISICA PF
                 WHERE PF.COD_INS = 1
                   AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
          ELSE
             DR_CpfBen := REG.NUM_CPF;
             DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
          END IF;

          vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;             -- CAMPO UTILIZADO PARA O CPF
          vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
          vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;

          -------------------------------------------------------------------

    END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

    FOR j IN vDetalhe.first..vDetalhe.last
    LOOP

        BEGIN

          IF vDetalhe(j).count > 0 THEN

              <<GET_CONVENIO>>
              BEGIN

                c_num_nsa           := 0;

                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                SELECT   RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                         LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                         LPAD(NVL(CB.COD_CONV,0),9,0),
                         TRIM(CB.DES_CONVENIO)
                INTO   HR_NomBanco,
                       c_num_nsa,
                       HR_CodConvenio,
                       c_desc_conv
                FROM   TB_CONVENIO_BANCO CB,
                       TB_BANCO          TB,
                       TB_ENVIO_BANCO    EB
                WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                AND   CB.COD_BANCO        = TB.COD_BANCO
                AND   EB.COD_BANCO        = CB.COD_BANCO
                AND   EB.COD_CONV         = CB.COD_CONV
                AND   EB.PER_PROCESSO     = I_PERPROCESSO
                AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)                 -- EB.COD_ENTIDADE)
                AND   EB.NUM_GRP          = c_grupo_pagamento
                AND   CB.TIPO_PAGTO       = j
                AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                AND   CB.NUM_SEQ          = c_seq_conv;

              EXCEPTION
              WHEN NO_DATA_FOUND THEN

                   BEGIN

                     SELECT LPAD(NVL(CB.COD_CONV,0),9,0), CB.DES_CONVENIO, CB.NUM_NSA
                     INTO   HR_CodConvenio, c_desc_conv, c_num_nsa
                     FROM TB_CONVENIO_BANCO CB
                     WHERE CB.COD_BANCO = NVL(I_BANCO,001)
                     AND   CB.COD_INS   = c_cod_ins
                     AND   CB.TIPO_PAGTO= j
                     AND   CB.NUM_SEQ   = c_seq_conv;

                     -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                     INSERT INTO TB_ENVIO_BANCO EB
                     (
                       COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                       SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                       NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                       NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                       COD_CONV
                     )
                     VALUES
                     (
                       c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                       I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                       0                        , SYSDATE                  , SYSDATE                ,
                       USER                     , 'GERA_ARQ_CNAB'          , c_grupo_pagamento      ,
                       HR_CodConvenio
                     );

                   EXCEPTION
                   WHEN OTHERS THEN
                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                     lOraErr     := TRUE;
                     RAISE e_ERROR;

                   END;

              WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;

              END GET_CONVENIO;

              --DALVES 06/07/2016 -- TASK31674
              --Alteração do campo Tipo de Serviço
              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                 HL_Lancamento  := '01';
                 HL_TipoServico := '30'; --Pagamento Salários
              --TASK46548 LNUNES 14/05/2018 Adicionado tipo DOC - CONTA JUDICIAL   
              --ELSIF c_desc_conv = 'DOC' THEN
              ELSIF c_desc_conv in ('DOC', 'DOC - CONTA JUDICIAL') THEN
                 HL_Lancamento  := '03'; -- DOC
                 HL_TipoServico := '98'; -- Pagamento Diversos
              ELSE
                 HL_Lancamento  := '05'; -- POUPANCA
                 HL_TipoServico := '98';
              END IF;

          ELSE

              GOTO END_LOOP;

          END IF;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           GOTO END_LOOP;

        END;

        BEGIN

          c_count_seg_a := 0;
          c_cont_tot    := 0;
          c_cont_seq    := 0;
          --TASK46548 LNUNES 15/05/2018 Corrigido para gerar os arquivos com sequencial
          --v_Seq         := 0; 
          vQtdeArq      := 0;
          c_total_geral := 0;
          HR_Sequencial := nvl(c_num_nsa,0);
          lFim          := FALSE;

          IF vDetalhe(j).count > 0 THEN

              FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                  c_count_seg_a := c_count_seg_a + 1;
                  c_cont_seq := c_cont_seq + 1;
                  c_cont_tot := c_cont_tot + 1;

                  <<PRINT_FILE>>
                  BEGIN

                      IF k = 1                             OR
                         mod( c_cont_seq, vLimQuebra ) = 0 THEN

                          IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                              IF c_cont_tot >= vDetalhe(j).last THEN
                                lFim := TRUE;
                              ELSE
                                lFim := FALSE;
                              END IF;

                              TL_LoteServico    := LPAD(v_lote,4,0);
                              TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                              TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                              TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                              UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                                  TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                  TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia ||CHR(13)   );

                              TR_QTDRegLote    := LPAD(v_lote,6,'0');
                              TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                              TR_QtdContas     := LPAD(1,6,0);

                              UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico  ||  TR_RegistroDet  ||
                                                                    TR_Brancos1    || TR_QTDRegLote   ||  TR_QTDRegArq    ||
                                                                    TR_QtdContas  || TR_Brancos2      || CHR(13));

                              UTL_FILE.FCLOSE( f_OutputCredito );

                          END IF;

                          c_cont_seq           := 1;
                          v_Seq                := NVL(v_Seq,0) + 1;
                          v_lote               := 1;
                          c_total_liquido      := 0;
                          vQtdeArq             := NVL(vQtdeArq,0) + 1;
                          HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                          c_OutputFileCredito_Crip := null;
                          c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                          c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( c_grupo_pagamento, '0' ), 2, '0' );

                          IF c_definitivo = 'S' THEN
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                          ELSE
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                          END IF;

                          IF I_NOM_ARQUIVO IS NULL THEN
                             I_NOM_ARQUIVO := c_OutputFileCredito;
                          ELSE
                             I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                          END IF;

                          BEGIN

                            IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                               f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                            END IF;

                          EXCEPTION
                            WHEN UTL_FILE.INVALID_PATH THEN
                                 c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_MODE THEN
                                 c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_OPERATION THEN
                                 c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN OTHERS THEN
                                 c_ERROR_MSG := SQLERRM;
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                          END;

                          -- Header de Arquivo
                          UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                HR_Brancos5         || CHR(13));
                          -- Header de Lote
                          UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                             HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                             HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                             HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                             HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                             HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                             HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                             HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                             HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                             HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   ||CHR(13)       );

                      END IF;

                      DR_LoteServico       := LPAD(v_lote, 4, 0);
                      DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                      DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                      DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                      DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                      DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                      select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                      DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                      DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                      DR_DataLancamento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                      DR_Zeros1             := Null;
                      DR_Modalidade         := Null;

                      IF DR_CodBancoFav = 1 THEN
                          SP_CALCULA_DV_bb( 1,
                                         LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                         Null,
                                         vDvAg );

                         DR_Digito             := vDvAg;
                         DR_CamaraCentra       := '000';

                         DR_ContaCorrenteFav  := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                         if (vDetalhe(j)(k).cod_tipo_conta in (1,51)) then
                             vTipo                 := 3; -- conta poupanca
                         else
                             vTipo                 := 1; -- cc
                         end if;

                      ELSE

                         DR_CamaraCentra       := '018';
                         DR_Digito             := ' ';

                         IF (DR_CodBancoFav = 33) THEN
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                         elsif (DR_CodBancoFav = 104) then
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                         ELSE
                            DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                         END IF;

                         /* TASK46548 - Alteração na Geração de Arquivos Bancários de Pensão Alimentícia e Terceiros
                         * Autor: Leandro Nunes
                         * Data: 14/05/2018
                         * Adicionada condição para Conta Judicial
                         */
                        
                          if (vDetalhe(j)(k).cod_tipo_conta in (25,26,27,28)) then
                            vTipo := 4; -- conta Judicial
                          else
                            vTipo := 2; -- Doc
                          end if;

                      END IF;



                      --
                      vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia ;
                      --

                      -- Imprime Detalhe
                      UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                          DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                          DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                          DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                          DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                          DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                          DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                          DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                          DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                          DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia     || CHR(13));

                      -- Incrementa a tb_envio_arq_bancario
                      INSERT INTO TB_ENVIO_ARQ_BANCARIO
                      (
                                   COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                      LOTE,                   CONVENIO,                 SEGMENTO,
                                   NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                DT_GERACAO,                   DT_PAGTO,                     NOME,
                                     VALOR,                    NUM_CPF,                  ARQUIVO,
                                     LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                               COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                  DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                              TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                    FLG_PA,                    TIP_MOV,                COD_BENEFICIO,
                              COD_IDENTIFICADOR,          FLG_TERCEIRO,         COD_IDE_CLI_TERCEIRO
                      )
                       VALUES
                       (
                             1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                            DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                             HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                   to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                        c_data_efetiva,        DR_NomeFavorecido,
                                   ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                  null,
                            CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                    vLinha,               c_definitivo,           DR_CodBancoFav,
                          DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                             I_PERPROCESSO,
                             I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                       'S',                        '0', vDetalhe(j)(k).cod_beneficio,
                              DR_NumeroDoc,
                              CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                              vDetalhe(j)(k).cod_ide_cli_ben
                       );

                       c_cont_seq := c_cont_seq + 1;
                       DRB_LoteServico       := LPAD(v_lote,4,0);                     -- Lote de Servico
                       DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                       DRB_DataVencimento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                       DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');               -- sequencial do registro no lote
                       DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);

                      --IF DR_CodBancoFav != 1 THEN
                         -- SEGMENTO B
                         UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                                             DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                             DRB_TipoInscricao     || DRB_NumInscricao       ||  DRB_Endereco        ||
                                                             DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                             DRB_NomeCidade        || DRB_CEP                ||  DRB_UF              ||
                                                             DRB_DataVencimento    || DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                                             DRB_ValorDesconto     || DRB_ValorMora          ||  DRB_ValorMulta      ||
                                                             DRB_CodigoFavorecido  || DRB_Brancos2           ||  CHR(13));

                         vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                   DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                   DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                   DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                   DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                   DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                   DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                   DRB_CodigoFavorecido  || DRB_Brancos2     ;


                          INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                             COD_IDENTIFICADOR,               FLG_TERCEIRO,             COD_IDE_CLI_TERCEIRO
                          )
                          VALUES
                          (
                                 1, vDetalhe(j)(k).cod_ide_cli,                      '3',
                               DRB_LoteServico,             HR_CodConvenio,     DRB_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,      DRB_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                            c_data_efetiva,                     NULL,
                                                                         0,
                                                                      null,
                              CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                        vLinha,               c_definitivo,           DR_CodBancoFav,
                              DR_CodAgenciaFav,               DR_Digito, vDetalhe(j)(k).num_conta,
                                    DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                                   I_PERPROCESSO,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,   LPAD( c_grupo_pagamento, 2, '0' ),
                                           'S',                        '0',  vDetalhe(j)(k).cod_beneficio,
                                  DR_NumeroDoc,
                                  CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                                  vDetalhe(j)(k).cod_ide_cli_ben
                          );

                      --END IF;

                  EXCEPTION
                  WHEN OTHERS THEN
                       c_ERROR_MSG := SQLERRM;
                       I_MSG_ERRO  := c_ERROR_MSG;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END PRINT_FILE;

                  UTL_FILE.FFLUSH(f_OutputCredito);

                  vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                  c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                  c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                  vcontador := vcontador + 1;
                  vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                  IF c_definitivo = 'S' THEN

                      begin
                            UPDATE   TB_FOLHA_PA
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            and     cod_beneficio  = vDetalhe(j)(k).cod_beneficio
                            AND     cod_ide_cli_ben    = vDetalhe(j)(k).cod_ide_cli;
                        exception
                            when others then
                              null;
                     end;
                  END IF;

              END LOOP;

              IF not lFim THEN

                TL_LoteServico     := LPAD(v_lote,4,0);
                TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                    TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                    TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                TR_QTDRegLote    := LPAD(v_lote,6,'0');
                TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                TR_QtdContas     := LPAD(1,6,0);

                UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                      TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                      TR_QtdContas  || TR_Brancos2  ||CHR(13) );
                UTL_FILE.FCLOSE( f_OutputCredito );
              END IF;

              IF c_definitivo = 'S' THEN

                /*------------------------------------------
                  Atualiza os controles de envio para banco
                ------------------------------------------*/
                BEGIN

                      c_num_nsa := vQtdeArq + c_num_nsa;

                      UPDATE   TB_ENVIO_BANCO
                      SET    VAL_LIQUIDO      = c_total_geral,
                            DAT_ENVIO        = SYSDATE,
                            DAT_ULT_ATU      = SYSDATE,
                            NOM_USU_ULT_ATU  = USER,
                            NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                            NUM_NSA         = c_num_nsa
                      WHERE  COD_INS           = c_cod_ins
                      AND    PER_PROCESSO     = I_PERPROCESSO
                      AND    COD_TIP_PROCESSO = I_TIPPROCESSO
                      AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                      AND    COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)
                      AND    COD_BANCO         = NVL(I_BANCO,001)
                      AND   NUM_GRP          = c_grupo_pagamento
                      AND   COD_CONV         = TRUNC( HR_CodConvenio );

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                      UPDATE TB_CONVENIO_BANCO
                      SET NUM_NSA   = c_num_nsa
                      WHERE COD_INS   = c_cod_ins
                      AND   COD_BANCO = NVL(I_BANCO,001)
                      AND   COD_CONV  = TRUNC( HR_CodConvenio )
                      -- 06/07/2010
                      -- Inserida a condicao para atualizar somente o convenio que deve ser afetado por este processo
                      AND   NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ));

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                EXCEPTION
                  WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;
                END;

                COMMIT;

              END IF;

          END IF;

        EXCEPTION
        WHEN OTHERS THEN
          GOTO END_LOOP;

        END;

        COMMIT;

        <<GERA_RESUMO>>
        BEGIN

            IF (c_definitivo = 'S') THEN

                SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                          I_TIPPROCESSO,
                                          I_SEQ_PAGAMENTO,
                                          LPAD( NVL( c_grupo_pagamento, '00' ), 2, '0' ),
                                          c_data_efetiva,
                                          c_OutputFileCredito,
                                          c_OutputFileCredito_Crip,
                                          HR_DataGeracao,
                                          HR_HoraGeracao,
                                          c_total_liquido,
                                          c_count_seg_a,
                                          'S' );

                c_OutputFileCredito := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
                SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);


                -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(c_data_efetiva,'YYYYMMDD'), c_data_efetiva, 'S','A');
                --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO,I_PERPROCESSO,I_SEQ_PAGAMENTO,c_data_efetiva, I_GRP_PAGTO);


            END IF;

        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;

        END;

        <<END_LOOP>>
        IF lOraErr THEN
           I_NOM_ARQUIVO := NULL;
           RAISE e_ERROR;
        END IF;



    END LOOP;

    UTL_FILE.FCLOSE_ALL;
    
    -- LJUNIOR EM 05/06/2018
    -- SOLICITADO POR PAULO PARA AGILIZAR O FECHAMENTO
    IF (UPPER(I_DEFINITIVO) = 'S') THEN
      USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_RESUMO_BANCO_ORDJUD (1, I_PERPROCESSO, I_TIPPROCESSO, I_SEQ_PAGAMENTO, I_GRP_PAGTO, c_ERROR_MSG);
      USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||LPAD(I_GRP_PAGTO,2,'0'),1, I_TIPPROCESSO, I_PERPROCESSO, I_SEQ_PAGAMENTO, c_data_efetiva, I_GRP_PAGTO);
    END IF;


  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                                          p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                          p_cod_banco              => NVL(I_BANCO,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_CNAB_PA_A;


  PROCEDURE SP_ENCRIPTA_ARQ_BANCARIO
  (
     ARQ_ORIGEM    IN VARCHAR2
  )
  IS
     CHAVE_PUBLICA VARCHAR2(1024);
     DIR_ORIGEM    VARCHAR2(1024);
     DIR_DESTINO   VARCHAR2(1024);
     ARQ_DESTINO   VARCHAR2(1024);

     f_OutputEnc        UTL_FILE.FILE_TYPE;

  BEGIN

      --SE BANCO DO BRASIL FAZER
      SELECT C1.DES_DESCRICAO
        INTO CHAVE_PUBLICA
        FROM TB_CODIGO C1
       WHERE C1.COD_NUM = 10013
         AND C1.COD_PAR = 2;

      /*SELECT C1.DIRECTORY_PATH
        INTO DIR_ORIGEM
        FROM ALL_DIRECTORIES C1
       WHERE C1.DIRECTORY_NAME = 'ARQS_BANCARIOS';

      SELECT C1.DIRECTORY_PATH
        INTO DIR_DESTINO
        FROM ALL_DIRECTORIES C1
       WHERE C1.DIRECTORY_NAME = 'ARQS_BANCARIOS';*/

      ARQ_DESTINO :=  substr(ARQ_ORIGEM,1,instr(ARQ_ORIGEM,'.',1,5)-1) || '.enc';


      IF NOT UTL_FILE.IS_OPEN( f_OutputEnc ) THEN
           f_OutputEnc := UTL_FILE.FOPEN( 'ARQS_BANCARIOS', ARQ_DESTINO, 'w', 32767 );
      END IF;
      UTL_FILE.FCLOSE( f_OutputEnc );

      --iedpgpr.spprev.ddmmaahhmmss.bco001.asc

      --utl_file.fcopy('ARQS_BANCARIOS',ARQ_ORIGEM,'ARQS_BANCARIOS',ARQ_DESTINO);

      /*user_ipesp.SP_START_JOB_ENCRIPTACAO(
          DIR_ORIGEM => DIR_ORIGEM,
          ARQ_ORIGEM => ARQ_ORIGEM,
          CHAVE_PUBLICA => CHAVE_PUBLICA,
          DIR_DESTINO => DIR_DESTINO,
          ARQ_DESTINO => ARQ_DESTINO
      );*/

  END SP_ENCRIPTA_ARQ_BANCARIO;


  PROCEDURE GERA_ARQ_CNAB_REENVIO( I_PERPROCESSO      IN DATE,
                                   I_TIPPROCESSO      IN VARCHAR2,
                                   I_SEQ_PAGAMENTO    IN NUMBER,
                                   I_GRP_PAGTO        IN NUMBER,
                                   I_DEFINITIVO       IN VARCHAR2,
                                   I_MSG_ERRO         OUT VARCHAR2  ) IS

    /*------------------Grupos de Pagamento------------------------*/
    c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

    type TypeDetLst is table of user_ipesp.tb_folha%rowtype
                    index by binary_integer;

    type TypeDetIdx is table of TypeDetLst
                    index by binary_integer;

    type TypeConvenio is table of varchar2(10)
                      index by binary_integer;

    vConvenio             TypeConvenio;
    vDetalhe              TypeDetIdx;

    I_NOM_ARQUIVO         varchar2(200) := null;
    i_conv                NUMBER    := 0;
    i_pagto               NUMBER    := 0;
    v_lote                NUMBER    := 0;
    v_seq                 NUMBER    := 0;
    vcontador             NUMBER    := 0;
    vQtdeMoedaDetalhe     NUMBER    := 0;
    vQtdeArq              NUMBER    := 0;
    vLimQuebra            NUMBER(8) := 300000;        -- Define a limite de quebra de arquivo paa um mesmo convenio
    lFim                  BOOLEAN:=FALSE;
    lOraErr               BOOLEAN:=FALSE;
    vLinha                VARCHAR2(240);
    vTipo                 NUMBER:=0;
    V_DT_PAGAMENTO        DATE;
    /*--------------Variaveis Auxiliares para calculo de DV--------*/
    vDvAg    char(1):=null;

    /*--------------Variaveis Para Geracao de Arquivo--------------*/
    f_OutputCredito            UTL_FILE.FILE_TYPE;
    c_OutputLocation           VARCHAR2(100) := 'ARQS_BANCARIOS';
    c_OutputFileCredito        VARCHAR2(100) := NULL;

    f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
    c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

    c_OutputFileCredito_Crip VARCHAR2(100);

    v_OutputFileRelatorio UTL_FILE.FILE_TYPE;

    c_desc_conv       VARCHAR2(20);
    c_grupo_pagamento varchar2(2):='00';
    c_data_efetiva    DATE := NULL;
    c_tipo_processo   CHAR(1) := NULL;
    c_cod_ins         NUMBER := 1;
    c_cont_credito    NUMBER(6)  := 0;
    c_cont_cadastro   NUMBER(6)  := 0;
    c_total_liquido   NUMBER(18,2) := 0;
    c_total_geral     NUMBER(18,2) := 0;
    cs_cod_banco      CHAR(03) := '   ';
    c_cont_seq        NUMBER(6) := 0;
    c_erro_log        CHAR(02) := '00';
    c_num_nsa          NUMBER(8) := 0;
    c_cont_tot        NUMBER(8) := 0;
    c_definitivo      VARCHAR2(01);
    c_seq_conv        NUMBER(02):=0;
    c_count_seg_a     NUMBER(8):=0;

    /*----------------Header Arquivo---------------------------------*/
    HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
    HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
    HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
    HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
    HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
    HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
    HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
    HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
    HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
    HR_Digito          CHAR(01) := 'X';                     -- DV
    HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
    HR_Modalidade       VARCHAR2(02) := '00';
    HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
    HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
    HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
    HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
    HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
    HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
    HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
    HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
    HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
    HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
    HR_NRLayout        CHAR(03) := '082';                   -- Fixo
    HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
    HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
    HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
    HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
    HR_Brancos6        VARCHAR2(7) := ' ';

    /*----------------Header Lote------------------------------------*/
    HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
    HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
    HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
    HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
    HL_TipoServico       CHAR(02) := '  ';
    HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
    HL_VersaoLote        CHAR(03) := '043';
    HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
    HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
    HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
    HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
    HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
    HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
    HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
    HL_Digito            CHAR(01) := 'X';          -- DV
    HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
    HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
    HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
    HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
    HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
    HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
    HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
    HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
    HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
    HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
    HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
    HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
    HL_UF                CHAR(02) := 'SP';            -- UF
    HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
    HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
    HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

    /*----------------Detalhe Registro 3 Segmento A--------------------*/
    DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
    DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
    DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
    DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
    DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
    DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
    DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

    DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
    DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
    DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
    DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

    -- Campos utilizados somente quando pagto for credido em conta corrente
    DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
    DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
    ------------------------------------------------------------------------

    DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
    DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
    DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
    DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
    DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
    DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
    DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
    DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
    DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
    DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
    DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
    DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
    DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
    DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
    DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
    DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
    DR_Brancos1          CHAR(12) := ' ';
    DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     CHAR(10) := ' ';

    /*----------------Detalhe Registro 3 Segmento B---------------------------*/
    DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
    DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
    DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
    DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
    DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          VARCHAR2(03) := ' ';
    DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
    DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
    DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
    DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
    DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
    DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
    DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
    DRB_UF                VARCHAR2(02) := 'SP';      -- UF
    DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
    DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
    DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
    DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
    DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
    DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
    DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
    DRB_Brancos2          VARCHAR2(15) := ' ';

    /*----------------Trailler Lote--------------------------------------------*/
    TL_CodBanco           CHAR(03) := '000';
    TL_LoteServico        CHAR(04) := '0001';
    TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
    TL_Brancos1           CHAR(09) := ' ';
    TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
    TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
    TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
    TL_Brancos2           CHAR(171) := ' ';
    TL_CodOcorrencia      CHAR(10) := ' ';

    /*----------------Trailler do Arquivo--------------------------------------*/
    TR_CodBanco           CHAR(03) := '000';
    TR_LoteServico        CHAR(04) := '9999';
    TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
    TR_Brancos1           CHAR(09) := ' ';
    TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
    TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
    TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
    TR_Brancos2           CHAR(205) := ' ';
    vprocesso             CHAR(100) := ' ';

    CURSOR c1 IS
        SELECT
                RR.cod_beneficio,
                RR.cod_ide_cli_ben,
                RR.DT_PAGAMENTO,
                FF.Flg_Pa flg_pa,
                ff.Valor val_liquido,
                SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30) nom_pessoa_fisica,
                pf.num_cpf,
                rr.cod_identificador_pag_origem,
                RR.GLS_MOTIVO
        FROM    user_ipesp.TB_REENVIO_BANCARIO rr,
                user_ipesp.TB_ENVIO_ARQ_BANCARIO FF,
                USER_IPESP.TB_PESSOA_FISICA       PF
        WHERE   rr.cod_ins               = c_cod_ins
          and   ff.cod_ins               = RR.COD_INS
          AND   FF.COD_BENEFICIO         = RR.COD_BENEFICIO
          AND   FF.COD_IDE_CLI           = RR.COD_IDE_CLI_BEN
          AND   FF.COD_IDENTIFICADOR     = RR.COD_IDENTIFICADOR_PAG_ORIGEM
          AND   pf.cod_ins               = ff.cod_ins
          AND   pf.cod_ide_cli           = ff.cod_ide_cli
          --AND   RR.COD_BENEFICIO = 40223290
          AND   (RR.COD_IDENTIFICADOR IS NULL or RR.COD_IDENTIFICADOR = 0)
          AND   FF.SEGMENTO           = 'A'
          AND   RR.DT_PAGAMENTO       = V_DT_PAGAMENTO
        ORDER BY PF.NOM_PESSOA_FISICA, RR.DT_PAGAMENTO;


    c_ERROR_MSG       VARCHAR2(500);
    e_ERROR           EXCEPTION;
    vsqlstr           VARCHAR2(500);

BEGIN

    vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
    EXECUTE IMMEDIATE vsqlstr;

    IF I_DEFINITIVO IN ( '2', 'S', 's' )   THEN
       c_definitivo := 'S';
       c_OutputLocation  := 'ARQS_BANCARIOS';
    ELSE
       c_definitivo := 'N';
       --c_OutputLocation  := 'ARQS_BANCARIOS';
       c_OutputLocation := 'ARQS_REL_GERAIS';
    END IF;

    BEGIN

      cs_cod_banco         := '001';
      c_seq_conv           := 7;

      BEGIN
        SELECT CR.DT_PAGAMENTO
        INTO V_DT_PAGAMENTO
        FROM TB_CRONOGRAMA_REENVIO CR
        WHERE CR.FLG_STATUS = 'A';

        IF V_DT_PAGAMENTO < TRUNC(SYSDATE) THEN
           c_ERROR_MSG := 'A DATA DE PAGAMENTO INFORMADA É MENOR QUE A DATA ATUAL.';
           RAISE e_ERROR;
        END IF;

      EXCEPTION
        WHEN NO_DATA_FOUND THEN
         c_ERROR_MSG := 'NAO EXISTE DATA DE PAGAMENTO EM ABERTO PARA A DATA INFORMADA.';
         RAISE e_ERROR;
        WHEN TOO_MANY_ROWS THEN
         c_ERROR_MSG := 'EXISTE MAIS DE UMA DATA DE PAGAMENTO EM ABERTO PARA A DATA INFORMADA';
         RAISE e_ERROR;
        WHEN OTHERS THEN
         c_ERROR_MSG := c_ERROR_MSG;
         RAISE e_ERROR;
      END;

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins               => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento         => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef       => NULL,
                                        p_cod_tipo_beneficio    => NULL,
                                        p_cod_banco             => 1,
                                        p_num_tip_emissao       => NULL,
                                        p_cod_ide_cli           => NULL,
                                        p_dat_agenda_proc       => SYSDATE,
                                        p_flg_processamento     => 'A' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => NULL,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


      IF TO_NUMBER(c_erro_log) <> 0 THEN
        RAISE e_ERROR;
      END IF;

      vprocesso := 'Inicio...';

      /*-------------------------
        Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo           => I_PERPROCESSO,
                                        p_cod_tip_processo       => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio     => NULL,
                                        p_cod_banco              => 1,
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro               => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo              => null,
                                        p_cod_categoria          => null,
                                        p_cod_pccs               => null,
                                        p_cod_entidade           => NULL,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------

    c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(NULL,2,0), '99' ) || cs_cod_banco;
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';

    IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w' );
    END IF;

      FOR REG IN c1 LOOP

          BEGIN
            c_data_efetiva := REG.DT_PAGAMENTO;
            DR_CodBancoFav := NULL;
            DR_CodAgenciaFav := NULL;
            DR_Digito := NULL;
            DR_ContaCorrenteFav := NULL;
            DR_DVConta := NULL;
            DR_Modalidade := NULL;
            DR_COD_IDE_CLI_TERC  := NULL;


             SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                    SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                    SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                    ib.num_conta,
                    upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                    DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                    IB.COD_IDE_CLI_TERCEIRO
               INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade,
                    DR_COD_IDE_CLI_TERC
               FROM TB_INFO_BANC_BENEFICIO I, TB_INFORMACAO_BANCARIA IB
              WHERE I.COD_INS = IB.COD_INS
                AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                AND I.COD_BENEFICIO = REG.Cod_Beneficio
                AND I.COD_IDE_CLI = REG.cod_ide_cli_ben;
          EXCEPTION
             WHEN NO_DATA_FOUND THEN
                  BEGIN
                       SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                              ib.num_conta,
                              upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                              IB.COD_IDE_CLI_TERCEIRO
                         INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                              DR_DVConta, DR_Modalidade,
                              DR_COD_IDE_CLI_TERC
                         FROM TB_INFORMACAO_BANCARIA IB
                        WHERE IB.COD_INS = 1
                          AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                          and not exists
                          (
                                 select 1 from user_ipesp.tb_info_banc_beneficio d
                                  where d.cod_ins = 1
                                  and d.cod_ide_cli = ib.cod_ide_cli
                                  and d.cod_ide_inf_banc = ib.cod_ide_inf_banc
                          );
                   EXCEPTION
                          WHEN TOO_MANY_ROWS THEN
                               SELECT *
                                INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                                     DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                FROM
                                (

                                    SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                           SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                           SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                           ib.num_conta,
                                           upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                           DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                           IB.COD_IDE_CLI_TERCEIRO
                                      FROM TB_INFORMACAO_BANCARIA IB
                                     WHERE IB.COD_INS = 1
                                       AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                     ORDER BY IB.COD_BANCO
                                 ) WHERE ROWNUM = 1;
                          WHEN NO_DATA_FOUND THEN
                                begin
                                        SELECT *
                                            INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                                                 DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       IB.COD_IDE_CLI_TERCEIRO
                                                  FROM TB_INFORMACAO_BANCARIA IB
                                                 WHERE IB.COD_INS = 1
                                                   AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                                 ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;
                               exception
                                   when no_data_found then
                                       UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
                                       DR_CodBancoFav := '000';
                                       DR_CodAgenciaFav := '00000' ;
                                       DR_Digito := '0';
                                       DR_ContaCorrenteFav := '000000';
                                       DR_DVConta := '0';
                                       DR_Modalidade := '00';
                                       DR_COD_IDE_CLI_TERC := NULL;
                                   when others then
                                         null;
                               end;
                          when others then
                            null;
                   END;
              when others then
                            null;
          END;
          IF (DR_CodAgenciaFav = 0 OR DR_ContaCorrenteFav = 0) THEN
             UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
          END IF;


          BEGIN
             IF DR_CodBancoFav = 1 THEN
                  IF (DR_Modalidade IN (1,51)) THEN
                      i_conv  := 3;
                      i_pagto := vDetalhe(i_conv).count+1;      --3 conta poupança
                      vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := DR_Modalidade ;
                  else
                    i_conv  := 1;
                    i_pagto := vDetalhe(i_conv).count+1;      --1 CC
                    vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := '00';--REG.COD_TIPO_CONTA;
                  end if;
             ELSE
                i_conv  := 2;
                i_pagto := vDetalhe(i_conv).count+1;      --2 DOC/TED
                vDetalhe(i_conv)(i_pagto).cod_tipo_conta  := DR_Modalidade; -- '33';
             END IF;
          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             i_pagto := 1;
          END;

          vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.Cod_Beneficio;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.cod_ide_cli_ben;
          vDetalhe(i_conv)(i_pagto).cod_banco        := DR_CodBancoFav;
          vDetalhe(i_conv)(i_pagto).num_agencia      := DR_CodAgenciaFav;
          vDetalhe(i_conv)(i_pagto).num_dv_agencia   := DR_Digito;
          vDetalhe(i_conv)(i_pagto).num_conta        := DR_ContaCorrenteFav;
          vDetalhe(i_conv)(i_pagto).num_dv_conta     := DR_DVConta;
          -- agregado em 29/08/2013 -- nao estava pegando o tipo da conta
          vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := DR_Modalidade;
          vDetalhe(i_conv)(i_pagto).per_processo     := I_PERPROCESSO;
          vDetalhe(i_conv)(i_pagto).NOM_SERV         := reg.cod_identificador_pag_origem;
          vDetalhe(i_conv)(i_pagto).NOM_TUT          := reg.gls_motivo;


          DR_CodBancoFav := NULL;
          DR_CodAgenciaFav := NULL;
          DR_Digito := NULL;
          DR_ContaCorrenteFav := NULL;
          DR_DVConta := NULL;
          DR_Modalidade := NULL;
          DR_NomeBen := NULL;
          DR_CpfBen := NULL;


          IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                  INTO DR_CpfBen, DR_NomeBen
                  FROM USER_IPESP.TB_PESSOA_FISICA PF
                 WHERE PF.COD_INS = 1
                   AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
          ELSE
             DR_CpfBen := REG.NUM_CPF;
             DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
          END IF;

          vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;         -- CAMPO UTILIZADO PARA O CPF
          vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
          vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;
          vDetalhe(i_conv)(i_pagto).ind_processo     := REG.FLG_PA;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := DR_COD_IDE_CLI_TERC; -- CAMPO USADO PARA ARMAZENAR O IDE CLI DO TERCEIRO

          -------------------------------------------------------------------

    END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

    FOR j IN vDetalhe.first..vDetalhe.last
    LOOP

        BEGIN

          IF vDetalhe(j).count > 0 THEN

              <<GET_CONVENIO>>
              BEGIN

                c_num_nsa           := 0;

                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                SELECT   RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                         LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                         LPAD(NVL(CB.COD_CONV,0),9,0),
                         TRIM(CB.DES_CONVENIO)
                INTO   HR_NomBanco,
                       c_num_nsa,
                       HR_CodConvenio,
                       c_desc_conv
                FROM   TB_CONVENIO_BANCO CB,
                       TB_BANCO          TB
                WHERE CB.COD_BANCO        = 1
                AND   CB.TIPO_PAGTO       = j
                AND   CB.NUM_SEQ          = c_seq_conv
                AND   CB.COD_BANCO        = TB.COD_BANCO;

              EXCEPTION
                WHEN NO_DATA_FOUND THEN

                   BEGIN

                     SELECT LPAD(NVL(CB.COD_CONV,0),9,0), CB.DES_CONVENIO, CB.NUM_NSA
                     INTO   HR_CodConvenio, c_desc_conv, c_num_nsa
                     FROM TB_CONVENIO_BANCO CB
                     WHERE CB.COD_BANCO = 1
                     AND   CB.COD_INS   = c_cod_ins
                     AND   CB.TIPO_PAGTO= j
                     AND   CB.NUM_SEQ   = c_seq_conv;

                   EXCEPTION
                   WHEN OTHERS THEN
                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                     lOraErr     := TRUE;
                     RAISE e_ERROR;

                   END;

              WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;

              END GET_CONVENIO;

              --DALVES 06/07/2016 -- TASK31674
              --Alteração do campo Tipo de Serviço
              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                 HL_Lancamento  := '01';
                 HL_TipoServico := '30'; --Pagamento Salários
              ELSIF c_desc_conv = 'DOC' THEN
                 HL_Lancamento  := '03'; -- DOC
                 HL_TipoServico := '98'; -- Pagamento Diversos
              ELSE
                 HL_Lancamento  := '05'; -- POUPANCA
                 HL_TipoServico := '98';
              END IF;

          ELSE

              GOTO END_LOOP;

          END IF;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           GOTO END_LOOP;

        END;

        BEGIN

          c_count_seg_a := 0;
          c_cont_tot    := 0;
          c_cont_seq    := 0;
          v_Seq         := 0;
          vQtdeArq      := 0;
          c_total_geral := 0;
          HR_Sequencial := nvl(c_num_nsa,0);
          lFim          := FALSE;

          IF vDetalhe(j).count > 0 THEN

              FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                  c_count_seg_a := c_count_seg_a + 1;
                  c_cont_seq := c_cont_seq + 1;
                  c_cont_tot := c_cont_tot + 1;

                  <<PRINT_FILE>>
                  BEGIN

                      IF k = 1                             OR
                         mod( c_cont_seq, vLimQuebra ) = 0 THEN

                          IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                              IF c_cont_tot >= vDetalhe(j).last THEN
                                lFim := TRUE;
                              ELSE
                                lFim := FALSE;
                              END IF;

                              TL_LoteServico    := LPAD(v_lote,4,0);
                              TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                              TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                              TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                              UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                                  TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                  TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia ||CHR(13)   );

                              TR_QTDRegLote    := LPAD(v_lote,6,'0');
                              TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                              TR_QtdContas     := LPAD(1,6,0);

                              UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico  ||  TR_RegistroDet  ||
                                                                    TR_Brancos1    || TR_QTDRegLote   ||  TR_QTDRegArq    ||
                                                                    TR_QtdContas  || TR_Brancos2      || CHR(13));

                              UTL_FILE.FCLOSE( f_OutputCredito );

                          END IF;

                          c_cont_seq           := 1;
                          v_Seq                := NVL(v_Seq,0) + 1;
                          v_lote               := 1;
                          c_total_liquido      := 0;
                          vQtdeArq             := NVL(vQtdeArq,0) + 1;
                          HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                          c_OutputFileCredito_Crip := null;
                          c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';

                          c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(NULL,2,0), '99' ) || cs_cod_banco;
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( c_grupo_pagamento, '0' ), 2, '0' );

                          IF c_definitivo = 'S' THEN
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                          ELSE
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                          END IF;

                          IF I_NOM_ARQUIVO IS NULL THEN
                             I_NOM_ARQUIVO := c_OutputFileCredito;
                          ELSE
                             I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                          END IF;

                          BEGIN

                            IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                               f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                            END IF;

                          EXCEPTION
                            WHEN UTL_FILE.INVALID_PATH THEN
                                 c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_MODE THEN
                                 c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_OPERATION THEN
                                 c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN OTHERS THEN
                                 c_ERROR_MSG := SQLERRM;
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                          END;

                          -- Header de Arquivo
                          UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco        ||  HR_LoteServicoArq   ||  HR_RegistroHeader  ||
                                                                HR_Brancos1        ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                HR_CodConvenio     ||  HR_SiglaSistema     ||  HR_Brancos6        ||
                                                                HR_AgenciaManConta ||  HR_Digito           ||  HR_Zeros           ||
                                                                HR_Modalidade      ||  HR_ContaCorrente    ||  HR_DVConta         ||
                                                                HR_DVAgenciaConta  ||  HR_NomEmpresa       ||  HR_NomBanco        ||
                                                                HR_Brancos2        ||  HR_CodRemRet        ||  HR_DataGeracao     ||
                                                                HR_HoraGeracao     ||  HR_Sequencial       ||  HR_NRLayout        ||
                                                                HR_DenGravacao     ||  HR_Brancos3         ||  HR_Brancos4        ||
                                                                HR_Brancos5        || CHR(13));
                          -- Header de Lote
                          UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                             HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                             HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                             HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                             HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                             HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                             HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                             HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                             HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                             HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   ||CHR(13)       );

                      END IF;

                      DR_LoteServico       := LPAD(v_lote, 4, 0);
                      DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                      DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                      DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                      DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                      DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                      select sq_envio_banco.nextval
                        into DR_NumeroDoc
                        from dual;

                      DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');
                      DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                      DR_DataLancamento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                      DR_Zeros1             := Null;
                      DR_Modalidade         := Null;


                      IF DR_CodBancoFav = 1 THEN
                        /*---Calculo do DV da Agencia-------------------------------------------*/
                          SP_CALCULA_DV_bb( 1,
                                         LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                         Null,
                                         vDvAg );
                        /*----------------------------------------------------------------------*/
                         DR_Digito             := vDvAg;
                         DR_CamaraCentra       := '000';

                         DR_ContaCorrenteFav  := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                         if (vDetalhe(j)(k).COD_TIPO_CONTA IN (1,51)) THEN
                             vTipo                 := 3; -- conta poupanca
                         else
                             vTipo                 := 1; -- cc
                         end if;

                      ELSE

                         DR_CamaraCentra       := '018';
                         DR_Digito             := ' ';

                         IF (DR_CodBancoFav = 33) THEN
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                         elsif (DR_CodBancoFav = 104) then
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                         ELSE
                            DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                         END IF;

                         vTipo                 := 2;

                      END IF;
                      --
                      vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia ;

                      -- Imprime Detalhe
                      UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                          DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                          DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                          DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                          DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                          DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                          DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                          DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                          DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                          DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia     || CHR(13));


                      -- Incrementa a tb_envio_arq_bancario
                      INSERT INTO TB_ENVIO_ARQ_BANCARIO
                      (
                                   COD_INS,                COD_IDE_CLI,                REGISTRO,
                                      LOTE,                   CONVENIO,                SEGMENTO,
                                   NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                DT_GERACAO,                   DT_PAGTO,                NOME,
                                     VALOR,                    NUM_CPF,                ARQUIVO,
                                     LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                               COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                  DV_CONTA,                 TIPO_CONTA,                PER_PROCESSO,
                              TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                    FLG_PA,                    TIP_MOV,                COD_BENEFICIO,
                              COD_IDENTIFICADOR,       OBS_ARQ_BANCARIO,               FLG_TERCEIRO,
                              COD_IDE_CLI_TERCEIRO
                      )
                       VALUES
                       (
                             c_cod_ins ,  vDetalhe(j)(k).cod_ide_cli,                      '3',
                             DR_LoteServico,  HR_CodConvenio,
                             DR_CodSegRegDetalhe, HR_Sequencial,
                             vTipo, DR_SeqRegistroLote,
                             to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                             c_data_efetiva, DR_NomeFavorecido,
                             ROUND(vDetalhe(j)(k).val_liquido,2),
                             null,
                             CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                             vLinha,               c_definitivo,           DR_CodBancoFav,
                             DR_CodAgenciaFav,     DR_Digito, vDetalhe(j)(k).num_conta,
                             DR_DVConta,           LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,0),1,2),2,'0'),
                             vDetalhe(j)(k).per_processo,
                             I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                             vDetalhe(j)(k).ind_processo, '1', vDetalhe(j)(k).cod_beneficio,
                             DR_NumeroDoc, vDetalhe(j)(k).nom_tut,
                             CASE WHEN vDetalhe(j)(k).COD_IDE_CLI_BEN IS NOT NULL THEN 'S' ELSE 'N' END,
                             vDetalhe(j)(k).COD_IDE_CLI_BEN

                       );

                       c_cont_seq := c_cont_seq + 1;
                       DRB_LoteServico       := LPAD(v_lote,4,0);                     -- Lote de Servico
                       DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                       DRB_DataVencimento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                       DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');               -- sequencial do registro no lote
                       DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);

                       --IF DR_CodBancoFav != 1 THEN

                         -- SEGMENTO B
                         UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          ||  DRB_LoteServico        ||  DRB_RegistroDet      ||
                                                             DRB_SeqRegistroLote   ||  DRB_CodSegRegDetalhe   ||  DRB_Brancos1        ||
                                                             DRB_TipoInscricao     ||  DRB_NumInscricao       ||  DRB_Endereco        ||
                                                             DRB_Numero            ||  DRB_Complemento        ||  DRB_Bairro          ||
                                                             DRB_NomeCidade        ||  DRB_CEP                ||  DRB_UF              ||
                                                             DRB_DataVencimento    ||  DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                                             DRB_ValorDesconto     ||  DRB_ValorMora          ||  DRB_ValorMulta      ||
                                                             DRB_CodigoFavorecido  ||  DRB_Brancos2           ||  CHR(13));

                         vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                   DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                   DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                   DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                   DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                   DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                   DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                   DRB_CodigoFavorecido  || DRB_Brancos2     ;


                          INSERT INTO TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                             COD_IDENTIFICADOR,            OBS_ARQ_BANCARIO,            FLG_TERCEIRO,
                             COD_IDE_CLI_TERCEIRO
                          )
                          VALUES
                          (
                                 1, vDetalhe(j)(k).cod_ide_cli,                      '3',
                                 DRB_LoteServico,             HR_CodConvenio,     DRB_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,      DRB_SeqRegistroLote,
                                 to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                 c_data_efetiva,                     NULL,
                                 0,
                                 null,
                                 CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                 vLinha,               c_definitivo,           DR_CodBancoFav,
                                 DR_CodAgenciaFav,               DR_Digito, vDetalhe(j)(k).num_conta,
                                 DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,0),1,2),2,'0'),
                                 vDetalhe(j)(k).per_processo,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                 vDetalhe(j)(k).ind_processo, '1',  vDetalhe(j)(k).cod_beneficio,
                                 DR_NumeroDoc, vDetalhe(j)(k).nom_tut,
                                 CASE WHEN vDetalhe(j)(k).COD_IDE_CLI_BEN IS NOT NULL THEN 'S' ELSE 'N' END,
                                 vDetalhe(j)(k).COD_IDE_CLI_BEN
                          );

                      --END IF;

                  EXCEPTION
                  WHEN OTHERS THEN
                       c_ERROR_MSG := SQLERRM;
                       I_MSG_ERRO  := c_ERROR_MSG;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END PRINT_FILE;

                  UTL_FILE.FFLUSH(f_OutputCredito);

                  vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                  c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                  c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                  vcontador := vcontador + 1;
                  vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                  IF c_definitivo = 'S' THEN
                      begin
                            UPDATE USER_IPESP.TB_REENVIO_BANCARIO EA
                               SET EA.COD_IDENTIFICADOR = DR_NumeroDoc,
                                   EA.DT_GERACAO = TRUNC(SYSDATE),
                                   EA.FLG_STATUS = 1,
                                   EA.DAT_ULT_ATU = TRUNC(SYSDATE),
                                   EA.NOM_USU_ULT_ATU = USER
                             WHERE EA.cod_ins         = c_cod_ins
                               and EA.cod_beneficio   = vDetalhe(j)(k).cod_beneficio
                               AND EA.cod_ide_cli_ben = vDetalhe(j)(k).cod_ide_cli
                               AND (EA.COD_IDENTIFICADOR IS NULL or EA.COD_IDENTIFICADOR = 0)
                               and ea.cod_identificador_pag_origem = trim(vDetalhe(j)(k).NOM_SERV) -- campo usado para armazenar o código identificado de origem
                               AND EA.DT_PAGAMENTO   = c_data_efetiva;
                        exception
                            when others then
                              c_ERROR_MSG :='ERRO AO ATUALIZAR STATUS DE REENVIO.' || SQLERRM;
                              RAISE e_ERROR;
                      end;
                  END IF;

              END LOOP;

              IF not lFim THEN

                TL_LoteServico    := LPAD(v_lote,4,0);
                TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                    TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                    TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                TR_QTDRegLote    := LPAD(v_lote,6,'0');
                TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                TR_QtdContas     := LPAD(1,6,0);

                UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                      TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                      TR_QtdContas  || TR_Brancos2  ||CHR(13) );
                UTL_FILE.FCLOSE( f_OutputCredito );
              END IF;

              IF c_definitivo = 'S' THEN

                /*------------------------------------------
                  Atualiza os controles de envio para banco
                ------------------------------------------*/
                 c_num_nsa := vQtdeArq + c_num_nsa;
                 UPDATE TB_CONVENIO_BANCO
                    SET NUM_NSA   = c_num_nsa,
                    DAT_ULT_ALT = sysdate,
                    NOM_USU_ULT_ALT = USER
                  WHERE COD_INS   = c_cod_ins
                    AND COD_BANCO = 1
                    AND COD_CONV  = TRUNC( HR_CodConvenio )
                    AND NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ));

                    IF sql%rowcount = 0 THEN
                       ROLLBACK;
                       c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                       lOraErr := TRUE;
                    END IF;
              END IF;
          END IF;


        EXCEPTION
         WHEN OTHERS THEN
          ROLLBACK;
          c_ERROR_MSG :=SQLERRM;
          RAISE e_ERROR;
          GOTO END_LOOP;

        END;

        <<GERA_RESUMO>>
        BEGIN

            IF (c_definitivo = 'S') THEN

              SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                        I_TIPPROCESSO,
                                        I_SEQ_PAGAMENTO,
                                        LPAD( NVL( c_grupo_pagamento, '00' ), 2, '0' ),
                                        c_data_efetiva,
                                        c_OutputFileCredito,
                                        c_OutputFileCredito_Crip,
                                        HR_DataGeracao,
                                        HR_HoraGeracao,
                                        c_total_liquido,
                                        c_count_seg_a,
                                        'N');

              c_OutputFileCredito := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
              SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

              -- CHAMA A GERACAO DO RELATÓRIO
              USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(V_DT_PAGAMENTO,'YYYYMMDD'), V_DT_PAGAMENTO, 'S','A');
              USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_REENVIO_BANCARIO_BEN('REL_REENVIO_BANCARIO_'||TO_CHAR(V_DT_PAGAMENTO,'YYYYMMDD'),V_DT_PAGAMENTO, c_ERROR_MSG);


             END IF;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;

        END;

        <<END_LOOP>>
        IF lOraErr THEN
           I_NOM_ARQUIVO := NULL;
           RAISE e_ERROR;
        END IF;

        COMMIT;

    END LOOP;

    UTL_FILE.FCLOSE_ALL;

  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo           => I_PERPROCESSO,
                                        p_cod_tip_processo       => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio     => NULL,
                                        p_cod_banco              => 1,
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => NULL,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log


        FOR REG IN (
                  SELECT *
                    FROM USER_IPESP.TB_REENVIO_BANCARIO EA
                   WHERE EA.cod_ins         = c_cod_ins
                     AND EA.COD_IDENTIFICADOR IS NOT NULL
                     AND EA.DT_PAGAMENTO   = c_data_efetiva
                   )
        LOOP
            BEGIN
                UPDATE USER_IPESP.TB_ENVIO_ARQ_BANCARIO E
                   SET E.COD_IDENTIFICADOR_REENVIO = REG.COD_IDENTIFICADOR
                 WHERE E.COD_INS = c_cod_ins
                   AND E.FLG_DEFINITIVO = 'S'
                   AND E.COD_BENEFICIO = REG.COD_BENEFICIO
                   AND E.COD_IDE_CLI = REG.COD_IDE_CLI_BEN
                   AND E.COD_IDENTIFICADOR = REG.COD_IDENTIFICADOR_PAG_ORIGEM
                   AND E.DT_PAGTO = REG.DT_PAGAMENTO_ORIGEM;

            EXCEPTION
                WHEN OTHERS THEN
                  ROLLBACK;
                  NULL;
            END;

            COMMIT;
       END LOOP;


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN
    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/
      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo           => I_PERPROCESSO,
                                          p_cod_tip_processo       => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => NULL,
                                          p_cod_tipo_beneficio     => NULL,
                                          p_cod_banco              => 1,
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => NULL,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log

 
  END GERA_ARQ_CNAB_REENVIO;


  PROCEDURE GERA_ARQ_CNAB_AUXFUN (I_COD_INS           IN TB_FOLHA.COD_INS%TYPE,
                                  I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
                                  I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                                  I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                                  I_GRP_PAGTO         IN NUMBER,
                                  I_DEFINITIVO        IN VARCHAR2,
                                  I_NOM_ARQUIVO       OUT VARCHAR2,
                                  I_MSG_ERRO          OUT VARCHAR2) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;
v_grp_pagto number := 59; --

type TConvenio is record
(
   dat_efetiva          date,
   grp_pago             number,
   seq_convenio         number(2),
   tipo_beneficio       varchar2(6),
   nome_beneficio       varchar2(60)
);

type TConvIdx   is table of TConvenio
                index by binary_integer;

type TypeDetLst is table of tb_folha%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;

aConvGrp              TConvIdx;

i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 100000;        -- Define a limite de quebra de arquivo para um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
i_cont                number:=0;
v_cod_beneficio       number;
v_cod_ide_cli         varchar2(20);
v_valor               number;

/*--------------Variaveis Auxiliares para calculo de DV--------*/
vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;
c_OutputFileCredito_Crip   VARCHAR2(100) := NULL;
Qtd_Arq_Criptografado  NUMBER;

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := 1;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(05) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa          NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

c_cod_tipo_benef    TB_TIPOS_BENEFICIOS.COD_TIPO_BENEFICIO%TYPE;
c_des_nom_benef     TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE;


/*----------------Header Arquivo---------------------------------*/
HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '06802';                 -- Numero Agencia
HR_Digito          CHAR(01) := '0';                     -- DV
HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
HR_Modalidade       VARCHAR2(02) := '00';
HR_ContaCorrente   VARCHAR2(06) := '100185';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := 'X';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(7) := ' ';

/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '  ';
HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '043';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
HL_AgenciaManConta   VARCHAR2(05) := '06802';  -- Numero Agencia
HL_Digito            CHAR(01) := '0';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100185'; -- Conta Corrente
HL_DVConta           CHAR(01) := 'X';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';
------------------------------------------------------------------------
vprocesso             CHAR(100) := ' ';

CURSOR c1 IS
    SELECT  FF.COD_ADM_TRA AS COD_BENEFICIO,
            nvl(ff.cod_ide_cli_solicitante,ff.cod_ide_pj_solicitante) as cod_ide_cli,
            TRUNC(nvl(ff.val_liquido,ff.valor_nota_fiscal),2) val_liquido,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.cod_banco)),3,'0'),1,3) cod_banco,
            SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ff.num_agencia)),5,'0'),1,5) num_agencia,
            SUBSTR(NVL(ff.num_dv_agencia,'0'),1,1) num_dv_agencia,
            ff.num_conta,
            SUBSTR(NVL(ff.num_dv_conta,'0'),1,1) num_dv_conta,
            DECODE(ASCII(ff.COD_TIPO_CONTA),0,'00',DECODE(ff.COD_TIPO_CONTA,NULL,'00',ff.COD_TIPO_CONTA)) cod_tipo_conta,
            CASE WHEN FF.COD_IDE_CLI_SOLICITANTE IS NOT NULL THEN
                      ( SELECT SUBSTR(RPAD(UPPER(pf.nom_pessoa_fisica),30,' '),1,30)
                          FROM USER_IPESP.TB_PESSOA_FISICA PF
                         WHERE PF.COD_INS = FF.COD_INS
                           AND PF.COD_IDE_CLI = FF.Cod_Ide_Cli_Solicitante
                      )
                 WHEN FF.COD_IDE_CLI_SOLICITANTE IS NULL THEN
                      ( SELECT SUBSTR(RPAD(UPPER(pJ.Razao_Social),30,' '),1,30)
                          FROM USER_IPESP.TB_PESSOA_JURIDICA PJ
                         WHERE PJ.COD_INS = FF.COD_INS
                           AND PJ.COD_PESSOA_JURIDICA = FF.COD_IDE_PJ_SOLICITANTE
                      )
                  ELSE NULL
            END nom_pessoa_fisica,

            CASE WHEN FF.COD_IDE_CLI_SOLICITANTE IS NOT NULL THEN
                      ( SELECT pf.num_cpf
                          FROM USER_IPESP.TB_PESSOA_FISICA PF
                         WHERE PF.COD_INS = FF.COD_INS
                           AND PF.COD_IDE_CLI = FF.Cod_Ide_Cli_Solicitante
                      )
                 WHEN FF.COD_IDE_CLI_SOLICITANTE IS NULL THEN
                      ( SELECT pj.num_cnpj
                          FROM USER_IPESP.TB_PESSOA_JURIDICA PJ
                         WHERE PJ.COD_INS = FF.COD_INS
                           AND PJ.COD_PESSOA_JURIDICA = FF.COD_IDE_PJ_SOLICITANTE
                      )
                  ELSE NULL
            END num_cpf_CNPJ,
            (
              SELECT GP.COD_SEQ_CONVENIO
                FROM TB_GRUPO_PAGAMENTO GP
               WHERE GP.NUM_GRP_PAG = v_grp_pagto
            ) as cod_seq_convenio

     FROM   user_ipesp.TB_HIST_PAG_AUXILIO_FUNERAL FF
    WHERE   ff.cod_ins               = c_cod_ins
      AND   ff.flg_pago = 'N';


c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' ) THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := '001';

    --
    aConvGrp.delete;
    i_cont := 0;

    FOR X1 IN (         SELECT  DISTINCT CP.DAT_PAG_EFETIVA,
                                DECODE( v_grp_pagto, NULL, 99, CP.NUM_GRP ) num_grp,
                                GP.COD_SEQ_CONVENIO,
                                TB.COD_TIPO_BENEFICIO,
                                TB.NOM_TIPO_BENEFICIO
                        FROM   TB_CRONOGRAMA_PAG   CP,
                               TB_GRUPO_PAGAMENTO  GP,
                               TB_TIPOS_BENEFICIOS TB
                        WHERE   CP.NUM_GRP            = NVL(v_grp_pagto,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
                        AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                        AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                        AND     CP.PER_PROCESSO       = I_PERPROCESSO
                        AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                        AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                        ORDER BY 1,2,3
    )
    LOOP
         i_cont := i_cont + 1;

         aConvGrp(i_cont).dat_efetiva    := x1.dat_pag_efetiva;
         aConvGrp(i_cont).grp_pago       := x1.num_grp;
         aConvGrp(i_cont).seq_convenio   := x1.cod_seq_convenio;
         aConvGrp(i_cont).tipo_beneficio := x1.cod_tipo_beneficio;
         aConvGrp(i_cont).nome_beneficio := x1.nom_tipo_beneficio;
    END LOOP;

    IF aConvGrp.count = 0 THEN
       c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
       RAISE e_ERROR;
    END IF;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo           => I_PERPROCESSO,
                                        p_cod_tip_processo       => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,   MRS
                                        p_cod_tipo_beneficio     =>  NULL,             -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => '001',
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro               => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo              => null,
                                        p_cod_categoria          => null,
                                        p_cod_pccs               => null,
                                        p_cod_entidade           => NULL,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,             -- c_des_nom_benef,  MRS
                                        p_cod_tipo_beneficio    => NULL,              -- c_cod_tipo_benef, MRS
                                        p_cod_banco              => '001',
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => NULL,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*MRS-Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD( HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*MRS-Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------
    FOR f IN aConvGrp.first..aConvGrp.last LOOP

        vDetalhe.delete;

        FOR REG IN C1  LOOP

            IF REG.COD_SEQ_CONVENIO = aConvGrp(f).seq_convenio THEN

                -- Inicializacao das tables e controle de exceptions
                BEGIN
                     IF REG.COD_BANCO = '001' THEN
                        if (lpad(REG.COD_TIPO_CONTA,2,'0') in ('01','51')) then
                            i_conv  := 3;
                            i_pagto := vDetalhe(i_conv).count+1;      --3 conta poupança
                            vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA ;
                        else
                            i_conv  := 1;
                            i_pagto := vDetalhe(i_conv).count+1;      --1 CC
                            vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := '00';
                        end if;
                     ELSE
                        i_conv  := 2;
                        i_pagto := vDetalhe(i_conv).count+1;      --2 DOC/TED
                        vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := REG.COD_TIPO_CONTA;
                     END IF;
                EXCEPTION
                WHEN NO_DATA_FOUND THEN
                   i_pagto := 1;

                END;

                -- Atrinbuicao dos valores a table
                vDetalhe(i_conv)(i_pagto).COD_BENEFICIO    := REG.COD_BENEFICIO;
                vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.COD_IDE_CLI;
                vDetalhe(i_conv)(i_pagto).cod_banco        := REG.COD_BANCO;
                vDetalhe(i_conv)(i_pagto).num_agencia      := REG.NUM_AGENCIA;
                vDetalhe(i_conv)(i_pagto).num_dv_agencia   := REG.NUM_DV_AGENCIA;
                vDetalhe(i_conv)(i_pagto).num_conta        := REG.NUM_CONTA;
                vDetalhe(i_conv)(i_pagto).num_dv_conta     := REG.NUM_DV_CONTA;
                vDetalhe(i_conv)(i_pagto).COD_IDE_CLI_BEN  := REG.NUM_CPF_CNPJ;             -- CAMPO UTILIZADO PARA O CPF
                vDetalhe(i_conv)(i_pagto).nom_ben          := REG.NOM_PESSOA_FISICA;
                vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;

                -------------------------------------------------------------------

            END IF;

        END LOOP;

        IF vDetalhe.count = 0 THEN
           c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
           RAISE e_ERROR;
        END IF;

        FOR j IN vDetalhe.first..vDetalhe.last
        LOOP

            BEGIN

              IF vDetalhe(j).count > 0 THEN

                  <<GET_CONVENIO>>
                  BEGIN

                    c_num_nsa           := 0;

                    -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                    SELECT   DISTINCT
                             RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                             LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                             LPAD(NVL(CB.COD_CONV,0),9,0),
                             TRIM(CB.DES_CONVENIO)
                    INTO   HR_NomBanco,
                           c_num_nsa,
                           HR_CodConvenio,
                           c_desc_conv
                    FROM   TB_CONVENIO_BANCO CB,
                           TB_BANCO          TB,
                           TB_ENVIO_BANCO    EB
                    WHERE CB.COD_BANCO        = NVL(NULL,001)
                    AND   CB.COD_BANCO        = TB.COD_BANCO
                    AND   EB.COD_BANCO        = CB.COD_BANCO
                    AND   EB.COD_CONV         = CB.COD_CONV
                    AND   EB.PER_PROCESSO     = I_PERPROCESSO
                    AND   EB.COD_ENTIDADE     = NVL(NULL,999)             -- EB.COD_ENTIDADE)
                    AND   EB.NUM_GRP          = aConvGrp(f).grp_pago      -- DECODE( aConvGrp(f).grp_pago, 99, EB.NUM_GRP, aConvGrp(f).grp_pago )
                    AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                    AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                    AND   CB.NUM_SEQ          = aConvGrp(f).seq_convenio  -- c_seq_conv MRS
                    AND   CB.TIPO_PAGTO       = j;

                  EXCEPTION
                  WHEN NO_DATA_FOUND THEN

                       SELECT RPAD(SUBSTR(BC.DES_BANCO,1,30),30,' '), LPAD(NVL(CB.COD_CONV,0),9,0), CB.NUM_NSA, TRIM(CB.DES_CONVENIO)
                       INTO   HR_NomBanco, HR_CodConvenio, c_num_nsa, c_desc_conv
                       FROM TB_CONVENIO_BANCO CB,
                            TB_BANCO          BC
                       WHERE CB.COD_BANCO  = NVL(NULL,001)
                       AND   CB.COD_INS    = c_cod_ins
                       AND   CB.NUM_SEQ    = aConvGrp(f).seq_convenio                    -- c_seq_conv
                       AND   CB.TIPO_PAGTO = j
                       AND   CB.COD_BANCO  = BC.COD_BANCO;

                       FOR K1 IN (  SELECT GP.NUM_GRP_PAG
                                    FROM   TB_CRONOGRAMA_PAG   CP,
                                           TB_GRUPO_PAGAMENTO  GP,
                                           TB_TIPOS_BENEFICIOS TB
                                    WHERE   CP.NUM_GRP            = DECODE( aConvGrp(f).grp_pago, 99, CP.NUM_GRP, aConvGrp(f).grp_pago )
                                    AND     CP.NUM_GRP            = GP.NUM_GRP_PAG
                                    AND     CP.COD_TIP_PROCESSO   = I_TIPPROCESSO
                                    AND     CP.PER_PROCESSO       = I_PERPROCESSO
                                    AND     CP.SEQ_PAGAMENTO      = I_SEQ_PAGAMENTO
                                    AND     GP.COD_TIPO_BENEFICIO = TB.COD_TIPO_BENEFICIO
                                    AND     GP.COD_SEQ_CONVENIO   = aConvGrp(f).seq_convenio
                                    ORDER BY 1                                                         ) LOOP


                             BEGIN

                               -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                               INSERT INTO TB_ENVIO_BANCO EB
                               (
                                 COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                                 SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                                 NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                                 NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                                 COD_CONV
                               )
                               VALUES
                               (
                                 c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                                 I_SEQ_PAGAMENTO          , NVL(NULL,999)  , NVL( NULL, 001 )    ,
                                 0                        , SYSDATE                  , SYSDATE                ,
                                 USER                     , 'GERA_ARQ_CNAB'          , K1.NUM_GRP_PAG         ,
                                 HR_CodConvenio
                               );

                               COMMIT;

                             EXCEPTION
                             WHEN OTHERS THEN
                               c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                               lOraErr     := TRUE;
                               RAISE e_ERROR;

                             END;

                       END LOOP;

                  WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END GET_CONVENIO;

                  --DALVES 06/07/2016 -- TASK31674
                  --Alteração do campo Tipo de Serviço
                  IF  c_desc_conv = 'CONTA CORRENTE' THEN
                     HL_Lancamento  := '01';
                     HL_TipoServico := '30'; --Pagamento Salários
                  ELSIF c_desc_conv = 'DOC' THEN
                     HL_Lancamento  := '03'; -- DOC
                     HL_TipoServico := '98'; -- Pagamento Diversos
                  ELSE
                     HL_Lancamento  := '05'; -- POUPANCA
                     HL_TipoServico := '98';
                  END IF;


              ELSE

                  GOTO END_LOOP;

              END IF;

            EXCEPTION
            WHEN NO_DATA_FOUND THEN
               GOTO END_LOOP;

            END;

            BEGIN

              c_cont_tot    := 0;
              c_cont_seq    := 0;
              c_count_seg_a := 0;
              v_Seq         := 0;
              vQtdeArq      := 0;
              c_total_geral := 0;
              HR_Sequencial := nvl(c_num_nsa,0);
              lFim          := FALSE;

              IF vDetalhe(j).count > 0 THEN

                  FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                      c_count_seg_a := c_count_seg_a + 1;
                      c_cont_seq := c_cont_seq + 1;
                      c_cont_tot := c_cont_tot + 1;

                      <<PRINT_FILE>>
                      BEGIN

                          IF k = 1                             OR
                             mod( c_cont_seq, vLimQuebra ) = 0 THEN

                              IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                                  IF c_cont_tot >= vDetalhe(j).last THEN
                                    lFim := TRUE;
                                  ELSE
                                    lFim := FALSE;
                                  END IF;

                                  TL_LoteServico     := LPAD(v_lote,4,0);
                                  TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                                  TL_VALDebCred      := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                                  TL_ValQtdMoedas    := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                                  UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico   ||TL_RegistroDet   ||
                                                                      TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                      TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || chr(13)   );

                                  TR_QTDRegLote    := LPAD(v_lote,6,'0');
                                  TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                                  TR_QtdContas     := LPAD(1,6,0);

                                  UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                                        TR_Brancos1    || TR_QTDRegLote     ||  TR_QTDRegArq    ||
                                                                        TR_QtdContas   || TR_Brancos2       || chr(13));

                                  UTL_FILE.FCLOSE( f_OutputCredito );

                              END IF;

                              c_cont_seq           := 1;
                              v_Seq                := NVL(v_Seq,0) + 1;
                              v_lote               := 1;
                              c_total_liquido      := 0;
                              vQtdeArq             := NVL(vQtdeArq,0) + 1;
                              HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                              c_OutputFileCredito_Crip := null;
                              c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';

                              c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(NULL,2,0), '99' ) || cs_cod_banco;
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                              c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( aConvGrp(f).grp_pago, '0' ), 2, '0' );


                              IF c_definitivo = 'S' THEN
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                              ELSE
                                c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                              END IF;

                              IF I_NOM_ARQUIVO IS NULL THEN
                                 I_NOM_ARQUIVO := c_OutputFileCredito;
                              ELSE
                                 I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                              END IF;

                              BEGIN

                                IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                                   f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                                END IF;

                              EXCEPTION
                                WHEN UTL_FILE.INVALID_PATH THEN
                                     c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_MODE THEN
                                     c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN UTL_FILE.INVALID_OPERATION THEN
                                     c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                                WHEN OTHERS THEN
                                     c_ERROR_MSG := SQLERRM;
                                     lOraErr     := TRUE;
                                     RAISE e_ERROR;
                              END;

                              -- Header de Arquivo
                              UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                    HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                    HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                    HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                    HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                    HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                    HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                    HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                    HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                    HR_Brancos5         || chr(13));
                              -- Header de Lote
                              UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                                 HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                                 HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                                 HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                                 HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                                 HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                                 HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                                 HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                                 HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                                 HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   || chr(13)       );

                          END IF;

                          DR_LoteServico       := LPAD(v_lote, 4, 0);
                          DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                          DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                          DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                          DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                          DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                          select sq_envio_banco.nextval into DR_NumeroDoc from dual;

                          DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');
                          DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                          DR_DataLancamento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );        -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                          DR_Zeros1             := Null;
                          DR_Modalidade         := Null;


                          IF DR_CodBancoFav = '001' THEN
                            /*---Calculo do DV da Agencia-------------------------------------------*/
                              SP_CALCULA_DV_BB( 1,
                                             LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                             Null,
                                             vDvAg );
                            /*----------------------------------------------------------------------*/
                             DR_Digito             := vDvAg;--NVL(TO_NUMBER(vDvAg),0);
                             DR_CamaraCentra       := '000';

                             DR_ContaCorrenteFav   := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                             if (LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') in ('01','51') ) then
                                 vTipo                 := 3; -- conta poupanca
                             else
                                 vTipo                 := 1; -- cc
                             end if;

                          ELSE

                             DR_CamaraCentra       := '018';
                             DR_Digito             := ' ';

                             IF (DR_CodBancoFav = '033') THEN
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                             elsif (DR_CodBancoFav = '104') then
                                DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0')|| substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                             ELSE
                                DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                             END IF;

                             vTipo                 := 2;

                          END IF;
                          --
                          vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                    DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                    DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                    DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                    DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                    DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                    DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                    DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                    DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                    DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia;
                          --

                          -- Imprime Detalhe
                          UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                              DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                              DR_CodInstrucao      ||   DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                              DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                              DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                              DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                              DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                              DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                              DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                              DR_Brancos1          ||   DR_AvisoFavorecido  ||  DR_CodOcorrencia    || chr(13));

                          -- Incrementa a tb_envio_arq_bancario
                          INSERT INTO TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                  cod_identificador,         COD_BENEFICIO
                          )
                          VALUES
                          (
                                 1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                          aConvGrp(f).dat_efetiva,    DR_NomeFavorecido,
                                       ROUND(vDetalhe(j)(k).val_liquido,2),
                                                            vDetalhe(j)(k).COD_IDE_CLI_BEN,
                                 CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                        vLinha,               c_definitivo,           DR_CodBancoFav,
                              DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                    DR_DVConta,              DR_Modalidade,            I_PERPROCESSO,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                 DR_NumeroDoc, vDetalhe(j)(k).COD_BENEFICIO
                          );


                          c_cont_seq := c_cont_seq + 1;
                          DRB_LoteServico       := LPAD(v_lote,4,0);                                             -- Lote de Servico
                          DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                          DRB_DataVencimento    := TO_CHAR( aConvGrp(f).dat_efetiva, 'DDMMYYYY' );                  -- TO_CHAR(c_data_efetiva,'DDMMYYYY');
                          DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');                                       -- sequencial do registro no lote
                          DRB_NumInscricao      := LPAD(trim(vDetalhe(j)(k).COD_IDE_CLI_BEN),14,0);

                          --IF DR_CodBancoFav != '001' THEN
                             -- SEGMENTO B
                             UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico        ||  DRB_RegistroDet      ||
                                                                 DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                                 DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                                                 DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                                 DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                                                 DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                                                 DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                                                 DRB_CodigoFavorecido  || DRB_Brancos2          || chr(13));

                             vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                       DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                       DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                       DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                       DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                       DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                       DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                       DRB_CodigoFavorecido  || DRB_Brancos2;

                             --Incrementa a tb_envio_arq_bancario
                              INSERT INTO TB_ENVIO_ARQ_BANCARIO
                              (
                                           COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                              LOTE,                   CONVENIO,                 SEGMENTO,
                                           NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                        DT_GERACAO,                   DT_PAGTO,                     NOME,
                                             VALOR,                    NUM_CPF,                  ARQUIVO,
                                             LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                       COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                          DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                      TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                      cod_identificador,         COD_BENEFICIO
                              )
                              VALUES
                              (
                                     1 , vDetalhe(j)(k).cod_ide_cli,                      '3',
                                     DRB_LoteServico, HR_CodConvenio, DRB_CodSegRegDetalhe,
                                     HR_Sequencial, vTipo, DRB_SeqRegistroLote,
                                     to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                     aConvGrp(f).dat_efetiva, NULL,
                                     0, vDetalhe(j)(k).COD_IDE_CLI_BEN,
                                     CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip
                                           ELSE c_OutputFileCredito
                                     END,
                                     vLinha,               c_definitivo,           DR_CodBancoFav,
                                     DR_CodAgenciaFav,     DR_Digito, vDetalhe(j)(k).num_conta,
                                     DR_DVConta,           DR_Modalidade,            I_PERPROCESSO,
                                     I_TIPPROCESSO,        I_SEQ_PAGAMENTO,  LPAD( aConvGrp(f).grp_pago, 2, '0' ),
                                     DR_NumeroDoc,         vDetalhe(j)(k).COD_BENEFICIO
                              );


                          --END IF;

                      EXCEPTION
                      WHEN OTHERS THEN
                           IF c_ERROR_MSG IS NULL THEN
                              c_ERROR_MSG := SQLERRM;
                           END IF;
                           I_MSG_ERRO  := c_ERROR_MSG;
                           lOraErr     := TRUE;
                           RAISE e_ERROR;

                      END PRINT_FILE;

                      UTL_FILE.FFLUSH(f_OutputCredito);

                      vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                      c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                      c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                      vcontador := vcontador + 1;
                      vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';


                      IF c_definitivo = 'S' THEN

                           v_cod_beneficio := vDetalhe(j)(k).cod_BENEFICIO;
                           v_cod_ide_cli := vDetalhe(j)(k).cod_ide_cli;
                           v_valor := vDetalhe(j)(k).val_liquido;

                            UPDATE user_ipesp.tb_hist_pag_auxilio_funeral ff
                               SET ff.flg_pago = 'S',
                                   FF.COD_IDENTIFICADOR_PAG = DR_NumeroDoc,
                                   FF.DAT_PAGTO =  aConvGrp(f).dat_efetiva,
                                   FF.DAT_ULT_ATU = SYSDATE,
                                   FF.VALOR_PAGO = vDetalhe(j)(k).val_liquido,
                                   ff.tip_processo = I_TIPPROCESSO,
                                   ff.seq_pagamento = I_SEQ_PAGAMENTO,
                                   ff.per_processo = I_PERPROCESSO
                            WHERE   ff.cod_ins = c_cod_ins
                            AND     nvl(ff.cod_ide_cli_solicitante,ff.cod_ide_pj_solicitante) = vDetalhe(j)(k).cod_ide_cli
                            AND     ff.Cod_Adm_Tra = vDetalhe(j)(k).cod_BENEFICIO
                            AND     FF.FLG_PAGO = 'N'
                            AND     TRUNC(FF.VALOR_NOTA_FISCAL,2) = vDetalhe(j)(k).val_liquido;


                      END IF;

                  END LOOP;

                  IF not lFim THEN

                    TL_LoteServico     := LPAD(v_lote,4,0);
                    TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                    TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                    TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                    UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                        TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                        TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || chr(13)   );

                    TR_QTDRegLote    := LPAD(v_lote,6,'0');
                    TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                    TR_QtdContas     := LPAD(1,6,0);

                    UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                          TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                          TR_QtdContas  || TR_Brancos2       || chr(13));
                    UTL_FILE.FCLOSE( f_OutputCredito );
                  END IF;

                  /*------------------------------------------
                    Atualiza os controles de envio para banco
                  ------------------------------------------*/
                  IF c_definitivo = 'S' THEN

                    BEGIN

                          c_num_nsa := vQtdeArq + c_num_nsa;

                          UPDATE   TB_ENVIO_BANCO
                          SET   VAL_LIQUIDO      = c_total_geral,
                                DAT_ENVIO        = SYSDATE,
                                DAT_ULT_ATU      = SYSDATE,
                                NOM_USU_ULT_ATU  = USER,
                                NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                                NUM_NSA          = c_num_nsa
                          WHERE  COD_INS           = c_cod_ins
                          AND    PER_PROCESSO      = I_PERPROCESSO
                          AND    COD_TIP_PROCESSO  = I_TIPPROCESSO
                          AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                          AND    COD_ENTIDADE      = NVL(NULL,999)
                          AND    COD_BANCO         = NVL(NULL,001)
                          AND    NUM_GRP           = DECODE( aConvGrp(f).grp_pago, 99, NUM_GRP, aConvGrp(f).grp_pago )
                          AND    COD_CONV          = TRUNC( HR_CodConvenio );

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                          UPDATE TB_CONVENIO_BANCO C
                          SET NUM_NSA   = c_num_nsa
                          WHERE COD_INS   = c_cod_ins
                          AND   COD_BANCO = NVL(NULL,001)
                          AND   COD_CONV  = TRUNC( HR_CodConvenio );

                          IF sql%rowcount = 0 THEN
                             ROLLBACK;
                             c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                             lOraErr := TRUE;
                          END IF;

                    EXCEPTION
                      WHEN OTHERS THEN
                       c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;
                    END;

                    COMMIT;

                  END IF;

              END IF;

            EXCEPTION
            WHEN OTHERS THEN
              GOTO END_LOOP;

            END;

            <<GERA_RESUMO>>
            BEGIN

              IF (c_definitivo = 'S') THEN

                  SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                      I_TIPPROCESSO,
                                      I_SEQ_PAGAMENTO,
                                      LPAD( NVL( aConvGrp(f).grp_pago, '00' ), 2, '0' ),
                                      aConvGrp(f).dat_efetiva,
                                      c_OutputFileCredito,
                                      c_OutputFileCredito_Crip,
                                      HR_DataGeracao,
                                      HR_HoraGeracao,
                                      c_total_liquido,
                                      c_count_seg_a,
                                      'N');

                  c_OutputFileCredito := c_OutputFileCredito_CRIP||'_'||c_OutputFileCredito;
                  SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

                  -- CHAMA A GERACAO DO RELATÓRIO
                  USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR( aConvGrp(f).dat_efetiva,'YYYYMMDD'),  aConvGrp(f).dat_efetiva, 'S','A');




              END IF;

            EXCEPTION
            WHEN OTHERS THEN
                ROLLBACK;

            END;

            COMMIT;

            <<END_LOOP>>
            IF lOraErr THEN
               I_NOM_ARQUIVO := NULL;
               RAISE e_ERROR;
            END IF;

        END LOOP;

    END LOOP;

    UTL_FILE.FCLOSE_ALL;


    /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => c_des_nom_benef,
                                        p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                        p_cod_banco              => NVL(NULL,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => NULL,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => c_des_nom_benef,
                                          p_cod_tipo_beneficio    => c_cod_tipo_benef,
                                          p_cod_banco              => NVL(NULL,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => NULL,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_CNAB_AUXFUN;


  PROCEDURE SP_INCLUI_RESUMO_BANCARIO  ( I_PERPROCESSO  IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DAT_PAGTO         IN DATE,
                              I_NOM_ARQUIVO       IN VARCHAR2,
                              I_NOM_ARQUIVO_CRIP  IN VARCHAR2,
                              I_DataGeracao       IN VARCHAR2,
                              I_HoraGeracao       IN VARCHAR2,
                              I_total_liquido     IN NUMBER,
                              I_QTDE              IN NUMBER,
                              I_FLG_PA            IN VARCHAR2 ) IS

    vs_dados VARCHAR2(2000);
    input_buffer VARCHAR2(2000);
    V_LINHA NUMBER;
    V_VAL_TOTAL NUMBER;
    V_VAL_TOTAL_TRAILER NUMBER;
    vsqlstr VARCHAR2(200);
    V_NUM_LINHA VARCHAR2(500);

    /*--------------Variaveis Para Geracao de Arquivo--------------*/
    f_OutputCredito            UTL_FILE.FILE_TYPE;
    c_OutputLocation           VARCHAR2(100); -- := 'ARQS_BANCARIOS';

    BEGIN

      BEGIN
          vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
          EXECUTE IMMEDIATE vsqlstr;
          c_OutputLocation  := 'ARQS_BANCARIOS';

          -- VALIDA VALORES NO ARQUIVO GERADO
          V_LINHA := 0;
          V_VAL_TOTAL := 0;
          V_VAL_TOTAL_TRAILER := 0;
          V_NUM_LINHA := NULL;

          IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
             f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, I_NOM_ARQUIVO, 'r', 32767 );
             Loop
                 vs_dados := null;
                 V_LINHA  := V_LINHA + 1;
                 utl_file.get_line (f_OutputCredito, input_buffer);
                 vs_dados := TRIM(input_buffer);

                 /*IF (LENGTH(VS_DADOS) != 240) THEN
                    V_NUM_LINHA := v_NUM_LINHA||TO_CHAR(V_LINHA)||'|';
                 END IF;*/

                 IF (SUBSTR(VS_DADOS,8,1) = '3' AND  SUBSTR(VS_DADOS,14,1) = 'A') THEN
                    -- SOMA VALORES INFORMADOS
                    V_VAL_TOTAL := V_VAL_TOTAL + SUBSTR(VS_DADOS,120,15);
                 END IF;

                 IF (SUBSTR(VS_DADOS,8,1) = '5') THEN
                    V_VAL_TOTAL_TRAILER := SUBSTR(VS_DADOS,24,18);
                 END IF;


             End loop;
          END IF;
          UTL_FILE.FCLOSE( f_OutputCredito );


          INSERT INTO USER_IPESP.TB_RESUMO_ARQ_BANCARIO
          (
             COD_INS         ,                  PER_PROCESSO,          TIP_PROCESSO,
             SEQ_PAGAMENTO   ,                     GRP_PAGTO,        FLG_DEFINITIVO,
             DT_GERACAO      ,                      DT_PAGTO,               ARQUIVO,
             QTDE            ,                         TOTAL,                FLG_PA,
             TIP_MOV         ,          ARQUIVO_CRIPTOGRAFADO,
             VAL_ARQUIVO     ,          MSG_ARQUIVO,    NUM_LINHA
          )
          VALUES
          (
           1,  I_PERPROCESSO, I_TIPPROCESSO,
           I_SEQ_PAGAMENTO, LPAD( NVL( I_GRP_PAGTO, '00' ), 2, '0' ),
           'S',
           to_date( I_DataGeracao||I_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                   I_DAT_PAGTO,     I_NOM_ARQUIVO,
           I_QTDE,                 I_total_liquido,                 I_FLG_PA,
           '0',                    I_NOM_ARQUIVO_CRIP,
           V_VAL_TOTAL/100,
           CASE WHEN V_VAL_TOTAL != V_VAL_TOTAL_TRAILER THEN 'VALORES DIVERGENTES'
                ELSE 'ARQUIVO VALIDADO COM SUCESSO'
           END,

           V_NUM_LINHA

          );
          COMMIT;

      EXCEPTION
          WHEN OTHERS THEN
               UTL_FILE.FCLOSE_ALL;
               INSERT INTO USER_IPESP.TB_RESUMO_ARQ_BANCARIO
              (
                 COD_INS         ,                  PER_PROCESSO,          TIP_PROCESSO,
                 SEQ_PAGAMENTO   ,                     GRP_PAGTO,        FLG_DEFINITIVO,
                 DT_GERACAO      ,                      DT_PAGTO,               ARQUIVO,
                 QTDE            ,                         TOTAL,                FLG_PA,
                 TIP_MOV         ,          ARQUIVO_CRIPTOGRAFADO,
                 VAL_ARQUIVO     ,          MSG_ARQUIVO,    NUM_LINHA
              )
              VALUES
              (
               1,  I_PERPROCESSO, I_TIPPROCESSO,
               I_SEQ_PAGAMENTO, LPAD( NVL( I_GRP_PAGTO, '00' ), 2, '0' ),
               'S',
               to_date( I_DataGeracao||I_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                       I_DAT_PAGTO,     I_NOM_ARQUIVO,
               I_QTDE,                 I_total_liquido,                 I_FLG_PA,
               '0',                    I_NOM_ARQUIVO_CRIP,
               V_VAL_TOTAL/100,
               CASE WHEN V_VAL_TOTAL != V_VAL_TOTAL_TRAILER THEN 'VALORES DIVERGENTES'
                    ELSE 'ARQUIVO VALIDADO COM SUCESSO'
               END,

               V_NUM_LINHA

              );
              COMMIT;
      END;

  END SP_INCLUI_RESUMO_BANCARIO;

  PROCEDURE GERA_HIST_ECT  (  I_PERPROCESSO  IN TB_FOLHA.PER_PROCESSO%TYPE,
              I_TIPPROCESSO  IN TB_FOLHA.TIP_PROCESSO%TYPE,
              I_SEQ_PAGAMENTO IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
              I_COD_ENTIDADE  IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
              I_COD_TIPO_BENEF IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
              I_DES_NOM_BENEF  IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
              I_MSG_ERRO    OUT VARCHAR2  )

    IS

    c_data_efetiva      DATE     := NULL;
    c_tipo_processo     CHAR(1)   := NULL;
    c_cod_ins           NUMBER     := 0;
    c_num_grp_pag    NUMBER    := 0;
    c_idcontracheque    NUMBER(8)   := 0;
    c_iddetalhe        NUMBER(8)   := 0;
    c_seq_pagamento    NUMBER(8)  := 0;
    c_erro_log        CHAR(2);

    HL_MesAnoCompetencia CHAR(07) := 'MM/YYYY';    -- Mes e Ano de Competencia
    HL_NaturezaBeneficio CHAR(15) := ' ';           -- Beneficio
    HL_IDFuncional       CHAR(14) := '00000000000000';  -- Identificacao Funcional
    HL_NomeBeneficiario  CHAR(50) := ' ';           -- Nome Beneficiario
    HL_Cargo             CHAR(40) := ' ';           -- Cargo utilizado
    HL_Referencia        CHAR(08) := '00000000';    -- Referencia do Cargo
    HL_OrgaoOrigem       CHAR(50) := '000';         -- Orgao de lotacao do servidor enquanto ativo
                                                    -- no momento da concessao da aposentadoria
                                                    -- ou da pensao por morte
    HL_NomeSegurado      CHAR(50) := ' ';           -- Nome do servidor quando falecido ou pensionista
    HL_Banco             CHAR(30) := ' ';           -- Nome do Banco do credito
    HL_Agencia           CHAR(30) := ' ';           -- Nome da Agencia do credito
    HL_Conta             CHAR(15) := ' ';           -- Numero da Conta Corrente
    HL_CPF               CHAR(14) := ' ';           -- CPF do titular da conta corrente
    HL_RG                CHAR(10) := ' ';           -- RG titular da conta corrente
    HL_OrgaoEmissor      CHAR(05) := ' ';           -- Orgao Emissor da RG
    HL_UF                CHAR(02) := '  ';          -- UF da emissao
    HL_Logradouro        CHAR(50) := ' ';           -- Logradouro
    HL_NumeroLocal       CHAR(10) := ' ';           -- Numero Local
    HL_Complemento       CHAR(10) := ' ';           -- Complemento
    HL_Bairro            CHAR(40) := ' ';           -- Bairro
    HL_Cidade            CHAR(40) := ' ';           -- Cidade
    HL_UF_CH             CHAR(02) := '  ';
    HL_Cep               CHAR(09) := ' ';           -- CEP

    DR_MesAnoCompetencia CHAR(07) := 'MM/YYYY';      -- Mes e Ano de Competencia
    DR_IDFuncional       CHAR(14) := '00000000000000';  -- Identificacao Funcional
    DR_CodRubrica        CHAR(05) := '00000';           -- Codigo da rubrica
    DR_DescricaoRubrica  CHAR(30) := ' ';               -- Descricao rubrica
    DR_Informacao        CHAR(10) := ' ';               -- Informacao
    DR_Complemento       CHAR(15) := ' ';
    DR_Competencia       CHAR(07) := 'MM/YYYY';         -- Competencia Efetiva da Rubrica
    DR_Vantagens         CHAR(10) := ' ';               -- Valor da Vantagem associada a rubrica de pagamento
    DR_Descontos         CHAR(10) := ' ';               -- Valor de Desconto

    TL_TotalBruto        CHAR(10) := '000.000,00';     -- Valor total bruto
    TL_TotalDesconto     CHAR(10) := '000.000,00';     -- Valor tottal de descontos
    TL_ValLiquido        CHAR(10) := '000.000,00';     -- Valor liquido a receber
    TL_BaseIR            CHAR(10) := '000.000,00';     -- Valor da Base de Calculo do IR
    TL_BasePrev          CHAR(10) := '000.000,00';     -- Valor da Base da Previdencia
    TL_Mensagem          CHAR(240):= ' ';           -- Mensagem Informativa que sera impressa no contra-cheque

    len_cod_ide_cli_serv  NUMBER := 0;
    c_cod_ide_cli_serv    VARCHAR(15) := null;
    c_num_rg              number(10) := 0;
    --I_SEQ_PAGAMENTO      NUMBER(8) := 1;

    CURSOR c1 IS   SELECT /*+ rule */
                          ff.cod_ins,
                          ff.cod_ide_cli,
                          cb.cod_ide_cli_serv,
                          ff.tip_processo,
                          --DECODE(voi.nome_orgao, 'Inativo Civil', cb.cod_cargo, cb.cod_cargo_apos) cod_cargo
                          bc.cod_cargo,
                          cb.cod_entidade,
                          cb.cod_pccs,
                          cb.cod_ide_rel_func,
                          cb.cod_beneficio,
                          cb.num_matricula num_matricula,
                          cb.dat_concessao,
                          tb.cod_tipo_beneficio,
                          tb.nom_tipo_benef_cc nom_tipo_beneficio,
                          RTRIM(voi.nome_orgao) nome_grupo,
                          SUM(ff.val_liquido) val_liquido,
                          SUM(ff.tot_cred) tot_cred,
                          SUM(ff.tot_deb) tot_deb,
                          SUM(val_base_ir) val_base_ir,
                          SUM(NVL(val_base_prev,0)) val_base_prev,
                          ff.nom_serv NomeSegurado
            FROM   TB_FOLHA           ff,
                          TB_CONCESSAO_BENEFICIO     cb,
                          TB_BENEFICIARIO       be,
                          TB_TIPOS_BENEFICIOS        tb,
                          vis_orgao_inativos       voi  ,
                          tb_beneficio_cargo    bc
                    WHERE
                    -- Filtros do processo da folha
                        ff.cod_ins         = c_cod_ins
                    AND   ff.per_processo      = c_data_efetiva
                    AND   ff.tip_processo     = c_tipo_processo
                    AND    ff.seq_pagamento    = c_seq_pagamento
            -- Join para encontrar o beneficio correspondente e filtrar os ativos
                    AND   be.cod_ins         = ff.cod_ins
                    AND   be.cod_ide_cli_ben     = ff.cod_ide_cli_ben
                    AND   be.cod_beneficio    = ff.cod_beneficio
                    AND   be.flg_status      = 'A'
                    -- Join para chegar ao codigo do instituidor do beneficio na tabela de concessao de beneficio
                    AND   cb.cod_ins         = ff.cod_ins
                    AND   cb.cod_beneficio     = be.cod_beneficio
                    -- REMOVIDO PARA GERAR TUDO - VALIDAR
                    --AND      cb.cod_tipo_beneficio   = NVL(I_BENEFICIO, cb.cod_tipo_beneficio)
                    -- Join com  view para classificar entre civis e militares
                    AND   voi.cod_ins        = ff.cod_ins
                    AND   voi.matricula      = cb.num_matricula
                    AND   voi.cod_beneficio    = cb.cod_beneficio
                    AND    voi.cod_ide_cli      = cb.cod_ide_cli_serv
                    -- REMOVIDO PARA GERAR TUDO - VALIDAR
                    -- AND    UPPER(voi.nome_orgao)  = c_des_grupo_pag
                    -- Join para pegar a descricao do beneficio
                    AND     tb.cod_tipo_beneficio   = cb.cod_tipo_beneficio
                    AND   bc.cod_beneficio = ff.cod_beneficio
                    AND   bc.cod_ins = ff.cod_ins
                    AND   bc.cod_ide_cli_serv = voi.cod_ide_cli
                    AND   bc.flg_status = 'V'
                    AND   (bc.dat_ini_vig <= ff.per_processo
                    AND   bc.dat_fim_vig >= ff.per_processo OR bc.dat_fim_vig is null )
            GROUP BY  ff.cod_ins,
                            ff.cod_ide_cli,
                            cb.cod_ide_cli_serv,
                            ff.tip_processo,
                            --DECODE(voi.nome_orgao, 'Inativo Civil', cb.cod_cargo, cb.cod_cargo_apos)
                            bc.cod_cargo,
                            cb.cod_entidade,
                            cb.cod_pccs,
                            cb.cod_ide_rel_func,
                            cb.cod_beneficio,
                            cb.num_matricula,
                            cb.dat_concessao,
                            tb.cod_tipo_beneficio,
                            tb.nom_tipo_benef_cc,
                            RTRIM(voi.nome_orgao),
                            ff.nom_serv;


    c_ERROR_MSG     VARCHAR2(500);
    e_ERROR         EXCEPTION;
    c_cont_erro    NUMBER := 0;
    w_msg_erro      varchar2(1024);
    c_carne         char(2);

    BEGIN

      BEGIN

        c_data_efetiva    := I_PERPROCESSO;
        c_tipo_processo    := I_TIPPROCESSO;
        c_seq_pagamento    := I_SEQ_PAGAMENTO;
        c_cod_ins            := 136;
        c_carne           := '00';

        /*-------------------------
          Abre o registro do log de processamento - Situacao 'A' - Agendado
          DEVE SER REMOVIDO QUANDO A FOLHA ESTIVER COLOCANDO ESSA ROTINA NA AGENDA
          -------------------------*/
    /**/    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '02',   -- Dados historicos de contra cheques
                          p_cod_ins        => 1, --136,
                          p_per_processo          => I_PERPROCESSO,
                          p_cod_tip_processo    => I_TIPPROCESSO,
                          p_seq_pagamento      => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                          p_cod_tipo_beneficio  => I_COD_TIPO_BENEF,
                          p_cod_banco        => NULL,
                          p_num_tip_emissao    => NULL,
                          p_cod_ide_cli      => NULL,
                          p_dat_agenda_proc    => SYSDATE,
                          p_flg_processamento    => 'A' ,  -- Agendado
                          p_msg_erro        => c_ERROR_MSG, -- Variavel da rotina para receber a mensagem,
                          p_cod_cargo       => null,
                          p_cod_categoria   => null,
                          p_cod_pccs        => null,
                          p_cod_entidade    => I_COD_ENTIDADE,
                           p_flg_retorno      => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log


        IF TO_NUMBER(c_erro_log) <> 0 THEN
          RAISE e_ERROR;
        END IF;
    /**/
          /*-------------------------
            Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
            -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '02',   -- Dados historicos de contra cheques
                          p_cod_ins        => 1, --136,
                          p_per_processo          => I_PERPROCESSO,
                          p_cod_tip_processo    => I_TIPPROCESSO,
                          p_seq_pagamento      => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                          p_cod_tipo_beneficio  => I_COD_TIPO_BENEF,
                          p_cod_banco        => NULL,
                          p_num_tip_emissao    => NULL,
                          p_cod_ide_cli      => NULL,
                          p_dat_agenda_proc    => SYSDATE,
                          p_flg_processamento    => 'P' ,  -- Agendado
                          p_msg_erro        => c_ERROR_MSG, -- Variavel da rotina para receber a mensagem,
                          p_cod_cargo       => null,
                          p_cod_categoria   => null,
                          p_cod_pccs        => null,
                          p_cod_entidade    => I_COD_ENTIDADE,
                           p_flg_retorno      => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log


      IF TO_NUMBER(c_erro_log) <> 0 THEN
        RAISE e_ERROR;
      END IF;

      commit;

    /*-------------------------------------------------------------------------
      APAGA OS REGISTROS PARA A COMPETENCIA A SER PROCESSADA, CASO EXISTAM
      -------------------------------------------------------------------------*/
    BEGIN

      DELETE
      FROM  TB_ECT_CNTR_CHQE_BENE_DETL det
      WHERE  det.idcontracheque IN ( SELECT   cab.idcontracheque
                      FROM   TB_ECT_CNTR_CHQE_BENE  cab
                                        WHERE  cab.cod_ins       = c_cod_ins
                                        AND    cab.tip_processo       = I_TIPPROCESSO
                                        AND    cab.mesanocompetencia  = TO_CHAR(I_PERPROCESSO,'MM/YYYY')
                                        AND    cab.seq_pagamento    = c_seq_pagamento);

        -- Apaga os registros da tabela TB_ECT_CNTR_CHQE
      DELETE
      FROM   TB_ECT_CNTR_CHQE_BENE
      WHERE  cod_ins       = c_cod_ins
      AND    tip_processo      = I_TIPPROCESSO
      AND    mesanocompetencia  = TO_CHAR(I_PERPROCESSO,'MM/YYYY')
      AND    seq_pagamento    = c_seq_pagamento;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO EXCLUIR REGISTROS DAS TABELAS DE HISTORICO';
        RAISE e_ERROR;
    END;

    /*-----------------------------------
      BUSCA OS VALORES MAXIMOS DAS CHAVES PARA GERAR OS NOVOS IDS
      -----------------------------------*/
    -- TB_ECT_CNTR_CHQE_BENE.IDCONTRACHEQUE
    BEGIN
      SELECT   MAX(NVL(IDCONTRACHEQUE,0))
      INTO  c_idcontracheque
      FROM  TB_ECT_CNTR_CHQE_BENE;
    EXCEPTION
      WHEN OTHERS THEN
        c_idcontracheque := 0;
    END;

    -- TB_ECT_CNTR_CHQE_BENE_DETL.IDDETALHE
    BEGIN
      SELECT   MAX(NVL(IDDETALHE,0))
      INTO  c_iddetalhe
      FROM  TB_ECT_CNTR_CHQE_BENE_DETL;
    EXCEPTION
      WHEN OTHERS THEN
        c_iddetalhe := 0;
    END;

    commit;

    /*-------------------------------------------------
      PERCORRE O CURSOR PARA BUSCAR AS INFORMACOES
      DE CABECALHO DOS CONTRA CHEQUES
      -------------------------------------------------*/
    FOR REG IN C1  LOOP

        HL_MesAnoCompetencia  := TO_CHAR(c_data_efetiva,'MM/YYYY');
        HL_NaturezaBeneficio  := SUBSTR(RPAD(NVL(reg.nom_tipo_beneficio, ''),15,' '),1,15);

          -- Obtem o numero do carne do beneficiario-pensionista

        BEGIN

          SELECT LPAD(to_char(ra.cod_carne),2,'0')
          INTO c_carne
          FROM TB_RATEIO_BENEFICIO ra
          WHERE ra.cod_ins = c_cod_ins
          AND   ra.cod_beneficio = reg.cod_beneficio
          AND   ra.cod_ide_cli_ben = reg.cod_ide_cli;
          EXCEPTION
          WHEN NO_DATA_FOUND THEN
            c_carne   := '00';
        END;
        -- ID Funcional - quando implantar pensionistas deve-se atualizar o numero do dependente nos dois ultimos digitos
        -- HL_IDFuncional        := SUBSTR(LPAD(reg.num_matricula,10,'0'),1,8) || '/' || SUBSTR(LPAD(reg.num_matricula,10,'0'),9,2) || '/' || '00';
        HL_IDFuncional        := SUBSTR(LPAD(reg.num_matricula,10,'0'),1,8) || '/' || SUBSTR(LPAD(reg.num_matricula,10,'0'),9,2) || '/' || c_carne;

         BEGIN

          -- Obtem o nome do banco vinculado ao beneficiario
        BEGIN

          SELECT  RPAD(SUBSTR(NVL(b.des_banco,' '),1,30),30,' ')    des_banco,
              RPAD(SUBSTR(NVL(ag.des_agencia,' '),1,30),30, ' ')   des_agencia,
                       DECODE(TO_NUMBER(ib.cod_banco), 37,
                        LPAD(TRIM(ib.num_conta),15,'0'),      -- Se for BANPARA nao acrescenta digito verificador
                        LPAD(TRIM(ib.num_conta),13,'0') || '-' ||  -- Para os demais banco, acrescenta o digito
                        SUBSTR(TRIM(ib.num_dv_conta),1,1))          conta
          INTO  HL_Banco,
                HL_Agencia,
               HL_Conta
           FROM  TB_INFORMACAO_BANCARIA     ib,
              TB_AGENCIA           ag,
              TB_BANCO          b
              -- Join com a tabela de informacao bancaria do beneficiario
              WHERE   ib.cod_ins       = c_cod_ins
              AND    ib.cod_ide_cli     = reg.cod_ide_cli
              -- Join para buscar o nome do banco
              AND    b.cod_banco      = ib.cod_banco
              -- Join para buscar o nome da agencia
          AND   ag.cod_banco  (+) = ib.cod_banco
          AND   ag.num_agencia  (+) = ib.num_agencia;

        EXCEPTION
          WHEN NO_DATA_FOUND THEN
            HL_Banco   := RPAD(' ',30, ' ');
            HL_Agencia   := RPAD(' ',30, ' ');
            HL_Conta   := RPAD(' ',15, ' ');
        END;

        -- Obtem as informaCOES cadastrais
        BEGIN
          HL_NomeSegurado := reg.NomeSegurado;

          SELECT  SUBSTR(RPAD(pf.nom_pessoa_fisica,50,' '),1,50)       nom_pessoa_fisica,
              SUBSTR(LPAD(NVL(pf.num_cpf,'0'),11,'0'),1,3) || '.' ||
                  SUBSTR(LPAD(NVL(pf.num_cpf,'0'),11,'0'),4,3) || '.' ||
                  SUBSTR(LPAD(NVL(pf.num_cpf,'0'),11,'0'),7,3) || '-' ||
                  SUBSTR(LPAD(NVL(pf.num_cpf,'0'),11,'0'),10,2)      num_cpf,
                --  LPAD(TO_CHAR(TO_NUMBER(NVL(pf.num_rg,'0'))),10,' ')    num_rg, --efv 14/11/2006
                  substr(pf.num_rg,1,10) num_rg,
--                  LPAD(TO_CHAR(TO_NUMBER(NVL(translate(pf.num_rg,'0123456789./-','0123456789'),'0'))),10,' ')  num_rg,
                  SUBSTR(RPAD(NVL(pf.cod_org_emi_rg,' '),5,' '),1,5)     cod_org_emi_rg,
                  NVL(pf.cod_uf_emi_rg,' ')                uf_emi_rg
            INTO  HL_NomeBeneficiario,
                   HL_CPF,
                   HL_RG,
                   HL_OrgaoEmissor,
                   HL_UF
          FROM   TB_PESSOA_FISICA pf
          WHERE  pf.cod_ide_cli         = reg.cod_ide_cli --reg.cod_ide_cli_serv beneficiario (efv 01/09/2007)
             AND   pf.cod_ins           = c_cod_ins;

          EXCEPTION

            WHEN OTHERS THEN
            HL_NomeBeneficiario  := RPAD(' ',50, ' ');
              HL_CPF        := RPAD(' ',14, ' ');
              HL_RG        := RPAD(' ',10, ' ');
              HL_OrgaoEmissor    := RPAD(' ',05, ' ');
              HL_UF        := RPAD(' ',02, ' ');

          END;


           if  HL_RG is not null and
               HL_RG <> '          'then
                BEGIN

                 c_num_rg := to_number(HL_RG);

                 HL_RG := LPAD(TO_CHAR(TO_NUMBER(NVL(translate(HL_RG,'0123456789./-','0123456789'),'0'))),10,' ');

               EXCEPTION

                WHEN OTHERS THEN
                     c_num_rg := 0;
              END;
           end if;

          BEGIN

          SELECT   SUBSTR(RPAD(NVL(epf.nom_logradouro,' '),50,' '),1,50)   nom_logradouro,
                  SUBSTR(RPAD(NVL(epf.num_numero,' '),10,' '),1,10)     num_numero,
                  SUBSTR(RPAD(NVL(epf.des_complemento,' '),10,' '),1,10)   des_complemento,
                  SUBSTR(RPAD(NVL(bb.nom_bairro,' '),40,' '),1,40)     nom_bairro,
                  SUBSTR(RPAD(NVL(mm.nom_municipio,' '),40,' '),1,40)   nom_municipio,
                  NVL(bb.cod_uf,'PA')                    uf,
                  SUBSTR(TO_CHAR(LPAD(NVL(epf.num_cep,'00000000'),8,0),'00000000'),2,5)
                  ||'-'||SUBSTR(TO_CHAR(LPAD(NVL(epf.num_cep,'00000000'),8,0),'00000000'),7,3)  cep
            INTO  HL_Logradouro,
                   HL_NumeroLocal,
                   HL_Complemento,
                   HL_Bairro,
                   HL_Cidade,
                   HL_UF_CH,
                   HL_Cep
             FROM   TB_END_PESSOA_FISICA epf,
                    TB_BAIRRO bb,
                    TB_MUNICIPIO mm
             WHERE   epf.cod_ins          = c_cod_ins
             AND    epf.cod_ide_cli        = reg.cod_ide_cli --reg.cod_ide_cli_serv beneficiario (efv 01/09/2007)
             AND   bb.cod_ins          = epf.cod_ins
             AND   bb.cod_uf          = NVL(epf.cod_uf,'PA')
             AND   bb.cod_bairro        = NVL(epf.cod_bairro,'14')
             AND   bb.cod_municipio      = NVL(epf.cod_municipio,'14')
             AND   mm.cod_ins           = epf.cod_ins
             AND   mm.cod_uf           = NVL(epf.cod_uf,'PA')
             AND   mm.cod_municipio      = NVL(epf.cod_municipio,'14')
             AND   epf.dat_ult_atu = (  SELECT   NVL(MAX(epf2.dat_ult_atu),SYSDATE)
                           FROM  TB_END_PESSOA_FISICA epf2
                           WHERE  epf2.cod_ins = epf.cod_ins
                           AND    epf2.cod_ide_cli = epf.cod_ide_cli);


          IF RTRIM(HL_Bairro) = 'Bairro nao informado' THEN
            HL_Bairro := RPAD('Bairro nao informado',40,' ');
            /*
            BEGIN
              SELECT   SUBSTR(RPAD(NVL(bairro,' '),40,' '),1,40)
              INTO  HL_Bairro
              FROM  TMP_MUNICIPIO_BAIRRO
              WHERE   TO_CHAR(num_inscr) || '00' = reg.cod_ide_cli_serv;
            EXCEPTION
              WHEN OTHERS THEN
                HL_Bairro := RPAD('Bairro nao informado',40,' ');
            END;
          */
          END IF;

          IF RTRIM(HL_Cidade) = 'Municipio nao definido'  THEN
            HL_Cidade := RPAD('Municipio nao definido',40,' ');
      END IF;

          EXCEPTION

            WHEN OTHERS THEN
              HL_Logradouro    := RPAD(' ',50, ' ');
              HL_NumeroLocal    := RPAD(' ',10, ' ');
              HL_Complemento    := RPAD(' ',10, ' ');
              HL_Bairro      := RPAD(' ',40, ' ');
              HL_Cidade      := RPAD(' ',40, ' ');
              HL_UF_CH      := RPAD(' ',02, ' ');
              HL_Cep         := RPAD(' ',09, ' ');
          END;

          -- Obtem o ORGAO do servidor
        BEGIN

          SELECT   SUBSTR(RPAD(en.nom_entidade,50,' '),1,50)
              --RPAD(og.nom_orgao,50,' ')
            INTO   HL_OrgaoOrigem
            FROM   TB_ENTIDADE        en,
                TB_ORGAO         og,
                   TB_LOTACAO         lt,
                   TB_RELACAO_FUNCIONAL   rf,
                   TB_CONCESSAO_BENEFICIO   cb,
                   TB_BENEFICIARIO     bn
             WHERE   bn.cod_ins       = reg.cod_ins
             AND    bn.cod_ide_cli_ben   = reg.cod_ide_cli
             AND    cb.cod_ins       = bn.cod_ins
             AND    cb.cod_beneficio   = bn.cod_beneficio
             AND    cb.num_matricula   = reg.num_matricula
             AND    rf.cod_ins       = cb.cod_ins
             AND    rf.cod_ide_cli     = cb.cod_ide_cli_serv
             AND    rf.cod_entidade   = cb.cod_entidade
             AND    rf.cod_pccs     = cb.cod_pccs
             AND    rf.cod_cargo    = cb.cod_cargo
             AND    rf.num_matricula   = cb.num_matricula
             AND    rf.cod_ide_rel_func = cb.cod_ide_rel_func
             AND    lt.cod_ins       = rf.cod_ins
             AND    lt.cod_ide_cli     = rf.cod_ide_cli
             AND    lt.cod_entidade   = rf.cod_entidade
             AND    lt.cod_pccs     = rf.cod_pccs
             AND    lt.cod_cargo     = rf.cod_cargo
             AND    lt.num_matricula   = rf.num_matricula
             AND    lt.cod_ide_rel_func = rf.cod_ide_rel_func
             AND    og.cod_ins       = lt.cod_ins
             AND    og.cod_entidade   = lt.cod_entidade
             AND    og.cod_orgao     = lt.cod_orgao
             AND    en.cod_ins      = og.cod_ins
             AND    en.cod_entidade    = og.cod_entidade
--             AND    lt.dat_ini       <= cb.dat_concessao
             AND   NVL(lt.dat_fim, SYSDATE) = NVL((SELECT   MAX(lt2.dat_fim)
                                                  FROM   TB_LOTACAO lt2
                                                 WHERE   lt2.cod_ins       = rf.cod_ins
                                                  AND   lt2.cod_ide_cli     = rf.cod_ide_cli
                                                  AND   lt2.cod_entidade     = rf.cod_entidade
                                                  AND   lt2.cod_pccs       = rf.cod_pccs
                                                  AND   lt2.cod_cargo       = rf.cod_cargo
                                                  AND   lt2.num_matricula     = rf.num_matricula
                                                  AND   lt2.cod_ide_rel_func   = rf.cod_ide_rel_func), SYSDATE);
        EXCEPTION
          WHEN OTHERS THEN
            HL_OrgaoOrigem := RPAD(' ',50, ' ');
        END;

        -- Busca o NOME do CARGO do servidor
        BEGIN

          SELECT   RPAD(NVL(cg.nom_cargo, ' '),40,' ') nom_cargo
          INTO  HL_Cargo
          FROM  TB_CARGO   cg
          WHERE  cg.cod_cargo       = reg.cod_cargo
          AND   cg.cod_ins         = reg.cod_ins
          AND   cg.cod_entidade     = reg.cod_entidade
          AND   cg.cod_pccs       = reg.cod_pccs;

          EXCEPTION
            WHEN OTHERS THEN
              HL_Cargo := RPAD(' ',40, ' ');
          END;

        -- Busca a referencia do cargo do servidor
        -- Validar esta query
        BEGIN
          SELECT   LPAD(TO_CHAR(EF.COD_REFERENCIA),8,'0') cod_referencia
          INTO  HL_Referencia
          FROM  TB_EVOLUCAO_FUNCIONAL   ef
          WHERE  ef.cod_ins       = reg.cod_ins
              AND    ef.cod_ide_cli     = reg.cod_ide_cli_serv
              AND    ef.cod_entidade   = reg.cod_entidade
              AND    ef.cod_pccs     = reg.cod_pccs
              AND    ef.cod_cargo     = reg.cod_cargo
              AND    ef.num_matricula   = reg.num_matricula
              AND   ef.cod_ide_rel_func = reg.cod_ide_rel_func
              AND   ef.dat_ini_efeito   <= c_data_efetiva
              AND   ef.dat_fim_efeito   IS NULL;

          EXCEPTION
            WHEN OTHERS THEN
              HL_Referencia := RPAD(' ',8, ' ');
          END;

              /*-------------------
                BUSCA O GRUPO DE PAGAMENTO ASSOCIADO AO BENEFICIARIO
                ------------------*/
              BEGIN

          SELECT   num_grp_pag
          INTO  c_num_grp_pag
          FROM    tb_grupo_pagamento
          WHERE   UPPER(RTRIM(des_grp_pag)) = UPPER(reg.nome_grupo);

        EXCEPTION
          WHEN OTHERS THEN
            c_num_grp_pag := 0;
        END;

          TL_TotalBruto    := LPAD(TO_CHAR(ROUND(reg.tot_cred,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
          TL_TotalDesconto := LPAD(TO_CHAR(ROUND(reg.tot_deb,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
          TL_ValLiquido    := LPAD(TO_CHAR(ROUND((reg.tot_cred - reg.tot_deb),2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
          TL_BaseIR        := LPAD(TO_CHAR(ROUND(reg.val_base_ir,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);

          -- Militares nao tem base previdenciaria (esta tratado aqui por deficiencia na rotina que atualiza o campo origem)
          IF c_num_grp_pag = 2 THEN
              TL_BasePrev      := LPAD(TO_CHAR(ROUND(0,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
            ELSE
              TL_BasePrev      := LPAD(TO_CHAR(ROUND(reg.val_base_prev,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
            END IF;


            /*-----------------------------
              Busca a mensagem que deve ser impressa no contra cheque
              associada ao pagamento do servidor de acordo com a prioridade
              -----------------------------*/
            TL_Mensagem     := RPAD(' ', 240);

            FOR mens IN (  -- 1: Por servidor
                SELECT  des_mensagem,
                    des_mensagem2,
                    des_mensagem3,
                    1  prioridade
                FROM  TB_MENSAGEM
                WHERE  cod_ins        = c_cod_ins
                AND    per_processo    = c_data_efetiva
                AND    cod_tip_processo  = c_tipo_processo
                --AND    seq_pagamento    = c_seq_pagamento
                AND    cod_ide_cli_ben    = reg.cod_ide_cli

                UNION

                -- 2: Por beneficio
                SELECT  des_mensagem,
                    des_mensagem2,
                    des_mensagem3,
                    2  prioridade
                FROM  TB_MENSAGEM
                WHERE  cod_ins        = c_cod_ins
                AND    per_processo    = c_data_efetiva
                AND    cod_tip_processo  = c_tipo_processo
                AND    seq_pagamento    = c_seq_pagamento
                AND    cod_tipo_beneficio  = reg.cod_tipo_beneficio
                AND    num_grp        IS NULL

                UNION

                -- 3: Por grupo
                SELECT  des_mensagem,
                    des_mensagem2,
                    des_mensagem3,
                    3  prioridade
                FROM  TB_MENSAGEM
                WHERE  cod_ins        = c_cod_ins
                AND    per_processo    = c_data_efetiva
                AND    cod_tip_processo  = c_tipo_processo
                AND    seq_pagamento    = c_seq_pagamento
                AND    num_grp        = c_num_grp_pag

                UNION

                -- 4: Geral
                SELECT  des_mensagem,
                    des_mensagem2,
                    des_mensagem3,
                    4  prioridade
                FROM  TB_MENSAGEM
                WHERE  cod_ins        = c_cod_ins
                AND    per_processo    = c_data_efetiva
                AND    cod_tip_processo  = c_tipo_processo
                AND    seq_pagamento    = c_seq_pagamento
                AND    cod_ide_cli_ben    IS NULL
                AND    cod_tipo_beneficio  IS NULL
                AND    num_grp        IS NULL

                ORDER BY PRIORIDADE     )  LOOP

          TL_Mensagem  := RPAD(NVL(mens.des_mensagem, '') || NVL(mens.des_mensagem2, '') || NVL(mens.des_mensagem3,''),240, ' ');
          EXIT;

        END LOOP;


        -- Grava o registro de cabecalho do contra cheque
        BEGIN

          c_idcontracheque := c_idcontracheque + 1;

          /*-------------------------
            GERA O REGISTRO DE CABECALHO DO CONTRA CHEQUE
            ------------------------*/
          INSERT INTO TB_ECT_CNTR_CHQE_BENE
              (  IDCONTRACHEQUE,
                IDARQUIVO,
                COD_INS,
                TIP_PROCESSO,
                SEQ_PAGAMENTO,
                NUM_GRP_PAG,
                MESANOCOMPETENCIA,
                NATUREZABENEFICIO,
                IDFUNCIONAL,
                NOMEBENEFICIARIO,
                CARGO,
                REFERENCIA,
                ORGAOORIGEM,
                NOMESEGURADO,
                BANCO,
                AGENCIA,
                CONTA,
                CPF,
                RG,
                ORGAOEMISSOR,
                UF,
                LOGRADOURO,
                NUMEROLOCAL,
                COMPLEMENTO,
                BAIRRO,
                CIDADE,
                UF_CH,
                CEP,
                TOTALBRUTO,
                TOTALDESCONTO,
                VALLIQUIDO,
                BASEIR,
                BASEPREV,
                MENSAGEM )
                --NUMEROREGISTRO)
          VALUES  (  c_idcontracheque,
                NULL,
                c_cod_ins,
                c_tipo_processo,
                c_seq_pagamento,
                c_num_grp_pag,
                HL_MesAnoCompetencia,
                HL_NaturezaBeneficio,
                HL_IDFuncional,
                HL_NomeBeneficiario,
                HL_Cargo,
                HL_Referencia,
                HL_OrgaoOrigem,
                HL_NomeSegurado, --RPAD(' ',50, ' '), (efv 1/9/2007)
                HL_Banco,
                HL_Agencia,
                HL_Conta,
                HL_CPF,
                HL_RG,
                HL_OrgaoEmissor,
                HL_UF,
                HL_Logradouro,
                HL_NumeroLocal,
                HL_Complemento,
                HL_Bairro,
                HL_Cidade,
                HL_UF_CH,
                HL_Cep,
                TL_TotalBruto,
                TL_TotalDesconto,
                TL_ValLiquido,
                TL_BaseIR,
                TL_BasePrev,
                TL_Mensagem );
                --HL_NumeroRegistro );

        EXCEPTION
          WHEN OTHERS THEN
            c_ERROR_MSG := 'ERRO AO INSERIR NA TABELA DE HISTORICO TB_ECT_CNTR_CHQE_BENE';
            w_msg_erro := sqlerrm;
            RAISE e_ERROR;
        END;


        /*-------------------------------------------------
          PERCORRE O CURSOR PARA BUSCAR AS INFORMACOES
          DAS RUBRICAS DO CONTRA CHEQUE
         -------------------------------------------------*/
         FOR  c2 IN (  SELECT   dc.cod_fcrubrica,
                               dc.val_rubrica,
                               dc.flg_natureza,
                               dc.des_informacao,
                               dc.des_complemento,
                               dc.dat_ini_ref,
                               rs.nom_rubrica
                          FROM   TB_DET_CALCULADO dc,
                               TB_FORMULA_CALCULO fc,
                               TB_RUBRICAS rs
                         WHERE   dc.cod_ins               = reg.cod_ins
                         AND   dc.cod_ide_cli             = reg.cod_ide_cli
                         AND    dc.cod_beneficio          = reg.cod_beneficio
                         AND   dc.tip_processo           = c_tipo_processo
                         AND   dc.per_processo            = c_data_efetiva
                         AND    dc.seq_pagamento          = c_seq_pagamento
                         AND   dc.cod_ins               = rs.cod_ins
                         AND   dc.cod_fcrubrica           = fc.cod_fcrubrica
                         AND   fc.cod_rubrica             = rs.cod_rubrica
                         AND   fc.seq_vig_rubrica           > 0
                         AND   fc.cod_ins               = dc.cod_ins
                        and   reg.cod_tipo_beneficio<>'M'

                        union all

                        SELECT   dc.cod_fcrubrica,
                               dc.val_rubrica,
                               dc.flg_natureza,
                               dc.des_informacao,
                               dc.des_complemento,
                               dc.dat_ini_ref,
                               rs.nom_rubrica
                          FROM   TB_DET_CALCULADO dc,
                               TB_FORMULA_CALCULO fc,
                               TB_RUBRICAS rs --,
                              --tb_impresao_rub ir (efv 21102007)
                         WHERE   dc.cod_ins               = reg.cod_ins
                         AND   dc.cod_ide_cli             = reg.cod_ide_cli
                         AND    dc.cod_beneficio          = reg.cod_beneficio
                         AND   dc.tip_processo           = c_tipo_processo
                         AND   dc.per_processo            = c_data_efetiva
                         AND    dc.seq_pagamento          = c_seq_pagamento
                         AND   dc.cod_ins               = rs.cod_ins
                         AND   dc.cod_fcrubrica           = fc.cod_fcrubrica
                         AND   fc.cod_rubrica             = rs.cod_rubrica
                         AND   fc.seq_vig_rubrica           > 0
                         AND   fc.cod_ins               = dc.cod_ins
                        and   reg.cod_tipo_beneficio='M'
                        and exists (select 1 from tb_impresao_rub ir
                                    where  ir.cod_ins=136
                                    and ir.cod_rubrica=fc.cod_rubrica
                                    and ir.seq_vig_rubrica=fc.seq_vig_rubrica
                                    and ir.cod_tipo_processo=dc.tip_processo
                                    and ir.cod_tipo_beneficio=reg.cod_tipo_beneficio
                                    and ir.dat_fim_vig is null
                                    and ir.flg_imprime='S')
                        ) LOOP


            DR_MesAnoCompetencia := TO_CHAR(c_data_efetiva,'MM/YYYY');
            DR_IDFuncional       := SUBSTR(LPAD(reg.num_matricula,10,'0'),1,8) || '/' || SUBSTR(LPAD(reg.num_matricula,10,'0'),9,2) || '/' || '00';
            DR_CodRubrica        := LPAD(TO_CHAR(c2.cod_fcrubrica),5,0);
            DR_DescricaoRubrica  := SUBSTR(RPAD(NVL(c2.nom_rubrica,' '),30,' '),1,30);
            DR_Informacao        := SUBSTR(LPAD(NVL(c2.des_informacao,' '),10,' '),1,10);
            DR_Complemento       := SUBSTR(LPAD(NVL(c2.des_complemento,' '),15,' '),1,15);
            DR_Competencia       := TO_CHAR(c2.dat_ini_ref,'MM/YYYY');

            IF c2.flg_natureza = 'C' THEN
               DR_Vantagens    := LPAD(TO_CHAR(ROUND(c2.val_rubrica,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
               DR_Descontos    := LPAD(TO_CHAR(0000000000,'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
            ELSE
                DR_Descontos  := LPAD(TO_CHAR(ROUND(c2.val_rubrica,2),'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
                DR_Vantagens  := LPAD(TO_CHAR(0000000000,'999G999D99','NLS_NUMERIC_CHARACTERS = '||''',.'''),10,0);
            END IF;

               /*-------------------
                 GRAVA OS MOVIMENTOS DO CONTRA CHEQUE
                 -------------------*/
             BEGIN

               c_iddetalhe := c_iddetalhe + 1;

               /*-------------------
              OBTEM O PROXIMO ID DA TABELA ATRAVES DA SEQUENCE
                ------------------
            SELECT   SEQ_CNTR_CHQE_BENE_DETL.NEXTVAL
            INTO  c_iddetalhe
            FROM  DUAL;
            */

              INSERT INTO TB_ECT_CNTR_CHQE_BENE_DETL
                  (  IDARQUIVO,
                  IDCONTRACHEQUE,
                  IDDETALHE,
                  MESANOCOMPETENCIA,
                  IDFUNCIONAL,
                  CODRUBRICA,
                  DESCRICAORUBRICA,
                  INFORMACAO,
                  COMPLEMENTO,
                  COMPETENCIA,
                  VANTAGENS,
                  DESCONTOS  )
            VALUES  (   NULL,
                          c_idcontracheque,
                          c_iddetalhe,
                          DR_MesAnoCompetencia,
                          DR_IDFuncional,
                          DR_CodRubrica,
                          DR_DescricaoRubrica,
                          DR_Informacao,
                          DR_Complemento,
                          DR_Competencia,
                          DR_Vantagens,
                          DR_Descontos );

            commit;

          EXCEPTION
            WHEN OTHERS THEN
              c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELA DE HISTORICO TB_ECT_CNTR_CHQE_BENE_DETL';
              RAISE; --e_ERROR;
          END;

        END LOOP;

      EXCEPTION
        WHEN e_ERROR THEN
              c_cont_erro := c_cont_erro + 1;
            WHEN OTHERS  THEN
              c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELA DE HISTORICO TB_ECT_CNTR_CHQE_BENE';
              RAISE; --e_ERROR;
      END;

    END LOOP;

    COMMIT;

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'F' - Finalizado
      -------------------------*/
PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '02',   -- Dados historicos de contra cheques
                      p_cod_ins        => 1, --136,
                      p_per_processo          => I_PERPROCESSO,
                      p_cod_tip_processo    => I_TIPPROCESSO,
                      p_seq_pagamento      => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                      p_des_tipos_benef        => I_DES_NOM_BENEF,
                      p_cod_tipo_beneficio  => I_COD_TIPO_BENEF,
                      p_cod_banco        => NULL,
                      p_num_tip_emissao    => NULL,
                      p_cod_ide_cli      => NULL,
                      p_dat_agenda_proc    => SYSDATE,
                      p_flg_processamento    => 'F' ,  -- Agendado
                      p_msg_erro        => c_ERROR_MSG, -- Variavel da rotina para receber a mensagem,
                      p_cod_cargo       => null,
                      p_cod_categoria   => null,
                      p_cod_pccs        => null,
                      p_cod_entidade    => I_COD_ENTIDADE,
                       p_flg_retorno      => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    commit;

  EXCEPTION

    WHEN e_ERROR THEN
         DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
         DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: ORA-'||SQLERRM);
         I_MSG_ERRO := c_ERROR_MSG;
         RAISE e_ERROR;

    WHEN OTHERS THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
         DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: ORA- '||SQLERRM);
         I_MSG_ERRO := c_ERROR_MSG;
         RAISE e_ERROR;
  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/
PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '02',   -- Dados historicos de contra cheques
                      p_cod_ins        => 1, --136,
                      p_per_processo          => I_PERPROCESSO,
                      p_cod_tip_processo    => I_TIPPROCESSO,
                      p_seq_pagamento      => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                      p_des_tipos_benef        => I_DES_NOM_BENEF,
                      p_cod_tipo_beneficio  => I_COD_TIPO_BENEF,
                      p_cod_banco        => NULL,
                      p_num_tip_emissao    => NULL,
                      p_cod_ide_cli      => NULL,
                      p_dat_agenda_proc    => SYSDATE,
                      p_flg_processamento    => 'E' ,  -- Agendado
                      p_msg_erro        => c_ERROR_MSG, -- Variavel da rotina para receber a mensagem,
                      p_cod_cargo       => null,
                      p_cod_categoria   => null,
                      p_cod_pccs        => null,
                      p_cod_entidade    => I_COD_ENTIDADE,
                       p_flg_retorno      => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log




END GERA_HIST_ECT;


PROCEDURE GERA_ARQ_CNAB_TERCEIROS( I_PERPROCESSO     IN TB_FOLHA.PER_PROCESSO%TYPE,
                              I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
                              I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
                              I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
                              I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
                              I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
                              I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
                              I_GRP_PAGTO         IN NUMBER,
                              I_DEFINITIVO        IN VARCHAR2,
                              I_NOM_ARQUIVO       OUT VARCHAR2,
                              I_MSG_ERRO          OUT VARCHAR2                ) IS

/*------------------Grupos de Pagamento------------------------*/
c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

type TypeDetLst is table of tb_folha%rowtype
                index by binary_integer;

type TypeDetIdx is table of TypeDetLst
                index by binary_integer;

type TypeConvenio is table of varchar2(10)
                  index by binary_integer;

vConvenio             TypeConvenio;
vDetalhe              TypeDetIdx;


i_conv                NUMBER    := 0;
i_pagto               NUMBER    := 0;
v_lote                NUMBER    := 0;
v_seq                 NUMBER    := 0;
vcontador             NUMBER    := 0;
vQtdeMoedaDetalhe     NUMBER    := 0;
vQtdeArq              NUMBER    := 0;
vLimQuebra            NUMBER(8) := 300000;        -- Define a limite de quebra de arquivo paa um mesmo convenio
lFim                  BOOLEAN:=FALSE;
lOraErr               BOOLEAN:=FALSE;
vLinha                VARCHAR2(240);
vTipo                 NUMBER:=0;
/*--------------Variaveis Auxiliares para calculo de DV--------*/
vDvAg    char(1):=null;

/*--------------Variaveis Para Geracao de Arquivo--------------*/
f_OutputCredito            UTL_FILE.FILE_TYPE;
c_OutputLocation           VARCHAR2(100) := 'ARQS_BANCARIOS';
c_OutputFileCredito        VARCHAR2(100) := NULL;

f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

c_OutputFileCredito_Crip VARCHAR2(100);

c_desc_conv       VARCHAR2(20);
c_grupo_pagamento NUMBER:=0;
c_data_efetiva    DATE := NULL;
c_tipo_processo   CHAR(1) := NULL;
c_cod_ins         NUMBER := 1;
c_cont_credito    NUMBER(6)  := 0;
c_cont_cadastro   NUMBER(6)  := 0;
c_total_liquido   NUMBER(18,2) := 0;
c_total_geral     NUMBER(18,2) := 0;
cs_cod_banco      CHAR(03) := '   ';
c_cont_seq        NUMBER(6) := 0;
c_erro_log        CHAR(02) := '00';
c_num_nsa          NUMBER(8) := 0;
c_cont_tot        NUMBER(8) := 0;
c_definitivo      VARCHAR2(01);
c_seq_conv        NUMBER(02):=0;
c_count_seg_a     NUMBER(8):=0;

/*----------------Header Arquivo---------------------------------*/
HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
HR_Digito          CHAR(01) := 'X';                     -- DV
HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
HR_Modalidade       VARCHAR2(02) := '00';
HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
HR_NRLayout        CHAR(03) := '082';                   -- Fixo
HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
HR_Brancos6        VARCHAR2(7) := ' ';

/*----------------Header Lote------------------------------------*/
HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
HL_TipoServico       CHAR(02) := '  ';
HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
HL_VersaoLote        CHAR(03) := '043';
HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
HL_Digito            CHAR(01) := 'X';          -- DV
HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
HL_UF                CHAR(02) := 'SP';            -- UF
HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

/*----------------Detalhe Registro 3 Segmento A--------------------*/
DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

-- Campos utilizados somente quando pagto for credido em conta corrente
DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
------------------------------------------------------------------------

DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
DR_Brancos1          CHAR(12) := ' ';
DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
DR_CodOcorrencia     CHAR(10) := ' ';

/*----------------Detalhe Registro 3 Segmento B---------------------------*/
DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
DRB_Brancos1          VARCHAR2(03) := ' ';
DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
DRB_UF                VARCHAR2(02) := 'SP';      -- UF
DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
DRB_Brancos2          VARCHAR2(15) := ' ';

/*----------------Trailler Lote--------------------------------------------*/
TL_CodBanco           CHAR(03) := '000';
TL_LoteServico        CHAR(04) := '0001';
TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
TL_Brancos1           CHAR(09) := ' ';
TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
TL_Brancos2           CHAR(171) := ' ';
TL_CodOcorrencia      CHAR(10) := ' ';

/*----------------Trailler do Arquivo--------------------------------------*/
TR_CodBanco           CHAR(03) := '000';
TR_LoteServico        CHAR(04) := '9999';
TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
TR_Brancos1           CHAR(09) := ' ';
TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
TR_Brancos2           CHAR(205) := ' ';

vprocesso             CHAR(100) := ' ';

CURSOR c1 IS
    SELECT
            ff.cod_beneficio,
            ff.cod_ide_cli_ben,
            TRUNC(ff.val_liquido,2) val_liquido,
            SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30) nom_pessoa_fisica,
            pf.num_cpf
    FROM    user_ipesp.tb_rel_folha_aux rr,
            user_ipesp.TB_FOLHA_TERCEIROS FF,
            TB_PESSOA_FISICA       PF
    WHERE   rr.cod_ins               = c_cod_ins
      and   rr.tip_processo          = I_TIPPROCESSO
      and   rr.seq_pagamento         = I_SEQ_PAGAMENTO
      and   rr.per_processo          = I_PERPROCESSO
      and   rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
      and   rr.dat_pgto              = c_data_efetiva
      and   ff.cod_ins               = RR.COD_INS
      AND   ff.per_processo          = RR.PER_PROCESSO
      AND   ff.tip_processo          = RR.TIP_PROCESSO
      AND   ff.seq_pagamento         = RR.SEQ_PAGAMENTO            -- NVL(DECODE(I_SEQ_PAGAMENTO,1,NULL,I_SEQ_PAGAMENTO), ff.seq_pagamento)
      AND   FF.COD_BENEFICIO         = RR.COD_BENEFICIO
      AND   FF.COD_IDE_CLI           = RR.COD_IDE_CLI
      AND   ff.val_liquido           > 0
      AND   pf.cod_ins               = ff.cod_ins
      AND   pf.cod_ide_cli           = ff.cod_ide_cli_ben
      AND   EXISTS  ( SELECT 1 FROM tb_det_CALCULADO DC
                      WHERE DC.COD_INS        = FF.COD_INS
                      AND   DC.TIP_PROCESSO   = FF.TIP_PROCESSO
                      AND   DC.PER_PROCESSO   = FF.PER_PROCESSO
                      AND   DC.COD_IDE_CLI    = FF.COD_IDE_CLI
                      AND   DC.COD_BENEFICIO  = FF.COD_BENEFICIO
                      AND   DC.COD_FCRUBRICA IN (select distinct cod_rubrica from user_ipesp.tb_rubricas r where r.tip_evento_especial = '8')
                    );



c_ERROR_MSG       VARCHAR2(500);
e_ERROR           EXCEPTION;
vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' )   THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    BEGIN

        SELECT CP.DAT_PAG_EFETIVA,     CP.NUM_GRP,  GP.COD_SEQ_CONVENIO
        INTO   c_data_efetiva,  c_grupo_pagamento,           c_seq_conv
        FROM   user_ipesp.TB_CRONOGRAMA_PAG  CP,
               TB_GRUPO_PAGAMENTO GP
        WHERE   CP.NUM_GRP          = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
        AND     CP.NUM_GRP          = GP.NUM_GRP_PAG
        AND     CP.COD_TIP_PROCESSO = I_TIPPROCESSO
        AND     CP.PER_PROCESSO     = I_PERPROCESSO
        AND     CP.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
        RAISE e_ERROR;
    END;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------

    c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';

    IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w' );
    END IF;

    FOR REG IN C1  LOOP

          BEGIN

            DR_CodBancoFav := NULL;
            DR_CodAgenciaFav := NULL;
            DR_Digito := NULL;
            DR_ContaCorrenteFav := NULL;
            DR_DVConta := NULL;
            DR_Modalidade := NULL;
            DR_COD_IDE_CLI_TERC := NULL;



             SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                    SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                    SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                    ib.num_conta,
                    upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                    DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',
                    DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                    IB.COD_IDE_CLI_TERCEIRO
               INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                    DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
               FROM TB_INFO_BANC_BENEFICIO I, TB_INFORMACAO_BANCARIA IB
              WHERE I.COD_INS = IB.COD_INS
                AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                AND I.COD_BENEFICIO = REG.Cod_Beneficio
                AND I.COD_IDE_CLI = REG.cod_ide_cli_ben;
          EXCEPTION
             WHEN NO_DATA_FOUND THEN
                  BEGIN
                       SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                              ib.num_conta,
                              upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                              IB.COD_IDE_CLI_TERCEIRO
                         INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade,
                              DR_COD_IDE_CLI_TERC
                         FROM TB_INFORMACAO_BANCARIA IB
                        WHERE IB.COD_INS = 1
                          AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                          and not exists
                          (
                                 select 1 from user_ipesp.tb_info_banc_beneficio d
                                  where d.cod_ins = 1
                                  and d.cod_ide_cli = ib.cod_ide_cli
                                  and d.cod_ide_inf_banc = ib.cod_ide_inf_banc
                          );
                   EXCEPTION
                          WHEN TOO_MANY_ROWS THEN
                               SELECT *
                                INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                FROM
                                (

                                    SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                           SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                           SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                           ib.num_conta,
                                           upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                           DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                           IB.COD_IDE_CLI_TERCEIRO
                                      FROM TB_INFORMACAO_BANCARIA IB
                                     WHERE IB.COD_INS = 1
                                       AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                     ORDER BY IB.COD_BANCO
                                 ) WHERE ROWNUM = 1;
                          WHEN NO_DATA_FOUND THEN
                                begin
                                        SELECT *
                                            INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       IB.COD_IDE_CLI_TERCEIRO
                                                  FROM TB_INFORMACAO_BANCARIA IB
                                                 WHERE IB.COD_INS = 1
                                                   AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                                 ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;
                               exception
                                   when no_data_found then
                                       UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
                                       DR_CodBancoFav := '000';
                                       DR_CodAgenciaFav := '00000' ;
                                       DR_Digito := '0';
                                       DR_ContaCorrenteFav := '000000';
                                       DR_DVConta := '0';
                                       DR_Modalidade := '00';
                                       DR_COD_IDE_CLI_TERC := NULL;
                                   when others then
                                         null;
                               end;
                          when others then
                            null;
                   END;
              when others then
                            null;
          END;
        IF (DR_CodAgenciaFav = 0 OR DR_ContaCorrenteFav = 0) THEN
           UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
        END IF;


        BEGIN
           IF DR_CodBancoFav = 1 THEN
                if (DR_Modalidade in (1,51)) then
                  i_conv  := 3; -- poupança
                else
                  i_conv  := 1; -- conta corrente
                end if;
           ELSE
              -- caso for conta judicial
              if (DR_Modalidade in (25,26,27,28)) then
                i_conv  := 4;
              else -- doc
                i_conv  := 2;
              end if;
           END IF;
           i_pagto := vDetalhe(i_conv).count+1;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           i_pagto := 1;
        END;

        vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.Cod_Beneficio;
        vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.cod_ide_cli_ben;
        vDetalhe(i_conv)(i_pagto).cod_banco        := DR_CodBancoFav;
        vDetalhe(i_conv)(i_pagto).num_agencia      := DR_CodAgenciaFav;
        vDetalhe(i_conv)(i_pagto).num_dv_agencia   := DR_Digito;
        vDetalhe(i_conv)(i_pagto).num_conta        := DR_ContaCorrenteFav;
        vDetalhe(i_conv)(i_pagto).num_dv_conta     := DR_DVConta;
        vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := CASE WHEN I_CONV = 1 THEN '00' ELSE DR_Modalidade END;
        vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := DR_COD_IDE_CLI_TERC;

        DR_CodBancoFav := NULL;
        DR_CodAgenciaFav := NULL;
        DR_Digito := NULL;
        DR_ContaCorrenteFav := NULL;
        DR_DVConta := NULL;
        DR_Modalidade := NULL;
        DR_CpfBen := NULL;
        DR_NomeBen := NULL;

        -- validação dos dados de terceiro
        IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
              SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                INTO DR_CpfBen, DR_NomeBen
                FROM USER_IPESP.TB_PESSOA_FISICA PF
               WHERE PF.COD_INS = 1
                 AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
        ELSE
           DR_CpfBen := REG.NUM_CPF;
           DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
        END IF;

        vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;             -- CAMPO UTILIZADO PARA O CPF
        vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
        vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;

    END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

    FOR j IN vDetalhe.first..vDetalhe.last
    LOOP

        BEGIN

          IF vDetalhe(j).count > 0 THEN

              <<GET_CONVENIO>>
              BEGIN

                c_num_nsa           := 0;

                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                SELECT   RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                         LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                         LPAD(NVL(CB.COD_CONV,0),9,0),
                         TRIM(CB.DES_CONVENIO)
                INTO   HR_NomBanco,
                       c_num_nsa,
                       HR_CodConvenio,
                       c_desc_conv
                FROM   USER_IPESP.TB_CONVENIO_BANCO CB,
                       TB_BANCO          TB,
                       TB_ENVIO_BANCO    EB
                WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                AND   CB.COD_BANCO        = TB.COD_BANCO
                AND   EB.COD_BANCO        = CB.COD_BANCO
                AND   EB.COD_CONV         = CB.COD_CONV
                AND   EB.PER_PROCESSO     = I_PERPROCESSO
                AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)                 -- EB.COD_ENTIDADE)
                AND   EB.NUM_GRP          = c_grupo_pagamento
                AND   CB.TIPO_PAGTO       = j
                AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                AND   CB.NUM_SEQ          = c_seq_conv;

              EXCEPTION
              WHEN NO_DATA_FOUND THEN

                   BEGIN

                     SELECT LPAD(NVL(CB.COD_CONV,0),9,0), CB.DES_CONVENIO, CB.NUM_NSA
                     INTO   HR_CodConvenio, c_desc_conv, c_num_nsa
                     FROM TB_CONVENIO_BANCO CB
                     WHERE CB.COD_BANCO = NVL(I_BANCO,001)
                     AND   CB.COD_INS   = c_cod_ins
                     AND   CB.TIPO_PAGTO= j
                     AND   CB.NUM_SEQ   = c_seq_conv;

                     -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                     INSERT INTO user_ipesp.TB_ENVIO_BANCO EB
                     (
                       COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                       SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                       NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                       NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                       COD_CONV
                     )
                     VALUES
                     (
                       c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                       I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                       0                        , SYSDATE                  , SYSDATE                ,
                       USER                     , 'GERA_ARQ_CNAB'          , c_grupo_pagamento      ,
                       HR_CodConvenio
                     );

                   EXCEPTION
                   WHEN OTHERS THEN
                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                     lOraErr     := TRUE;
                     RAISE e_ERROR;

                   END;

              WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;

              END GET_CONVENIO;


              --DALVES 06/07/2016 -- TASK31674
              --Alteração do campo Tipo de Serviço
              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                 HL_Lancamento  := '01';
                 HL_TipoServico := '30'; --Pagamento Salários
              ELSIF c_desc_conv in ('DOC','DOC - CONTA JUDICIAL') THEN
                 HL_Lancamento  := '03'; -- DOC
                 HL_TipoServico := '98'; -- Pagamento Diversos
              ELSE
                 HL_Lancamento  := '05'; -- POUPANCA
                 HL_TipoServico := '98';
              END IF;

          ELSE
              GOTO END_LOOP;
          END IF;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           GOTO END_LOOP;
        END;

        BEGIN

          c_count_seg_a := 0;
          c_cont_tot    := 0;
          c_cont_seq    := 0;
          v_Seq         := 0;
          vQtdeArq      := 0;
          c_total_geral := 0;
          HR_Sequencial := nvl(c_num_nsa,0);
          lFim          := FALSE;

          IF vDetalhe(j).count > 0 THEN

              FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                  c_count_seg_a := c_count_seg_a + 1;
                  c_cont_seq := c_cont_seq + 1;
                  c_cont_tot := c_cont_tot + 1;

                  <<PRINT_FILE>>
                  BEGIN

                      IF k = 1                             OR
                         mod( c_cont_seq, vLimQuebra ) = 0 THEN

                          IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                              IF c_cont_tot >= vDetalhe(j).last THEN
                                lFim := TRUE;
                              ELSE
                                lFim := FALSE;
                              END IF;

                              TL_LoteServico    := LPAD(v_lote,4,0);
                              TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                              TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                              TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                              UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                                  TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                  TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia ||CHR(13)   );

                              TR_QTDRegLote    := LPAD(v_lote,6,'0');
                              TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                              TR_QtdContas     := LPAD(1,6,0);

                              UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico  ||  TR_RegistroDet  ||
                                                                    TR_Brancos1    || TR_QTDRegLote   ||  TR_QTDRegArq    ||
                                                                    TR_QtdContas  || TR_Brancos2      || CHR(13));

                              UTL_FILE.FCLOSE( f_OutputCredito );

                          END IF;

                          c_cont_seq           := 1;
                          v_Seq                := NVL(v_Seq,0) + 1;
                          v_lote               := 1;
                          c_total_liquido      := 0;
                          vQtdeArq             := NVL(vQtdeArq,0) + 1;
                          HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                          c_OutputFileCredito_Crip := null;
                          c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                          c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( c_grupo_pagamento, '0' ), 2, '0' );

                          IF c_definitivo = 'S' THEN
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                          ELSE
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                          END IF;

                          IF I_NOM_ARQUIVO IS NULL THEN
                             I_NOM_ARQUIVO := c_OutputFileCredito;
                          ELSE
                             I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                          END IF;

                          BEGIN

                            IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                               f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                            END IF;

                          EXCEPTION
                            WHEN UTL_FILE.INVALID_PATH THEN
                                 c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_MODE THEN
                                 c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_OPERATION THEN
                                 c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN OTHERS THEN
                                 c_ERROR_MSG := SQLERRM;
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                          END;

                          -- Header de Arquivo
                          UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                HR_Brancos5         || CHR(13));
                          -- Header de Lote
                          UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                             HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                             HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                             HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                             HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                             HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                             HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                             HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                             HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                             HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   ||CHR(13)       );

                      END IF;

                      DR_LoteServico       := LPAD(v_lote, 4, 0);
                      DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                      DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                      DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                      DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                      DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                      select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                      DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                      DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                      DR_DataLancamento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                      DR_Zeros1             := Null;
                      DR_Modalidade         := Null;

                      IF DR_CodBancoFav = 1 THEN
                          SP_CALCULA_DV_bb( 1,
                                         LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                         Null,
                                         vDvAg );

                         DR_Digito             := vDvAg;
                         DR_CamaraCentra       := '000';

                         DR_ContaCorrenteFav  := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                         if (vDetalhe(j)(k).cod_tipo_conta in (1,51)) then
                             vTipo                 := 3; -- conta poupanca
                         else
                             vTipo                 := 1; -- cc
                         end if;

                      ELSE

                         DR_CamaraCentra       := '018';
                         DR_Digito             := ' ';

                         IF (DR_CodBancoFav = 33) THEN
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                         elsif (DR_CodBancoFav = 104) then
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                         ELSE
                            DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                         END IF;

                         if (vDetalhe(j)(k).cod_tipo_conta in (25,26,27,28)) then
                            vTipo := 4; -- conta judicial
                         else
                            vTipo := 2; -- doc
                         end if;

                      END IF;



                      --
                      vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia ;
                      --

                      -- Imprime Detalhe
                      UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                          DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                          DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                          DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                          DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                          DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                          DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                          DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                          DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                          DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia     || CHR(13));

                      -- Incrementa a tb_envio_arq_bancario
                      INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                      (
                                   COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                      LOTE,                   CONVENIO,                 SEGMENTO,
                                   NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                DT_GERACAO,                   DT_PAGTO,                     NOME,
                                     VALOR,                    NUM_CPF,                  ARQUIVO,
                                     LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                               COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                  DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                              TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                    FLG_PA,                    TIP_MOV,                COD_BENEFICIO,
                              COD_IDENTIFICADOR,          FLG_TERCEIRO,         COD_IDE_CLI_TERCEIRO
                      )
                       VALUES
                       (
                             1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                            DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                             HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                   to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                        c_data_efetiva,        DR_NomeFavorecido,
                                   ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                  null,
                            CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                    vLinha,               c_definitivo,           DR_CodBancoFav,
                          DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                             I_PERPROCESSO,
                             I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                       'T',                        '0', vDetalhe(j)(k).cod_beneficio,
                              DR_NumeroDoc,
                              CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                              vDetalhe(j)(k).cod_ide_cli_ben
                       );

                       c_cont_seq := c_cont_seq + 1;
                       DRB_LoteServico       := LPAD(v_lote,4,0);                     -- Lote de Servico
                       DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                       DRB_DataVencimento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                       DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');               -- sequencial do registro no lote
                       DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);

                      --IF DR_CodBancoFav != 1 THEN
                         -- SEGMENTO B
                         UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                                             DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                             DRB_TipoInscricao     || DRB_NumInscricao       ||  DRB_Endereco        ||
                                                             DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                             DRB_NomeCidade        || DRB_CEP                ||  DRB_UF              ||
                                                             DRB_DataVencimento    || DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                                             DRB_ValorDesconto     || DRB_ValorMora          ||  DRB_ValorMulta      ||
                                                             DRB_CodigoFavorecido  || DRB_Brancos2           ||  CHR(13));

                         vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                   DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                   DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                   DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                   DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                   DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                   DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                   DRB_CodigoFavorecido  || DRB_Brancos2     ;


                          INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                             COD_IDENTIFICADOR,               FLG_TERCEIRO,             COD_IDE_CLI_TERCEIRO
                          )
                          VALUES
                          (
                                 1, vDetalhe(j)(k).cod_ide_cli,                      '3',
                               DRB_LoteServico,             HR_CodConvenio,     DRB_CodSegRegDetalhe,
                                 HR_Sequencial,                      vTipo,      DRB_SeqRegistroLote,
                                       to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                            c_data_efetiva,                     NULL,
                                                                         0,
                                                                      null,
                              CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                        vLinha,               c_definitivo,           DR_CodBancoFav,
                              DR_CodAgenciaFav,               DR_Digito, vDetalhe(j)(k).num_conta,
                                    DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                                   I_PERPROCESSO,
                                 I_TIPPROCESSO,            I_SEQ_PAGAMENTO,   LPAD( c_grupo_pagamento, 2, '0' ),
                                           'T',                        '0',  vDetalhe(j)(k).cod_beneficio,
                                  DR_NumeroDoc,
                                  CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                                  vDetalhe(j)(k).cod_ide_cli_ben
                          );

                      --END IF;

                  EXCEPTION
                  WHEN OTHERS THEN
                       c_ERROR_MSG := SQLERRM;
                       I_MSG_ERRO  := c_ERROR_MSG;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END PRINT_FILE;

                  UTL_FILE.FFLUSH(f_OutputCredito);

                  vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                  c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                  c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                  vcontador := vcontador + 1;
                  vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                  IF c_definitivo = 'S' THEN

                      begin
                            UPDATE   TB_FOLHA_TERCEIROS
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            and     cod_beneficio  = vDetalhe(j)(k).cod_beneficio
                            AND     cod_ide_cli_ben    = vDetalhe(j)(k).cod_ide_cli;
                        exception
                            when others then
                              null;
                     end;
                  END IF;

              END LOOP;

              IF not lFim THEN

                TL_LoteServico     := LPAD(v_lote,4,0);
                TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                    TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                    TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                TR_QTDRegLote    := LPAD(v_lote,6,'0');
                TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                TR_QtdContas     := LPAD(1,6,0);

                UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                      TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                      TR_QtdContas  || TR_Brancos2  ||CHR(13) );
                UTL_FILE.FCLOSE( f_OutputCredito );
              END IF;

              IF c_definitivo = 'S' THEN

                /*------------------------------------------
                  Atualiza os controles de envio para banco
                ------------------------------------------*/
                BEGIN

                      c_num_nsa := vQtdeArq + c_num_nsa;

                      UPDATE   TB_ENVIO_BANCO
                      SET    VAL_LIQUIDO      = c_total_geral,
                            DAT_ENVIO        = SYSDATE,
                            DAT_ULT_ATU      = SYSDATE,
                            NOM_USU_ULT_ATU  = USER,
                            NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                            NUM_NSA         = c_num_nsa
                      WHERE  COD_INS           = c_cod_ins
                      AND    PER_PROCESSO     = I_PERPROCESSO
                      AND    COD_TIP_PROCESSO = I_TIPPROCESSO
                      AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                      AND    COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)
                      AND    COD_BANCO         = NVL(I_BANCO,001)
                      AND   NUM_GRP          = c_grupo_pagamento
                      AND   COD_CONV         = TRUNC( HR_CodConvenio );

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                      UPDATE TB_CONVENIO_BANCO
                      SET NUM_NSA   = c_num_nsa
                      WHERE COD_INS   = c_cod_ins
                      AND   COD_BANCO = NVL(I_BANCO,001)
                      AND   COD_CONV  = TRUNC( HR_CodConvenio )
                      -- 06/07/2010
                      -- Inserida a condicao para atualizar somente o convenio que deve ser afetado por este processo
                      AND   NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ));

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                EXCEPTION
                  WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;
                END;

                COMMIT;

              END IF;

          END IF;

        EXCEPTION
        WHEN OTHERS THEN
          GOTO END_LOOP;

        END;

        COMMIT;

        <<GERA_RESUMO>>
        BEGIN

            IF (c_definitivo = 'S') THEN

                SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                          I_TIPPROCESSO,
                                          I_SEQ_PAGAMENTO,
                                          LPAD( NVL( c_grupo_pagamento, '00' ), 2, '0' ),
                                          c_data_efetiva,
                                          c_OutputFileCredito,
                                          c_OutputFileCredito_Crip,
                                          HR_DataGeracao,
                                          HR_HoraGeracao,
                                          c_total_liquido,
                                          c_count_seg_a,
                                          'T' );

                c_OutputFileCredito := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
                SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);


                -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(c_data_efetiva,'YYYYMMDD'), c_data_efetiva, 'S','A');
                --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO,I_PERPROCESSO,I_SEQ_PAGAMENTO,c_data_efetiva, I_GRP_PAGTO);


            END IF;

        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;

        END;

        <<END_LOOP>>
        IF lOraErr THEN
           I_NOM_ARQUIVO := NULL;
           RAISE e_ERROR;
        END IF;



    END LOOP;

    UTL_FILE.FCLOSE_ALL;
    
    
    -- LJUNIOR EM 05/06/2018
    -- SOLICITADO POR PAULO PARA AGILIZAR O FECHAMENTO
    IF (UPPER(I_DEFINITIVO) = 'S') THEN
      USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_RESUMO_BANCO_ORDJUD (1, I_PERPROCESSO, I_TIPPROCESSO, I_SEQ_PAGAMENTO, I_GRP_PAGTO, c_ERROR_MSG);
      USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||LPAD(I_GRP_PAGTO,2,'0'),1, I_TIPPROCESSO, I_PERPROCESSO, I_SEQ_PAGAMENTO, c_data_efetiva, I_GRP_PAGTO);
    END IF;


  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

    /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                                          p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                          p_cod_banco              => NVL(I_BANCO,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_CNAB_TERCEIROS;

  PROCEDURE GERA_ARQ_SALDO_EXTINCAO
   (
      I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
      I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
      I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
      I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
      I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
      I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
      I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
      I_GRP_PAGTO         IN NUMBER,
      I_DEFINITIVO        IN VARCHAR2,
      I_NOM_ARQUIVO       OUT VARCHAR2,
      I_MSG_ERRO          OUT VARCHAR2
   ) IS

  /*------------------Grupos de Pagamento------------------------*/
  c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

  type TypeDetLst is table of tb_folha%rowtype
                  index by binary_integer;

  type TypeDetIdx is table of TypeDetLst
                  index by binary_integer;

  type TypeConvenio is table of varchar2(10)
                    index by binary_integer;

  vConvenio             TypeConvenio;
  vDetalhe              TypeDetIdx;


  i_conv                NUMBER    := 0;
  i_pagto               NUMBER    := 0;
  v_lote                NUMBER    := 0;
  v_seq                 NUMBER    := 0;
  vcontador             NUMBER    := 0;
  vQtdeMoedaDetalhe     NUMBER    := 0;
  vQtdeArq              NUMBER    := 0;
  vLimQuebra            NUMBER(8) := 300000;        -- Define a limite de quebra de arquivo paa um mesmo convenio
  lFim                  BOOLEAN:=FALSE;
  lOraErr               BOOLEAN:=FALSE;
  vLinha                VARCHAR2(240);
  vTipo                 NUMBER:=0;
  /*--------------Variaveis Auxiliares para calculo de DV--------*/
  vDvAg    char(1):=null;

  /*--------------Variaveis Para Geracao de Arquivo--------------*/
  f_OutputCredito            UTL_FILE.FILE_TYPE;
  c_OutputLocation           VARCHAR2(100) := 'ARQS_BANCARIOS';
  c_OutputFileCredito        VARCHAR2(100) := NULL;

  f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
  c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

  c_OutputFileCredito_Crip VARCHAR2(100);

  c_desc_conv       VARCHAR2(20);
  c_grupo_pagamento NUMBER:=0;
  c_data_efetiva    DATE := NULL;
  c_tipo_processo   CHAR(1) := NULL;
  c_cod_ins         NUMBER := 1;
  c_cont_credito    NUMBER(6)  := 0;
  c_cont_cadastro   NUMBER(6)  := 0;
  c_total_liquido   NUMBER(18,2) := 0;
  c_total_geral     NUMBER(18,2) := 0;
  cs_cod_banco      CHAR(03) := '   ';
  c_cont_seq        NUMBER(6) := 0;
  c_erro_log        CHAR(02) := '00';
  c_num_nsa          NUMBER(8) := 0;
  c_cont_tot        NUMBER(8) := 0;
  c_definitivo      VARCHAR2(01);
  c_seq_conv        NUMBER(02):=0;
  c_count_seg_a     NUMBER(8):=0;

  /*----------------Header Arquivo---------------------------------*/
  HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
  HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
  HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
  HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
  HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
  HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
  HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
  HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
  HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
  HR_Digito          CHAR(01) := 'X';                     -- DV
  HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
  HR_Modalidade       VARCHAR2(02) := '00';
  HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
  HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
  HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
  HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
  HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
  HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
  HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
  HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
  HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
  HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
  HR_NRLayout        CHAR(03) := '082';                   -- Fixo
  HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
  HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
  HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
  HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
  HR_Brancos6        VARCHAR2(7) := ' ';

  /*----------------Header Lote------------------------------------*/
  HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
  HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
  HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
  HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
  HL_TipoServico       CHAR(02) := '  ';
  HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
  HL_VersaoLote        CHAR(03) := '043';
  HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
  HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
  HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
  HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
  HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
  HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
  HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
  HL_Digito            CHAR(01) := 'X';          -- DV
  HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
  HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
  HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
  HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
  HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
  HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
  HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
  HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
  HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
  HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
  HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
  HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
  HL_UF                CHAR(02) := 'SP';            -- UF
  HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
  HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
  HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

  /*----------------Detalhe Registro 3 Segmento A--------------------*/
  DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
  DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
  DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
  DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

  DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
  DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
  DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
  DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

  -- Campos utilizados somente quando pagto for credido em conta corrente
  DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
  DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
  ------------------------------------------------------------------------

  DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
  DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
  DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
  DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
  DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
  DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
  DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
  DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
  DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
  DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
  DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
  DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
  DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
  DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
  DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
  DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
  DR_Brancos1          CHAR(12) := ' ';
  DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
  DR_CodOcorrencia     CHAR(10) := ' ';

  /*----------------Detalhe Registro 3 Segmento B---------------------------*/
  DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
  DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
  DRB_Brancos1          VARCHAR2(03) := ' ';
  DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
  DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
  DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
  DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
  DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
  DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
  DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
  DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
  DRB_UF                VARCHAR2(02) := 'SP';      -- UF
  DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
  DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
  DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
  DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
  DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
  DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
  DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
  DRB_Brancos2          VARCHAR2(15) := ' ';

  /*----------------Trailler Lote--------------------------------------------*/
  TL_CodBanco           CHAR(03) := '000';
  TL_LoteServico        CHAR(04) := '0001';
  TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
  TL_Brancos1           CHAR(09) := ' ';
  TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
  TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_Brancos2           CHAR(171) := ' ';
  TL_CodOcorrencia      CHAR(10) := ' ';

  /*----------------Trailler do Arquivo--------------------------------------*/
  TR_CodBanco           CHAR(03) := '000';
  TR_LoteServico        CHAR(04) := '9999';
  TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
  TR_Brancos1           CHAR(09) := ' ';
  TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
  TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
  TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
  TR_Brancos2           CHAR(205) := ' ';

  vprocesso             CHAR(100) := ' ';

  CURSOR c1 IS
      /*SELECT
              ff.cod_beneficio,
              ff.cod_ide_cli_ben,
              TRUNC(SUM(DECODE(FF.FLG_NATUREZA,'C',FF.VAL_RUBRICA, FF.VAL_RUBRICA*-1)),2) AS val_liquido,
              --TRUNC(ff.val_liquido,2) val_liquido,
              SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30) nom_pessoa_fisica,
              pf.num_cpf
      FROM    user_ipesp.tb_rel_folha_aux rr,
              user_ipesp.TB_HDET_CALCULADO FF,
              TB_PESSOA_FISICA       PF
      WHERE   rr.cod_ins               = c_cod_ins
        and   rr.tip_processo          = I_TIPPROCESSO
        and   rr.seq_pagamento         = I_SEQ_PAGAMENTO
        and   rr.per_processo          = I_PERPROCESSO
        and   rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
        and   rr.dat_pgto              = c_data_efetiva
        and   ff.cod_ins               = RR.COD_INS
        AND   ff.per_processo          = RR.PER_PROCESSO
        AND   ff.tip_processo          = RR.TIP_PROCESSO
        AND   ff.seq_pagamento         = RR.SEQ_PAGAMENTO            -- NVL(DECODE(I_SEQ_PAGAMENTO,1,NULL,I_SEQ_PAGAMENTO), ff.seq_pagamento)
        AND   FF.COD_BENEFICIO         = RR.COD_BENEFICIO
        and   ff.dt_fechamento         = rr.dat_pgto
        AND   FF.COD_IDE_CLI           = RR.COD_IDE_CLI
        AND   pf.cod_ins               = ff.cod_ins
        AND   pf.cod_ide_cli           = ff.cod_ide_cli_ben
      GROUP BY ff.cod_beneficio,
               ff.cod_ide_cli_ben,
               SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30),
               pf.num_cpf;*/

  --TT41815 DALVES 11/08/2017
  SELECT HDET.COD_BENEFICIO,
         R.COD_REGISTRO,
         HDET.COD_IDE_CLI_BEN,
         SUBSTR(RPAD(HDET.NOM_PESSOA_FISICA, 30, ' '), 1, 30) NOM_PESSOA_FISICA,
         HDET.NUM_CPF,
         HDET.VAL_LIQUIDO +
         ROUND(TRUNC((NVL(SUM(R.VALOR), 0) / 100) *
                     (SELECT NVL(VAL_PERC_RATEIO, 0)
                        FROM USER_IPESP.TB_RATEIO_SALDO_EXTINCAO R
                       WHERE R.COD_INS = 1
                         AND R.COD_BENEFICIO = hdet.COD_BENEFICIO
                         AND R.COD_IDE_CLI_BEN = hdet.COD_IDE_CLI
                         AND R.COD_IDE_CLI_TERC = HDET.COD_IDE_CLI_BEN
                         AND R.VAL_PERC_RATEIO > 0
                         AND R.COD_REGISTRO = (
                                                 SELECT MAX(RR.COD_REGISTRO)
                                                    FROM USER_IPESP.TB_RATEIO_SALDO_EXTINCAO RR
                                                   WHERE RR.COD_INS = 1
                                                     AND RR.COD_BENEFICIO = R.COD_BENEFICIO
                                                     AND RR.COD_IDE_CLI_BEN = R.COD_IDE_CLI_BEN
                                                     AND RR.COD_IDE_CLI_TERC = R.COD_IDE_CLI_TERC
                                                     AND RR.VAL_PERC_RATEIO > 0
                                                     AND RR.COD_REGISTRO IS NOT NULL
                                               )
                         AND R.COD_REGISTRO IS NOT NULL),
                     4),
               2) AS VAL_LIQUIDO
    FROM (SELECT FF.COD_INS,
                 FF.COD_BENEFICIO,
                 FF.COD_IDE_CLI_BEN,
                 FF.COD_IDE_CLI,
                 TRUNC(SUM(DECODE(FF.FLG_NATUREZA,
                                  'C',
                                  FF.VAL_RUBRICA,
                                  FF.VAL_RUBRICA * -1)),
                       2) AS VAL_LIQUIDO,
                 SUBSTR(RPAD(PF.NOM_PESSOA_FISICA, 30, ' '), 1, 30) NOM_PESSOA_FISICA,
                 PF.NUM_CPF
            FROM USER_IPESP.TB_REL_FOLHA_AUX  RR,
                 USER_IPESP.TB_HDET_CALCULADO FF,
                 TB_PESSOA_FISICA             PF
           WHERE RR.COD_INS = c_cod_ins
             AND RR.TIP_PROCESSO = I_TIPPROCESSO
             AND RR.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
             AND RR.PER_PROCESSO = I_PERPROCESSO
             AND RR.NUM_GRUPO = LPAD(I_GRP_PAGTO, 2, '0')
             AND RR.DAT_PGTO = c_data_efetiva
             AND FF.COD_INS = RR.COD_INS
             AND FF.PER_PROCESSO = RR.PER_PROCESSO
             AND FF.TIP_PROCESSO = RR.TIP_PROCESSO
             AND FF.SEQ_PAGAMENTO = RR.SEQ_PAGAMENTO
             AND FF.COD_BENEFICIO = RR.COD_BENEFICIO
             AND FF.DT_FECHAMENTO = RR.DAT_PGTO
             AND FF.COD_IDE_CLI = RR.COD_IDE_CLI
             AND PF.COD_INS = FF.COD_INS
             AND PF.COD_IDE_CLI = FF.COD_IDE_CLI_BEN
           GROUP BY FF.COD_INS,
                    FF.COD_BENEFICIO,
                    FF.COD_IDE_CLI_BEN,
                    FF.COD_IDE_CLI,
                    SUBSTR(RPAD(PF.NOM_PESSOA_FISICA, 30, ' '), 1, 30),
                    PF.NUM_CPF) HDET,
         USER_IPESP.TB_REENVIO_BANCARIO_EXT R
   WHERE HDET.COD_INS = R.COD_INS(+)
     AND HDET.COD_BENEFICIO = R.COD_BENEFICIO(+)
     AND HDET.COD_IDE_CLI = R.COD_IDE_CLI_BEN(+)
     AND (R.COD_REGISTRO =
         (SELECT MAX(COD_REGISTRO)
             FROM TB_REENVIO_BANCARIO_EXT
            WHERE COD_INS = R.COD_INS
              AND COD_BENEFICIO = R.COD_BENEFICIO
              AND COD_IDE_CLI_BEN = R.COD_IDE_CLI_BEN) OR
         R.COD_REGISTRO IS NULL)
   GROUP BY HDET.COD_BENEFICIO,
            hdet.COD_IDE_CLI,
            R.COD_REGISTRO,
            HDET.COD_IDE_CLI_BEN,
            SUBSTR(RPAD(HDET.NOM_PESSOA_FISICA, 30, ' '), 1, 30),
            HDET.NUM_CPF,
            HDET.VAL_LIQUIDO
   ORDER BY HDET.COD_BENEFICIO;

  DR_NumeroDocSeq         VARCHAR2(20);        -- Numero do documento  p/ empresa (Doc,NF,NP
  V_COD_BENEFICIO_ANT     VARCHAR2(20);

  c_ERROR_MSG       VARCHAR2(500);
  e_ERROR           EXCEPTION;
  vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' )   THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    BEGIN

        SELECT CP.DAT_PAG_EFETIVA,     CP.NUM_GRP,  GP.COD_SEQ_CONVENIO
        INTO   c_data_efetiva,  c_grupo_pagamento,           c_seq_conv
        FROM   user_ipesp.TB_CRONOGRAMA_PAG  CP,
               TB_GRUPO_PAGAMENTO GP
        WHERE   CP.NUM_GRP          = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
        AND     CP.NUM_GRP          = GP.NUM_GRP_PAG
        AND     CP.COD_TIP_PROCESSO = I_TIPPROCESSO
        AND     CP.PER_PROCESSO     = I_PERPROCESSO
        AND     CP.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
        RAISE e_ERROR;
    END;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------

    c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';

    IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w' );
    END IF;

    DR_NumeroDocSeq := NULL;
    V_COD_BENEFICIO_ANT := 0;
    FOR REG IN C1  LOOP

          BEGIN

            DR_CodBancoFav := NULL;
            DR_CodAgenciaFav := NULL;
            DR_Digito := NULL;
            DR_ContaCorrenteFav := NULL;
            DR_DVConta := NULL;
            DR_Modalidade := NULL;
            DR_COD_IDE_CLI_TERC := NULL;



             SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                    SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                    SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                    ib.num_conta,
                    upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                    DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',
                    DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                    IB.COD_IDE_CLI_TERCEIRO
               INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                    DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
               FROM TB_INFO_BANC_BENEFICIO I, TB_INFORMACAO_BANCARIA IB
              WHERE I.COD_INS = IB.COD_INS
                AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                AND I.COD_BENEFICIO = REG.Cod_Beneficio
                AND I.COD_IDE_CLI = REG.cod_ide_cli_ben;
          EXCEPTION
             WHEN NO_DATA_FOUND THEN
                  BEGIN
                       SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                              ib.num_conta,
                              upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                              IB.COD_IDE_CLI_TERCEIRO
                         INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade,
                              DR_COD_IDE_CLI_TERC
                         FROM TB_INFORMACAO_BANCARIA IB
                        WHERE IB.COD_INS = 1
                          AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                          and not exists
                          (
                                 select 1 from user_ipesp.tb_info_banc_beneficio d
                                  where d.cod_ins = 1
                                  and d.cod_ide_cli = ib.cod_ide_cli
                                  and d.cod_ide_inf_banc = ib.cod_ide_inf_banc
                          );
                   EXCEPTION
                          WHEN TOO_MANY_ROWS THEN
                               SELECT *
                                INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                FROM
                                (

                                    SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                           SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                           SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                           ib.num_conta,
                                           upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                           DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                           IB.COD_IDE_CLI_TERCEIRO
                                      FROM TB_INFORMACAO_BANCARIA IB
                                     WHERE IB.COD_INS = 1
                                       AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                     ORDER BY IB.COD_BANCO
                                 ) WHERE ROWNUM = 1;
                          WHEN NO_DATA_FOUND THEN
                                begin
                                        SELECT *
                                            INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       IB.COD_IDE_CLI_TERCEIRO
                                                  FROM TB_INFORMACAO_BANCARIA IB
                                                 WHERE IB.COD_INS = 1
                                                   AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                                 ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;
                               exception
                                   when no_data_found then
                                       UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
                                       DR_CodBancoFav := '000';
                                       DR_CodAgenciaFav := '00000' ;
                                       DR_Digito := '0';
                                       DR_ContaCorrenteFav := '000000';
                                       DR_DVConta := '0';
                                       DR_Modalidade := '00';
                                       DR_COD_IDE_CLI_TERC := NULL;
                                   when others then
                                         null;
                               end;
                          when others then
                            null;
                   END;
              when others then
                            null;
          END;
          IF (DR_CodAgenciaFav = 0 OR DR_ContaCorrenteFav = 0) THEN
             UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
          END IF;


          BEGIN
             IF DR_CodBancoFav = 1 THEN
                  if (DR_Modalidade in (1,51)) then
                    i_conv  := 3;
                  else
                    i_conv  := 1;
                  end if;
             ELSE
                i_conv  := 2;
             END IF;
             i_pagto := vDetalhe(i_conv).count+1;

          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             i_pagto := 1;
          END;

          vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.Cod_Beneficio;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.cod_ide_cli_ben;
          vDetalhe(i_conv)(i_pagto).cod_banco        := DR_CodBancoFav;
          vDetalhe(i_conv)(i_pagto).num_agencia      := DR_CodAgenciaFav;
          vDetalhe(i_conv)(i_pagto).num_dv_agencia   := DR_Digito;
          vDetalhe(i_conv)(i_pagto).num_conta        := DR_ContaCorrenteFav;
          vDetalhe(i_conv)(i_pagto).num_dv_conta     := DR_DVConta;
          vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := CASE WHEN I_CONV = 1 THEN '00' ELSE DR_Modalidade END;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := DR_COD_IDE_CLI_TERC;

          DR_CodBancoFav := NULL;
          DR_CodAgenciaFav := NULL;
          DR_Digito := NULL;
          DR_ContaCorrenteFav := NULL;
          DR_DVConta := NULL;
          DR_Modalidade := NULL;
          DR_CpfBen := NULL;
          DR_NomeBen := NULL;

          -- validação dos dados de terceiro
          IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                  INTO DR_CpfBen, DR_NomeBen
                  FROM USER_IPESP.TB_PESSOA_FISICA PF
                 WHERE PF.COD_INS = 1
                   AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
          ELSE
             DR_CpfBen := REG.NUM_CPF;
             DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
          END IF;

          vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;             -- CAMPO UTILIZADO PARA O CPF
          vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
          vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;

          -------------------------------------------------------------------

      -- TT41815 - DALVES 24/08/2017
      -- Geração do código de identificador de agrupação
      IF DR_NumeroDocSeq IS NULL THEN
        select sq_envio_banco.nextval into DR_NumeroDocSeq from dual;
        DR_NumeroDocSeq := lpad(DR_NumeroDocSeq, 20, '0');
      END IF;
          /* TT41815 - DALVES 21/08/2017
            - Preencher a data de pagamento na tb_reenvio_bancario_ext do cod_registro utilizado
            - Alterar o cod_status para 1 (gerado) na tb_reenvio_bancario_ext
           */
      IF REG.COD_BENEFICIO <> V_COD_BENEFICIO_ANT THEN
          BEGIN
            update tb_reenvio_bancario_ext r
               set r.cod_identificador = DR_NumeroDocSeq
                  ,r.dt_pagamento = c_data_efetiva
                  ,r.flg_status = 1 --gerado
            where r.cod_ins = 1
              and r.cod_beneficio = reg.cod_beneficio
              --and r.cod_ide_cli_ben = reg.cod_ide_cli_ben
              and r.cod_registro = reg.cod_registro;
          EXCEPTION
            WHEN OTHERS THEN
              UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'ERRO AO ATUALIZAR TB_REENVIO_BANCARIO_EXT: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
          END;
          V_COD_BENEFICIO_ANT := REG.COD_BENEFICIO;
      END IF;
    END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

    FOR j IN vDetalhe.first..vDetalhe.last
    LOOP

        BEGIN

          IF vDetalhe(j).count > 0 THEN

              <<GET_CONVENIO>>
              BEGIN

                c_num_nsa           := 0;

                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                SELECT   RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                         LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                         LPAD(NVL(CB.COD_CONV,0),9,0),
                         TRIM(CB.DES_CONVENIO)
                INTO   HR_NomBanco,
                       c_num_nsa,
                       HR_CodConvenio,
                       c_desc_conv
                FROM   TB_CONVENIO_BANCO CB,
                       TB_BANCO          TB,
                       TB_ENVIO_BANCO    EB
                WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                AND   CB.COD_BANCO        = TB.COD_BANCO
                AND   EB.COD_BANCO        = CB.COD_BANCO
                AND   EB.COD_CONV         = CB.COD_CONV
                AND   EB.PER_PROCESSO     = I_PERPROCESSO
                AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)                 -- EB.COD_ENTIDADE)
                AND   EB.NUM_GRP          = c_grupo_pagamento
                AND   CB.TIPO_PAGTO       = j
                AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                AND   CB.NUM_SEQ          = c_seq_conv;

              EXCEPTION
              WHEN NO_DATA_FOUND THEN

                   BEGIN

                     SELECT LPAD(NVL(CB.COD_CONV,0),9,0), CB.DES_CONVENIO, CB.NUM_NSA
                     INTO   HR_CodConvenio, c_desc_conv, c_num_nsa
                     FROM TB_CONVENIO_BANCO CB
                     WHERE CB.COD_BANCO = NVL(I_BANCO,001)
                     AND   CB.COD_INS   = c_cod_ins
                     AND   CB.TIPO_PAGTO= j
                     AND   CB.NUM_SEQ   = c_seq_conv;

                     -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                     INSERT INTO TB_ENVIO_BANCO EB
                     (
                       COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                       SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                       NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                       NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                       COD_CONV
                     )
                     VALUES
                     (
                       c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                       I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                       0                        , SYSDATE                  , SYSDATE                ,
                       USER                     , 'GERA_ARQ_CNAB'          , c_grupo_pagamento      ,
                       HR_CodConvenio
                     );

                   EXCEPTION
                   WHEN OTHERS THEN
                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                     lOraErr     := TRUE;
                     RAISE e_ERROR;

                   END;

              WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;

              END GET_CONVENIO;

              --DALVES 06/07/2016 -- TASK31674
              --Alteração do campo Tipo de Serviço
              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                 HL_Lancamento  := '01';
                 HL_TipoServico := '30'; --Pagamento Salários
              ELSIF c_desc_conv = 'DOC' THEN
                 HL_Lancamento  := '03'; -- DOC
                 HL_TipoServico := '98'; -- Pagamento Diversos
              ELSE
                 HL_Lancamento  := '05'; -- POUPANCA
                 HL_TipoServico := '98';
              END IF;

          ELSE

              GOTO END_LOOP;

          END IF;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           GOTO END_LOOP;

        END;

        BEGIN

          c_count_seg_a := 0;
          c_cont_tot    := 0;
          c_cont_seq    := 0;
          v_Seq         := 0;
          vQtdeArq      := 0;
          c_total_geral := 0;
          HR_Sequencial := nvl(c_num_nsa,0);
          lFim          := FALSE;

          IF vDetalhe(j).count > 0 THEN

              FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                  c_count_seg_a := c_count_seg_a + 1;
                  c_cont_seq := c_cont_seq + 1;
                  c_cont_tot := c_cont_tot + 1;

                  <<PRINT_FILE>>
                  BEGIN

                      IF k = 1                             OR
                         mod( c_cont_seq, vLimQuebra ) = 0 THEN

                          IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                              IF c_cont_tot >= vDetalhe(j).last THEN
                                lFim := TRUE;
                              ELSE
                                lFim := FALSE;
                              END IF;

                              TL_LoteServico    := LPAD(v_lote,4,0);
                              TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                              TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                              TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                              UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                                  TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                  TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia ||CHR(13)   );

                              TR_QTDRegLote    := LPAD(v_lote,6,'0');
                              TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                              TR_QtdContas     := LPAD(1,6,0);

                              UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico  ||  TR_RegistroDet  ||
                                                                    TR_Brancos1    || TR_QTDRegLote   ||  TR_QTDRegArq    ||
                                                                    TR_QtdContas  || TR_Brancos2      || CHR(13));

                              UTL_FILE.FCLOSE( f_OutputCredito );

                          END IF;

                          c_cont_seq           := 1;
                          v_Seq                := NVL(v_Seq,0) + 1;
                          v_lote               := 1;
                          c_total_liquido      := 0;
                          vQtdeArq             := NVL(vQtdeArq,0) + 1;
                          HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                          c_OutputFileCredito_Crip := null;
                          c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                          c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( c_grupo_pagamento, '0' ), 2, '0' );

                          IF c_definitivo = 'S' THEN
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                          ELSE
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                          END IF;

                          IF I_NOM_ARQUIVO IS NULL THEN
                             I_NOM_ARQUIVO := c_OutputFileCredito;
                          ELSE
                             I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                          END IF;

                          BEGIN

                            IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                               f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                            END IF;

                          EXCEPTION
                            WHEN UTL_FILE.INVALID_PATH THEN
                                 c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_MODE THEN
                                 c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_OPERATION THEN
                                 c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN OTHERS THEN
                                 c_ERROR_MSG := SQLERRM;
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                          END;

                          -- Header de Arquivo
                          UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                HR_Brancos5         || CHR(13));
                          -- Header de Lote
                          UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                             HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                             HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                             HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                             HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                             HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                             HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                             HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                             HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                             HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   ||CHR(13)       );

                      END IF;

                      DR_LoteServico       := LPAD(v_lote, 4, 0);
                      DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                      DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                      DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                      DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                      DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                      select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                      DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                      DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                      DR_DataLancamento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                      DR_Zeros1             := Null;
                      DR_Modalidade         := Null;

                      IF DR_CodBancoFav = 1 THEN
                          SP_CALCULA_DV_bb( 1,
                                         LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                         Null,
                                         vDvAg );

                         DR_Digito             := vDvAg;
                         DR_CamaraCentra       := '000';

                         DR_ContaCorrenteFav  := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                         if (vDetalhe(j)(k).cod_tipo_conta in (1,51)) then
                             vTipo                 := 3; -- conta poupanca
                         else
                             vTipo                 := 1; -- cc
                         end if;

                      ELSE

                         DR_CamaraCentra       := '018';
                         DR_Digito             := ' ';

                         IF (DR_CodBancoFav = 33) THEN
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                         elsif (DR_CodBancoFav = 104) then
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                         ELSE
                            DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                         END IF;

                         vTipo                 := 2;

                      END IF;



                      --
                      vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia ;
                      --

                      -- Imprime Detalhe
                      UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                          DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                          DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                          DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                          DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                          DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                          DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                          DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                          DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                          DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia     || CHR(13));

                      -- Incrementa a tb_envio_arq_bancario
                      INSERT INTO TB_ENVIO_ARQ_BANCARIO
                      (
                                   COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                      LOTE,                   CONVENIO,                 SEGMENTO,
                                   NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                DT_GERACAO,                   DT_PAGTO,                     NOME,
                                     VALOR,                    NUM_CPF,                  ARQUIVO,
                                     LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                               COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                  DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                              TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                    FLG_PA,                    TIP_MOV,                COD_BENEFICIO,
                              COD_IDENTIFICADOR,          FLG_TERCEIRO,         COD_IDE_CLI_TERCEIRO,
                              OBS_ARQ_BANCARIO
                       )
                       VALUES
                       (
                             1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                            DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                             HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                   to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                        c_data_efetiva,        DR_NomeFavorecido,
                                   ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                  null,
                            CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                    vLinha,               c_definitivo,           DR_CodBancoFav,
                          DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                             I_PERPROCESSO,
                             I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                       'T',                        '0', vDetalhe(j)(k).cod_beneficio,
                              DR_NumeroDoc,
                              'N',
                              vDetalhe(j)(k).cod_ide_cli_ben,
                              'Pagamento originado pelo Fluxo de Saldo de Extinção'
                       );

                       c_cont_seq := c_cont_seq + 1;
                       DRB_LoteServico       := LPAD(v_lote,4,0);                     -- Lote de Servico
                       DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                       DRB_DataVencimento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                       DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');               -- sequencial do registro no lote
                       DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);

                      --IF DR_CodBancoFav != 1 THEN
                         -- SEGMENTO B
                         UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                                             DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                             DRB_TipoInscricao     || DRB_NumInscricao       ||  DRB_Endereco        ||
                                                             DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                             DRB_NomeCidade        || DRB_CEP                ||  DRB_UF              ||
                                                             DRB_DataVencimento    || DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                                             DRB_ValorDesconto     || DRB_ValorMora          ||  DRB_ValorMulta      ||
                                                             DRB_CodigoFavorecido  || DRB_Brancos2           ||  CHR(13));

                         vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                   DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                   DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                   DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                   DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                   DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                   DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                   DRB_CodigoFavorecido  || DRB_Brancos2     ;


                          INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                             COD_IDENTIFICADOR,               FLG_TERCEIRO,             COD_IDE_CLI_TERCEIRO,
                             OBS_ARQ_BANCARIO
                          )
                          VALUES
                          (
                                 1, vDetalhe(j)(k).cod_ide_cli,                      '3',
                                 DRB_LoteServico, HR_CodConvenio, DRB_CodSegRegDetalhe,
                                 HR_Sequencial, vTipo, DRB_SeqRegistroLote,
                                 to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                 c_data_efetiva, NULL,
                                 0,
                                 null,
                                 CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                 vLinha,
                                 c_definitivo,
                                 DR_CodBancoFav,
                                 DR_CodAgenciaFav,               DR_Digito, vDetalhe(j)(k).num_conta,
                                 DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                                 I_PERPROCESSO,
                                 I_TIPPROCESSO,
                                 I_SEQ_PAGAMENTO,
                                 LPAD( c_grupo_pagamento, 2, '0' ),
                                 'T',
                                 '0',
                                 vDetalhe(j)(k).cod_beneficio,
                                 DR_NumeroDoc,
                                 'N',--CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                                 vDetalhe(j)(k).cod_ide_cli_ben,
                                 'Pagamento originado pelo Fluxo de Saldo de Extinção'
                          );

                      --END IF;

                  EXCEPTION
                  WHEN OTHERS THEN
                       c_ERROR_MSG := SQLERRM;
                       I_MSG_ERRO  := c_ERROR_MSG;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END PRINT_FILE;

                  UTL_FILE.FFLUSH(f_OutputCredito);

                  vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                  c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                  c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                  vcontador := vcontador + 1;
                  vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                  /*IF c_definitivo = 'S' THEN

                      begin
                            UPDATE   TB_HFOLHA
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            and     cod_beneficio  = vDetalhe(j)(k).cod_beneficio
                            AND     cod_ide_cli_ben    = vDetalhe(j)(k).cod_ide_cli;
                        exception
                            when others then
                              null;
                     end;
                  END IF;*/

              END LOOP;

              IF not lFim THEN

                TL_LoteServico     := LPAD(v_lote,4,0);
                TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                    TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                    TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                TR_QTDRegLote    := LPAD(v_lote,6,'0');
                TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                TR_QtdContas     := LPAD(1,6,0);

                UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                      TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                      TR_QtdContas  || TR_Brancos2  ||CHR(13) );
                UTL_FILE.FCLOSE( f_OutputCredito );
              END IF;

              IF c_definitivo = 'S' THEN

                /*------------------------------------------
                  Atualiza os controles de envio para banco
                ------------------------------------------*/
                BEGIN

                      c_num_nsa := vQtdeArq + c_num_nsa;

                      UPDATE   TB_ENVIO_BANCO
                      SET    VAL_LIQUIDO      = c_total_geral,
                            DAT_ENVIO        = SYSDATE,
                            DAT_ULT_ATU      = SYSDATE,
                            NOM_USU_ULT_ATU  = USER,
                            NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                            NUM_NSA         = c_num_nsa
                      WHERE  COD_INS           = c_cod_ins
                      AND    PER_PROCESSO     = I_PERPROCESSO
                      AND    COD_TIP_PROCESSO = I_TIPPROCESSO
                      AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                      AND    COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)
                      AND    COD_BANCO         = NVL(I_BANCO,001)
                      AND   NUM_GRP          = c_grupo_pagamento
                      AND   COD_CONV         = TRUNC( HR_CodConvenio );

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                      UPDATE TB_CONVENIO_BANCO
                      SET NUM_NSA   = c_num_nsa
                      WHERE COD_INS   = c_cod_ins
                      AND   COD_BANCO = NVL(I_BANCO,001)
                      AND   COD_CONV  = TRUNC( HR_CodConvenio )
                      -- 06/07/2010
                      -- Inserida a condicao para atualizar somente o convenio que deve ser afetado por este processo
                      AND   NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ));

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                EXCEPTION
                  WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;
                END;

                COMMIT;

              END IF;

          END IF;

        EXCEPTION
        WHEN OTHERS THEN
          GOTO END_LOOP;

        END;

        COMMIT;

        <<GERA_RESUMO>>
        BEGIN

            IF (c_definitivo = 'S') THEN

                SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                          I_TIPPROCESSO,
                                          I_SEQ_PAGAMENTO,
                                          LPAD( NVL( c_grupo_pagamento, '00' ), 2, '0' ),
                                          c_data_efetiva,
                                          c_OutputFileCredito,
                                          c_OutputFileCredito_Crip,
                                          HR_DataGeracao,
                                          HR_HoraGeracao,
                                          c_total_liquido,
                                          c_count_seg_a,
                                          'N' );

                c_OutputFileCredito := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
                SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

                -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(c_data_efetiva,'YYYYMMDD'), c_data_efetiva, 'S','A');
                --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO,I_PERPROCESSO,I_SEQ_PAGAMENTO,c_data_efetiva, I_GRP_PAGTO);


            END IF;

        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;

        END;

        <<END_LOOP>>
        IF lOraErr THEN
           I_NOM_ARQUIVO := NULL;
           RAISE e_ERROR;
        END IF;



    END LOOP;

    UTL_FILE.FCLOSE_ALL;

    -- ATUALIZA
    UPDATE USER_IPESP.TB_SALDO_EXTINCAO S
       SET S.FLG_PROCESSAMENTO = 'F',
           S.TIP_PROCESSO = I_TIPPROCESSO,
           S.PER_PROCESSO = I_PERPROCESSO,
           S.DAT_PAGAMENTO = c_data_efetiva,
           S.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
     WHERE S.COD_INS = 1
       AND S.FLG_PROCESSAMENTO = 'A'
       --AND S.VAL_LIQUIDO > 0
       AND EXISTS
       (
          SELECT 1
            FROM user_ipesp.tb_rel_folha_aux rr
           WHERE rr.cod_ins               = c_cod_ins
             and rr.tip_processo          = I_TIPPROCESSO
             and rr.seq_pagamento         = I_SEQ_PAGAMENTO
             and rr.per_processo          = I_PERPROCESSO
             and rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
             and rr.dat_pgto              = c_data_efetiva
       );

       COMMIT;
    --

  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

        /* DALVES 24/08/2017
         * Atualização do código identificador reenvio de agrupação
         */
        FOR REG IN (
                    SELECT *
                        FROM USER_IPESP.TB_REENVIO_BANCARIO_EXT EA
                       WHERE EA.cod_ins         = 1
                         AND EA.COD_IDENTIFICADOR IS NOT NULL
                         AND EA.DT_PAGAMENTO    = c_data_efetiva
                         AND EA.COD_REGISTRO =
                             (SELECT MAX(COD_REGISTRO)
                                 FROM TB_REENVIO_BANCARIO_EXT
                                WHERE COD_INS = EA.COD_INS
                                  AND COD_BENEFICIO = EA.COD_BENEFICIO
                                  AND COD_IDE_CLI_BEN = EA.COD_IDE_CLI_BEN)
                   )
        LOOP
            BEGIN
                UPDATE USER_IPESP.TB_ENVIO_ARQ_BANCARIO E
                   SET E.COD_IDENTIFICADOR_REENVIO = REG.COD_IDENTIFICADOR
                 WHERE E.COD_INS = c_cod_ins
                   AND E.FLG_DEFINITIVO = 'S'
                   AND E.COD_BENEFICIO = REG.COD_BENEFICIO
                   AND E.COD_IDE_CLI = REG.COD_IDE_CLI_BEN
                   AND E.COD_IDENTIFICADOR = REG.COD_IDENTIFICADOR_PAG_ORIGEM
                   AND E.DT_PAGTO = REG.DT_PAGAMENTO_ORIGEM;

            EXCEPTION
                WHEN OTHERS THEN
                  ROLLBACK;
                  NULL;
            END;

            COMMIT;
       END LOOP;

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

      /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                                          p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                          p_cod_banco              => NVL(I_BANCO,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_SALDO_EXTINCAO;

  PROCEDURE GERA_ARQ_SALDO_EXTINCAO_old
   (
      I_PERPROCESSO       IN TB_FOLHA.PER_PROCESSO%TYPE,
      I_TIPPROCESSO       IN TB_FOLHA.TIP_PROCESSO%TYPE,
      I_BANCO             IN TB_BANCO.COD_BANCO%TYPE,
      I_SEQ_PAGAMENTO     IN TB_PERIODOS_PROCESSAMENTO.SEQ_PAGAMENTO%TYPE,
      I_COD_ENTIDADE      IN TB_ENTIDADE.COD_ENTIDADE%TYPE,
      I_COD_TIPO_BENEF    IN TB_CONCESSAO_BENEFICIO.COD_TIPO_BENEFICIO%TYPE,
      I_DES_NOM_BENEF     IN TB_TIPOS_BENEFICIOS.NOM_TIPO_BENEFICIO%TYPE,
      I_GRP_PAGTO         IN NUMBER,
      I_DEFINITIVO        IN VARCHAR2,
      I_NOM_ARQUIVO       OUT VARCHAR2,
      I_MSG_ERRO          OUT VARCHAR2
   ) IS

  /*------------------Grupos de Pagamento------------------------*/
  c_DesGrupoPagto    tb_grupo_pagamento.des_grp_pag%type;

  type TypeDetLst is table of tb_folha%rowtype
                  index by binary_integer;

  type TypeDetIdx is table of TypeDetLst
                  index by binary_integer;

  type TypeConvenio is table of varchar2(10)
                    index by binary_integer;

  vConvenio             TypeConvenio;
  vDetalhe              TypeDetIdx;


  i_conv                NUMBER    := 0;
  i_pagto               NUMBER    := 0;
  v_lote                NUMBER    := 0;
  v_seq                 NUMBER    := 0;
  vcontador             NUMBER    := 0;
  vQtdeMoedaDetalhe     NUMBER    := 0;
  vQtdeArq              NUMBER    := 0;
  vLimQuebra            NUMBER(8) := 300000;        -- Define a limite de quebra de arquivo paa um mesmo convenio
  lFim                  BOOLEAN:=FALSE;
  lOraErr               BOOLEAN:=FALSE;
  vLinha                VARCHAR2(240);
  vTipo                 NUMBER:=0;
  /*--------------Variaveis Auxiliares para calculo de DV--------*/
  vDvAg    char(1):=null;

  /*--------------Variaveis Para Geracao de Arquivo--------------*/
  f_OutputCredito            UTL_FILE.FILE_TYPE;
  c_OutputLocation           VARCHAR2(100) := 'ARQS_BANCARIOS';
  c_OutputFileCredito        VARCHAR2(100) := NULL;

  f_OutputCreditoLog         UTL_FILE.FILE_TYPE;
  c_OutputFileCreditoLog        VARCHAR2(100) := NULL;

  c_OutputFileCredito_Crip VARCHAR2(100);

  c_desc_conv       VARCHAR2(20);
  c_grupo_pagamento NUMBER:=0;
  c_data_efetiva    DATE := NULL;
  c_tipo_processo   CHAR(1) := NULL;
  c_cod_ins         NUMBER := 1;
  c_cont_credito    NUMBER(6)  := 0;
  c_cont_cadastro   NUMBER(6)  := 0;
  c_total_liquido   NUMBER(18,2) := 0;
  c_total_geral     NUMBER(18,2) := 0;
  cs_cod_banco      CHAR(03) := '   ';
  c_cont_seq        NUMBER(6) := 0;
  c_erro_log        CHAR(02) := '00';
  c_num_nsa          NUMBER(8) := 0;
  c_cont_tot        NUMBER(8) := 0;
  c_definitivo      VARCHAR2(01);
  c_seq_conv        NUMBER(02):=0;
  c_count_seg_a     NUMBER(8):=0;

  /*----------------Header Arquivo---------------------------------*/
  HR_CodBanco        CHAR(03) := '000';                   -- Codigo do Banco na Compensacao
  HR_LoteServicoArq  CHAR(04) := '0000';                  -- Lote de Servico
  HR_RegistroHeader  CHAR(01) := '0';                     -- Identificador Header
  HR_Brancos1        CHAR(09) := ' ';                      -- Reservado Banco
  HR_TipoInscricao   CHAR(01) := '2';                     -- Tipo Inscricao
  HR_CGCEmpresa      VARCHAR2(14) := '09041213000136';    -- CGC Empresa
  HR_CodConvenio     VARCHAR2(09) := ' ';                 -- Codigo Convenio 77143 Civil CC; 77241 Civil DOC; 77259 Militar CC; 77267 Militar DOC; -- Antes 00834 -- MRS
  HR_SiglaSistema    CHAR(04) := '0126';                   -- Sigla do sistema fixo 'PPG'
  HR_AgenciaManConta CHAR(05) := '01897';                 -- Numero Agencia
  HR_Digito          CHAR(01) := 'X';                     -- DV
  HR_Zeros           VARCHAR2(04) := '0';                  -- Reservado
  HR_Modalidade       VARCHAR2(02) := '00';
  HR_ContaCorrente   VARCHAR2(06) := '100957';            --'109106';            -- Conta Corrente
  HR_DVConta         CHAR(01) := '5';                     -- Digito Verificador Conta
  HR_DVAgenciaConta  CHAR(01) := ' ';                     -- Digito Verificador Agencia da Conta
  HR_NomEmpresa      VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';      -- Nome Da Empresa
  HR_NomBanco        CHAR(30) := ' ';                     --  Nome do Banco
  HR_Brancos2        VARCHAR2(10) := ' ';                 -- Uso Febraban
  HR_CodRemRet       CHAR(01) := '1';                     -- Codigo Remessa 1, Retorno 2
  HR_DataGeracao     CHAR(08) := TO_CHAR(SYSDATE,'DDMMYYYY'); -- Data de Geracao do Arquivo
  HR_HoraGeracao     CHAR(06) := TO_CHAR(SYSDATE,'HH24MISS'); -- Hora de Geracao do Arquivo
  HR_Sequencial      CHAR(06) := '000001';                -- Sequencial
  HR_NRLayout        CHAR(03) := '082';                   -- Fixo
  HR_DenGravacao     VARCHAR2(05) := '0';                 -- Densidade de gravacao (Numerico/BPI)
  HR_Brancos3        VARCHAR2(20) := ' ';                 -- Reservado para o Banco
  HR_Brancos4        VARCHAR2(20) := ' ';                 -- Reservado para a Empresa
  HR_Brancos5        VARCHAR2(29) := ' ';                 -- Reservado para o Banco
  HR_Brancos6        VARCHAR2(7) := ' ';

  /*----------------Header Lote------------------------------------*/
  HL_CodBanco          CHAR(03) := '000';        -- Codigo do Banco na Compensacao
  HL_LoteServico       CHAR(04) := '0001';       -- Lote de Servico
  HL_RegistroHeader    CHAR(01) := '1';          -- Identificador Header
  HL_TipoOperacao      CHAR(01) := 'C';          -- Tipo Operacao
  HL_TipoServico       CHAR(02) := '  ';
  HL_Lancamento        CHAR(02) := '01';         -- Forma de Lancamento 01 - Credito Conta Corrente 03 - DOC/TED
  HL_VersaoLote        CHAR(03) := '043';
  HL_Brancos1          CHAR(01) := ' ';           -- Reservado 1
  HL_TipoInscricao     CHAR(01) := '2';          -- Tipo Inscricao
  HL_CGCEmpresa        VARCHAR2(14) :='09041213000136';    -- CGC Empresa
  HL_CodConvenio       VARCHAR2(06) := ' ';      -- Codigo Convenio
  HL_SiglaSistema      VARCHAR2(04) := '0126';     -- Sigla do Sistema
  HL_Brancos2          VARCHAR2(12) := ' ';       -- Reservado 2
  HL_AgenciaManConta   VARCHAR2(05) := '01897';  -- Numero Agencia
  HL_Digito            CHAR(01) := 'X';          -- DV
  HL_Zeros             VARCHAR2(04) := '0';      -- Reservado
  HL_Modalidade         VARCHAR2(02) := '00';      -- Modalidade
  HL_ContaCorrente     VARCHAR2(12) := '100957'; -- Conta Corrente
  HL_DVConta           CHAR(01) := '5';          -- Digito Verificador Conta
  HL_DVAgenciaConta    CHAR(01) := ' ';          -- Digito Verificador Agencia da Conta
  HL_NomEmpresa        VARCHAR2(30) := 'Sao Paulo Previdencia - SPPREV';  -- Nome Da Empresa
  HL_Mensagem          VARCHAR2(40) := ' ';      --  Nome do Mensagem
  HL_NomeRua           VARCHAR2(30) := 'Avenida Rangel Pestana';      -- Uso Febraban
  HL_NumeroLocal       VARCHAR2(05) := '300';     -- Numero Local
  HL_Complemento       VARCHAR2(15) := ' ';      -- Complemento
  HL_Cidade            VARCHAR2(20) := 'Sao Paulo'; -- Cidade
  HL_Cep               VARCHAR2(08) := '01017911';  -- CEP
  HL_UF                CHAR(02) := 'SP';            -- UF
  HL_Brancos3          VARCHAR2(08) := ' '; -- Reservado para o Banco
  HL_CodOcorrencia     VARCHAR2(10) := ' '; -- Reservado para a Empresa
  HL_Brancos6          VARCHAR2(07) := ' ';       -- Reservado 2

  /*----------------Detalhe Registro 3 Segmento A--------------------*/
  DR_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DR_LoteServico       CHAR(04) := '0001';    -- Lote de Servico
  DR_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DR_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DR_CodSegRegDetalhe  CHAR(01) := 'A';       -- Cod. Segmento Registro Detalhe
  DR_TipoMovimento     CHAR(01) := '0';       -- Inclusao
  DR_CodInstrucao      CHAR(02) := '00';      -- Codigo Instrucao

  DR_CamaraCentra      CHAR(03) := '000';     -- Camara Centralizadora
  DR_CodBancoFav       CHAR(03) := '   ';     -- Codigo do Banco Favorecido
  DR_CodAgenciaFav     CHAR(05) := '     ';   -- Codigo da Agencia Favorecido
  DR_Digito            CHAR(01) := ' ';       -- Digito Agencia

  -- Campos utilizados somente quando pagto for credido em conta corrente
  DR_Zeros1            VARCHAR2(04) := Null;  -- Reservado
  DR_Modalidade        VARCHAR2(02) := Null;  -- Modalidade da Conta
  ------------------------------------------------------------------------

  DR_ContaCorrenteFav  VARCHAR2(12) := ' ';        -- Numero da conta corrente do Favorecido
  DR_DVConta           CHAR(01) := ' ';            -- Digito Verificador da Conta
  DR_DVAgencia         CHAR(01) := ' ';            -- Digito Verificador da Agencia
  DR_NomeFavorecido    CHAR(30) := ' ';            -- Nome do Favorecido
  DR_NomeBen           CHAR(30) := ' ';            -- Nome do beneficiario / terceiro
  DR_CpfBen            CHAR(11) := ' ';            -- cpf do beneficiario / terceiro
  DR_COD_IDE_CLI_TERC  VARCHAR2(20) := ' ';        -- NUMERO IDENTIFICADOR TERCEIRO
  DR_NumeroDoc         VARCHAR2(20) := ' ';        -- Numero do documento  p/ empresa (Doc,NF,NP
  DR_DataLancamento    CHAR(08) := '00000000';     -- Data para Lancamento do Credito
  DR_TipoMoeda         CHAR(03) := 'BRL';          -- Tipo Moeda
  DR_QtdMoeda          VARCHAR2(15) := '0';        -- Quantidade Moeda 5 decimais
  DR_Valor             CHAR(15) := ' ';            -- Valor Para Credito ou Debito
  DR_NumDocBanco       CHAR(20) := ' ';            -- Numero do documento Atribuido pelo banco
  DR_DataReal          CHAR(08) := '00000000';     -- Data Real da Efetivacao do Lancamento
  DR_ValorReal         CHAR(15) := ' ';            -- Valor Real de Lancamento
  DR_OutrasInf         CHAR(40) := ' ';            -- Outras Informacoes
  DR_Brancos1          CHAR(12) := ' ';
  DR_AvisoFavorecido   CHAR(01) := '0';            -- Aviso ao favorecido 0-nao 1-sim 7-copia
  DR_CodOcorrencia     CHAR(10) := ' ';

  /*----------------Detalhe Registro 3 Segmento B---------------------------*/
  DRB_CodBanco          CHAR(03) := '000';     -- Codigo do Banco na Compensacao
  DRB_LoteServico       CHAR(04) := '0000';    -- Lote de Servico
  DRB_RegistroDet       CHAR(01) := '3';       -- Identificador Registro Lote
  DRB_SeqRegistroLote   CHAR(05)  := '00000';  -- sequencial do registro no lote
  DRB_CodSegRegDetalhe  CHAR(01) := 'B';       -- Cod. Segmento Registro Detalhe
  DRB_Brancos1          VARCHAR2(03) := ' ';
  DRB_TipoInscricao     VARCHAR2(01) := ' ';       -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
  DRB_NumInscricao      VARCHAR2(14) := ' ';       -- Numero Inscricao Favorecido
  DRB_Endereco          VARCHAR2(30) := ' ';       -- Endereco
  DRB_Numero            VARCHAR2(05) := ' ';       -- Numero
  DRB_Complemento       VARCHAR2(15) := ' ';       -- Complemento
  DRB_Bairro            VARCHAR2(15) := ' ';       -- Bairro
  DRB_NomeCidade        VARCHAR2(20) := ' ';       -- Cidade
  DRB_CEP               VARCHAR2(08) := ' ';       -- Cep
  DRB_UF                VARCHAR2(02) := 'SP';      -- UF
  DRB_DataVencimento    CHAR(08) := '        '; -- Data do Vencimento
  DRB_ValorDocumento    VARCHAR2(15) := '0';       -- Valor do documento
  DRB_ValorAbatimento   VARCHAR2(15) := '0';       -- Valor Abatimento
  DRB_ValorDesconto     VARCHAR2(15) := '0';       -- Valor Desconto
  DRB_ValorMora         VARCHAR2(15) := '0';       -- Valor Mora
  DRB_ValorMulta        VARCHAR2(15) := '0';       -- Valor Multa
  DRB_CodigoFavorecido  VARCHAR2(15) := '0';       -- Codigo Favorecido
  DRB_Brancos2          VARCHAR2(15) := ' ';

  /*----------------Trailler Lote--------------------------------------------*/
  TL_CodBanco           CHAR(03) := '000';
  TL_LoteServico        CHAR(04) := '0001';
  TL_RegistroDet        CHAR(01) := '5';     -- Registro Trailer do Lote
  TL_Brancos1           CHAR(09) := ' ';
  TL_QTDRegLote         CHAR(06) := ' ';     -- Quantidade Registro do Lote 1+3+5
  TL_VALDebCred         CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_ValQtdMoedas       CHAR(18) := ' ';     -- Somatorio Tipo Registro 3 + Seg A
  TL_Brancos2           CHAR(171) := ' ';
  TL_CodOcorrencia      CHAR(10) := ' ';

  /*----------------Trailler do Arquivo--------------------------------------*/
  TR_CodBanco           CHAR(03) := '000';
  TR_LoteServico        CHAR(04) := '9999';
  TR_RegistroDet        CHAR(01) := '9';     -- Registro Trailer do Lote
  TR_Brancos1           CHAR(09) := ' ';
  TR_QTDRegLote         CHAR(06) := ' ';     -- Numero de Registro do Lote 1
  TR_QTDRegArq          CHAR(06) := ' ';     -- Quantidade Registro Arquivo 0+1+3+5+9
  TR_QtdContas          CHAR(06) := ' ';     -- Numero de Registro tipo-1 Oper-E
  TR_Brancos2           CHAR(205) := ' ';

  vprocesso             CHAR(100) := ' ';

  CURSOR c1 IS
      SELECT
              ff.cod_beneficio,
              ff.cod_ide_cli_ben,
              TRUNC(SUM(DECODE(FF.FLG_NATUREZA,'C',FF.VAL_RUBRICA, FF.VAL_RUBRICA*-1)),2) AS val_liquido,
              --TRUNC(ff.val_liquido,2) val_liquido,
              SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30) nom_pessoa_fisica,
              pf.num_cpf
      FROM    user_ipesp.tb_rel_folha_aux rr,
              user_ipesp.TB_HDET_CALCULADO FF,
              TB_PESSOA_FISICA       PF
      WHERE   rr.cod_ins               = c_cod_ins
        and   rr.tip_processo          = I_TIPPROCESSO
        and   rr.seq_pagamento         = I_SEQ_PAGAMENTO
        and   rr.per_processo          = I_PERPROCESSO
        and   rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
        and   rr.dat_pgto              = c_data_efetiva
        and   ff.cod_ins               = RR.COD_INS
        AND   ff.per_processo          = RR.PER_PROCESSO
        AND   ff.tip_processo          = RR.TIP_PROCESSO
        AND   ff.seq_pagamento         = RR.SEQ_PAGAMENTO            -- NVL(DECODE(I_SEQ_PAGAMENTO,1,NULL,I_SEQ_PAGAMENTO), ff.seq_pagamento)
        AND   FF.COD_BENEFICIO         = RR.COD_BENEFICIO
        and   ff.dt_fechamento         = rr.dat_pgto
        AND   FF.COD_IDE_CLI           = RR.COD_IDE_CLI
        AND   pf.cod_ins               = ff.cod_ins
        AND   pf.cod_ide_cli           = ff.cod_ide_cli_ben
      GROUP BY ff.cod_beneficio,
               ff.cod_ide_cli_ben,
               SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30),
               pf.num_cpf;



  c_ERROR_MSG       VARCHAR2(500);
  e_ERROR           EXCEPTION;
  vsqlstr           VARCHAR2(500);

BEGIN

  vsqlstr:='ALTER SESSION SET NLS_DATE_FORMAT='''|| 'DD/MM/YYYY' ||'''';
  EXECUTE IMMEDIATE vsqlstr;

  IF I_DEFINITIVO IN ( '2', 'S', 's' )   THEN
     c_definitivo := 'S';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  ELSE
     c_definitivo := 'N';
     --c_OutputLocation  := 'ARQS_BANCARIOS_CONF';
     c_OutputLocation  := 'ARQS_BANCARIOS';
  END IF;

  BEGIN

    c_tipo_processo      := I_TIPPROCESSO;
    cs_cod_banco         := LPAD(TO_CHAR(NVL(I_BANCO,001)),3,'0');

    BEGIN

        SELECT CP.DAT_PAG_EFETIVA,     CP.NUM_GRP,  GP.COD_SEQ_CONVENIO
        INTO   c_data_efetiva,  c_grupo_pagamento,           c_seq_conv
        FROM   user_ipesp.TB_CRONOGRAMA_PAG  CP,
               TB_GRUPO_PAGAMENTO GP
        WHERE   CP.NUM_GRP          = NVL(I_GRP_PAGTO,CP.NUM_GRP)   -- De acordo com a tb_tipos_beneficio
        AND     CP.NUM_GRP          = GP.NUM_GRP_PAG
        AND     CP.COD_TIP_PROCESSO = I_TIPPROCESSO
        AND     CP.PER_PROCESSO     = I_PERPROCESSO
        AND     CP.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO;

    EXCEPTION
      WHEN OTHERS THEN
        c_ERROR_MSG := 'ERRO AO BUSCAR A DATA DE CREDITO EM CONTA CORRENTE.';
        RAISE e_ERROR;
    END;


    /*-------------------------
      Abre o registro do log de processamento - Situacao 'A' - Agendado
      -------------------------*/
    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => NULL,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'A' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    vprocesso := 'Inicio...';

    /*-------------------------
      Atualiza o registro do log de processamento - Situacao 'P' - Em Processamento
      -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'P' ,             -- Agendado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log );     -- Variavel da rotina para receber o retorno do registro do log


    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

    /*Header do Arquivo - Banco 001*/

    HR_CodBanco      := cs_cod_banco;
    HR_NomEmpresa    := RPAD(HR_NomEmpresa,30,' ');
    HR_CGCEmpresa    := LPAD(HR_CGCEmpresa,14,9);
    HR_Brancos1      := LPAD(HR_Brancos1,9,' ');
    HR_ContaCorrente := LPAD(HR_ContaCorrente,06,0);
    HR_Zeros         := LPAD(HR_Zeros,4,0);
    HR_Modalidade    := LPAD(HR_Modalidade,2,0);
    HR_DenGravacao   := LPAD(HR_DenGravacao,5,'0');
    HR_Brancos1      := RPAD(HR_Brancos1,9,' ');
    HR_Brancos2      := RPAD(HR_Brancos2,10,' ');
    HR_Brancos3      := RPAD(HR_Brancos3,20,' ');
    HR_Brancos4      := HR_Brancos3;
    HR_Brancos5      := RPAD(HR_Brancos5,29,' ');
    HR_Brancos6      := LPAD(HR_Brancos6,7,' ');

    /*Header de Lote */

    HL_CodBanco       := cs_cod_banco;
    HL_NomEmpresa     := RPAD(HL_NomEmpresa,30,' ');
    HL_CGCEmpresa     := LPAD(HL_CGCEmpresa,14,9);
    HL_Brancos2       := RPAD(HL_Brancos2,12,' ');
    HL_AgenciaManConta:= LPAD(HL_AgenciaManConta,5,0);
    HL_Zeros          := LPAD(HL_Zeros,4,0);
    HL_Modalidade     := RPAD(HL_Modalidade,2,0);
    HL_ContaCorrente  := LPAD(HL_ContaCorrente,06,0);
    HL_Mensagem       := RPAD(HL_Mensagem,40,' ');
    HL_NomeRua        := RPAD(HL_NomeRua,30,' ');
    HL_NumeroLocal    := LPAD(HL_NumeroLocal,5,0);
    HL_Complemento    := RPAD(HL_Complemento,15,' ');
    HL_Cidade         := RPAD(HL_Cidade,20,' ');
    HL_Cep            := LPAD(HL_Cep,8,0);
    HL_Brancos3       := RPAD(HL_Brancos3,8,' ');
    HL_CodOcorrencia  := RPAD(HL_CodOcorrencia,10,' ');
    HL_Brancos6      := LPAD(HL_Brancos6,7,' ');

    DR_CodBanco          := cs_cod_banco;
    DR_RegistroDet       := '3';
    DR_CodSegRegDetalhe  := 'A';
    DR_CodInstrucao      := '00';
    DR_TipoMoeda         := 'BRL';                                 -- Tipo Moeda
    DR_QtdMoeda          := LPAD(DR_QtdMoeda,15,0);                -- Quantidade Moeda
    DR_NumDocBanco       := RPAD(DR_NumDocBanco,20,' ');           -- Numero do documento Atribuido pelo banco-+
    DR_DataReal          := '00000000';                            -- Data Real                                I -> Somente RETORNO
    DR_ValorReal         := '000000000000000';                     -- Valor Real-------------------------------+
    DR_OutrasInf         := ' ';                                   -- Outras Informacoes
    DR_Brancos1          := ' ';
    DR_AvisoFavorecido   := '0';                                   -- Aviso ao favorecido 0-nao 1-sim 7-copia
    DR_CodOcorrencia     := ' ';

    DRB_CodBanco          := DR_CodBanco;                          -- Codigo do Banco na Compensacao
    DRB_RegistroDet       := '3';                                  -- Identificador Registro Lote
    DRB_CodSegRegDetalhe  := 'B';                                  -- Cod. Segmento Registro Detalhe
    DRB_Brancos1          := RPAD(DRB_Brancos1,3,' ');
    DRB_TipoInscricao     := '1';                                  -- Tipo Inscricao 1-CPF 2-CGC 3-PIS/PASEP
    DRB_Endereco          := RPAD(DRB_Endereco,30,' ');            -- Endereco
    DRB_Numero            := '00000';                              -- Numero
    DRB_Complemento       := RPAD(DRB_Complemento,15,' ');         -- Complemento
    DRB_Bairro            := RPAD(DRB_Bairro,15,' ');              -- Bairro
    DRB_NomeCidade        := RPAD(DRB_NomeCidade,20,' ');          -- Cidade
    DRB_CEP               := '00000   ';                           -- Cep
    DRB_ValorAbatimento   := LPAD(DRB_ValorAbatimento,15,'0');     -- Valor Abatimento
    DRB_ValorDesconto     := LPAD(DRB_ValorDesconto,15,'0');       -- Valor Desconto
    DRB_ValorMora         := LPAD(DRB_ValorMora,15,'0');           -- Valor Mora
    DRB_ValorMulta        := LPAD(DRB_ValorMulta,15,'0');          -- Valor Multa
    DRB_CodigoFavorecido  := LPAD(DRB_CodigoFavorecido,15,'0');    -- Codigo Favorecido
    DRB_Brancos2          := RPAD(DRB_Brancos2,15,' ');

    TL_CodBanco        := HR_CodBanco;
    TL_RegistroDet     := '5';                    -- Registro Trailer do Lote
    TL_Brancos1        := ' ';
    TL_Brancos2       := ' ';
    TL_CodOcorrencia  := ' ';

    TR_CodBanco      := HR_CodBanco;
    TR_LoteServico   := '9999';
    TR_RegistroDet   := '9';
    TR_Brancos1      := ' ';
    TR_Brancos2      := ' ';

    c_cont_credito      := 0;
    c_cont_cadastro     := 0;
    c_total_liquido     := 0;
    c_num_nsa           := 0;
    vprocesso := 'Preparando leitura de registros...';

    -------------------------------------------------------------------

    c_OutputFileCreditoLog  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
    c_OutputFileCreditoLog  := c_OutputFileCreditoLog || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_ERRO.txt';

    IF NOT UTL_FILE.IS_OPEN( f_OutputCreditolog ) THEN
               f_OutputCreditoLog := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCreditoLog, 'w' );
    END IF;

    FOR REG IN C1  LOOP

          BEGIN

            DR_CodBancoFav := NULL;
            DR_CodAgenciaFav := NULL;
            DR_Digito := NULL;
            DR_ContaCorrenteFav := NULL;
            DR_DVConta := NULL;
            DR_Modalidade := NULL;
            DR_COD_IDE_CLI_TERC := NULL;



             SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                    SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                    SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                    ib.num_conta,
                    upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                    DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',
                    DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                    IB.COD_IDE_CLI_TERCEIRO
               INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav,
                    DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
               FROM TB_INFO_BANC_BENEFICIO I, TB_INFORMACAO_BANCARIA IB
              WHERE I.COD_INS = IB.COD_INS
                AND I.COD_IDE_CLI = IB.COD_IDE_CLI
                AND I.COD_IDE_INF_BANC = IB.COD_IDE_INF_BANC
                AND I.COD_BENEFICIO = REG.Cod_Beneficio
                AND I.COD_IDE_CLI = REG.cod_ide_cli_ben;
          EXCEPTION
             WHEN NO_DATA_FOUND THEN
                  BEGIN
                       SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                              SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                              SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                              ib.num_conta,
                              upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                              DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                              IB.COD_IDE_CLI_TERCEIRO
                         INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade,
                              DR_COD_IDE_CLI_TERC
                         FROM TB_INFORMACAO_BANCARIA IB
                        WHERE IB.COD_INS = 1
                          AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                          and not exists
                          (
                                 select 1 from user_ipesp.tb_info_banc_beneficio d
                                  where d.cod_ins = 1
                                  and d.cod_ide_cli = ib.cod_ide_cli
                                  and d.cod_ide_inf_banc = ib.cod_ide_inf_banc
                          );
                   EXCEPTION
                          WHEN TOO_MANY_ROWS THEN
                               SELECT *
                                INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                FROM
                                (

                                    SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                           SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                           SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                           ib.num_conta,
                                           upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                           DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                           IB.COD_IDE_CLI_TERCEIRO
                                      FROM TB_INFORMACAO_BANCARIA IB
                                     WHERE IB.COD_INS = 1
                                       AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                     ORDER BY IB.COD_BANCO
                                 ) WHERE ROWNUM = 1;
                          WHEN NO_DATA_FOUND THEN
                                begin
                                        SELECT *
                                            INTO DR_CodBancoFav, DR_CodAgenciaFav, DR_Digito, DR_ContaCorrenteFav, DR_DVConta, DR_Modalidade, DR_COD_IDE_CLI_TERC
                                            FROM
                                            (

                                                SELECT SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.cod_banco)),3,'0'),1,3) cod_banco,
                                                       SUBSTR(LPAD(TO_CHAR(TO_NUMBER(ib.num_agencia)),5,'0'),1,5) num_agencia,
                                                       SUBSTR(NVL(ib.num_dv_agencia,'0'),1,1) num_dv_agencia,
                                                       ib.num_conta,
                                                       upper(SUBSTR(NVL(ib.num_dv_conta,'0'),1,1)) num_dv_conta,
                                                       DECODE(ASCII(ib.COD_TIPO_CONTA),0,'00',DECODE(ib.COD_TIPO_CONTA,NULL,'00',ib.COD_TIPO_CONTA)) cod_tipo_conta,
                                                       IB.COD_IDE_CLI_TERCEIRO
                                                  FROM TB_INFORMACAO_BANCARIA IB
                                                 WHERE IB.COD_INS = 1
                                                   AND IB.COD_IDE_CLI = REG.cod_ide_cli_ben
                                                 ORDER BY IB.COD_BANCO
                                             ) WHERE ROWNUM = 1;
                               exception
                                   when no_data_found then
                                       UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
                                       DR_CodBancoFav := '000';
                                       DR_CodAgenciaFav := '00000' ;
                                       DR_Digito := '0';
                                       DR_ContaCorrenteFav := '000000';
                                       DR_DVConta := '0';
                                       DR_Modalidade := '00';
                                       DR_COD_IDE_CLI_TERC := NULL;
                                   when others then
                                         null;
                               end;
                          when others then
                            null;
                   END;
              when others then
                            null;
          END;
          IF (DR_CodAgenciaFav = 0 OR DR_ContaCorrenteFav = 0) THEN
             UTL_FILE.PUT_LINE(f_OutputCreditoLog, 'SEM CONTA BANCARIA: COD_IDE_CLI_BEN = '||reg.cod_ide_cli_ben || ' - cod_beneficio: '||reg.cod_beneficio);
          END IF;


          BEGIN
             IF DR_CodBancoFav = 1 THEN
                  if (DR_Modalidade in (1,51)) then
                    i_conv  := 3;
                  else
                    i_conv  := 1;
                  end if;
             ELSE
                i_conv  := 2;
             END IF;
             i_pagto := vDetalhe(i_conv).count+1;

          EXCEPTION
          WHEN NO_DATA_FOUND THEN
             i_pagto := 1;
          END;

          vDetalhe(i_conv)(i_pagto).cod_beneficio    := REG.Cod_Beneficio;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli      := REG.cod_ide_cli_ben;
          vDetalhe(i_conv)(i_pagto).cod_banco        := DR_CodBancoFav;
          vDetalhe(i_conv)(i_pagto).num_agencia      := DR_CodAgenciaFav;
          vDetalhe(i_conv)(i_pagto).num_dv_agencia   := DR_Digito;
          vDetalhe(i_conv)(i_pagto).num_conta        := DR_ContaCorrenteFav;
          vDetalhe(i_conv)(i_pagto).num_dv_conta     := DR_DVConta;
          vDetalhe(i_conv)(i_pagto).cod_tipo_conta   := CASE WHEN I_CONV = 1 THEN '00' ELSE DR_Modalidade END;
          vDetalhe(i_conv)(i_pagto).cod_ide_cli_ben  := DR_COD_IDE_CLI_TERC;

          DR_CodBancoFav := NULL;
          DR_CodAgenciaFav := NULL;
          DR_Digito := NULL;
          DR_ContaCorrenteFav := NULL;
          DR_DVConta := NULL;
          DR_Modalidade := NULL;
          DR_CpfBen := NULL;
          DR_NomeBen := NULL;

          -- validação dos dados de terceiro
          IF (TRIM(DR_COD_IDE_CLI_TERC) IS NOT NULL) THEN
                SELECT PF.NUM_CPF, SUBSTR(RPAD(pf.nom_pessoa_fisica,30,' '),1,30)
                  INTO DR_CpfBen, DR_NomeBen
                  FROM USER_IPESP.TB_PESSOA_FISICA PF
                 WHERE PF.COD_INS = 1
                   AND PF.COD_IDE_CLI = DR_COD_IDE_CLI_TERC;
          ELSE
             DR_CpfBen := REG.NUM_CPF;
             DR_NomeBen :=  REG.NOM_PESSOA_FISICA;
          END IF;

          vDetalhe(i_conv)(i_pagto).cod_ide_serv     := DR_CpfBen;             -- CAMPO UTILIZADO PARA O CPF
          vDetalhe(i_conv)(i_pagto).nom_ben          := DR_NomeBen;
          vDetalhe(i_conv)(i_pagto).val_liquido      := REG.VAL_LIQUIDO;

          -------------------------------------------------------------------

    END LOOP;

    IF vDetalhe.count = 0 THEN
       c_ERROR_MSG :='NAO HA INFORMACOES PARA GERAR O ARQUIVO BANCARIO.';
       RAISE e_ERROR;
    END IF;

    FOR j IN vDetalhe.first..vDetalhe.last
    LOOP

        BEGIN

          IF vDetalhe(j).count > 0 THEN

              <<GET_CONVENIO>>
              BEGIN

                c_num_nsa           := 0;

                -- BUSCA A SEQUENCIA ATUAL DO ARQUIVO
                SELECT   RPAD(SUBSTR(TB.DES_BANCO,1,30),30,' '),
                         LPAD(NVL(CB.NUM_NSA,0),6,'0'),
                         LPAD(NVL(CB.COD_CONV,0),9,0),
                         TRIM(CB.DES_CONVENIO)
                INTO   HR_NomBanco,
                       c_num_nsa,
                       HR_CodConvenio,
                       c_desc_conv
                FROM   TB_CONVENIO_BANCO CB,
                       TB_BANCO          TB,
                       TB_ENVIO_BANCO    EB
                WHERE CB.COD_BANCO        = NVL(I_BANCO,001)
                AND   CB.COD_BANCO        = TB.COD_BANCO
                AND   EB.COD_BANCO        = CB.COD_BANCO
                AND   EB.COD_CONV         = CB.COD_CONV
                AND   EB.PER_PROCESSO     = I_PERPROCESSO
                AND   EB.COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)                 -- EB.COD_ENTIDADE)
                AND   EB.NUM_GRP          = c_grupo_pagamento
                AND   CB.TIPO_PAGTO       = j
                AND   EB.COD_TIP_PROCESSO = I_TIPPROCESSO
                AND   EB.SEQ_PAGAMENTO    = I_SEQ_PAGAMENTO
                AND   CB.NUM_SEQ          = c_seq_conv;

              EXCEPTION
              WHEN NO_DATA_FOUND THEN

                   BEGIN

                     SELECT LPAD(NVL(CB.COD_CONV,0),9,0), CB.DES_CONVENIO, CB.NUM_NSA
                     INTO   HR_CodConvenio, c_desc_conv, c_num_nsa
                     FROM TB_CONVENIO_BANCO CB
                     WHERE CB.COD_BANCO = NVL(I_BANCO,001)
                     AND   CB.COD_INS   = c_cod_ins
                     AND   CB.TIPO_PAGTO= j
                     AND   CB.NUM_SEQ   = c_seq_conv;

                     -- MRS-VERIFICAR QUAL SERA A RELACAO ENTIDADE E GRUPO PAGTO
                     INSERT INTO TB_ENVIO_BANCO EB
                     (
                       COD_INS                  , PER_PROCESSO             , COD_TIP_PROCESSO       ,
                       SEQ_PAGAMENTO            , COD_ENTIDADE             , COD_BANCO              ,
                       NUM_NSA                  , DAT_ING                  , DAT_ULT_ATU            ,
                       NOM_USU_ULT_ATU          , NOM_PRO_ULT_ATU          , NUM_GRP                ,
                       COD_CONV
                     )
                     VALUES
                     (
                       c_cod_ins                , I_PERPROCESSO            , I_TIPPROCESSO          ,
                       I_SEQ_PAGAMENTO          , NVL(I_COD_ENTIDADE,999)  , NVL( I_BANCO, 001 )    ,
                       0                        , SYSDATE                  , SYSDATE                ,
                       USER                     , 'GERA_ARQ_CNAB'          , c_grupo_pagamento      ,
                       HR_CodConvenio
                     );

                   EXCEPTION
                   WHEN OTHERS THEN
                     c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                     lOraErr     := TRUE;
                     RAISE e_ERROR;

                   END;

              WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO OBTER O CONVENIO BANCARIO - ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;

              END GET_CONVENIO;

              --DALVES 06/07/2016 -- TASK31674
              --Alteração do campo Tipo de Serviço
              IF  c_desc_conv = 'CONTA CORRENTE' THEN
                 HL_Lancamento  := '01';
                 HL_TipoServico := '30'; --Pagamento Salários
              ELSIF c_desc_conv = 'DOC' THEN
                 HL_Lancamento  := '03'; -- DOC
                 HL_TipoServico := '98'; -- Pagamento Diversos
              ELSE
                 HL_Lancamento  := '05'; -- POUPANCA
                 HL_TipoServico := '98';
              END IF;

          ELSE

              GOTO END_LOOP;

          END IF;

        EXCEPTION
        WHEN NO_DATA_FOUND THEN
           GOTO END_LOOP;

        END;

        BEGIN

          c_count_seg_a := 0;
          c_cont_tot    := 0;
          c_cont_seq    := 0;
          v_Seq         := 0;
          vQtdeArq      := 0;
          c_total_geral := 0;
          HR_Sequencial := nvl(c_num_nsa,0);
          lFim          := FALSE;

          IF vDetalhe(j).count > 0 THEN

              FOR k IN vDetalhe(j).first..vDetalhe(j).last LOOP

                  c_count_seg_a := c_count_seg_a + 1;
                  c_cont_seq := c_cont_seq + 1;
                  c_cont_tot := c_cont_tot + 1;

                  <<PRINT_FILE>>
                  BEGIN

                      IF k = 1                             OR
                         mod( c_cont_seq, vLimQuebra ) = 0 THEN

                          IF mod( c_cont_seq, vLimQuebra ) = 0 THEN -- Executa qdo ha quebra de arquivo

                              IF c_cont_tot >= vDetalhe(j).last THEN
                                lFim := TRUE;
                              ELSE
                                lFim := FALSE;
                              END IF;

                              TL_LoteServico    := LPAD(v_lote,4,0);
                              TL_QTDRegLote     := LPAD(c_cont_seq + 2,6,'0');           -- Quantidade Registro do Lote 1+3+5
                              TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                              TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                              UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                                  TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                                  TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia ||CHR(13)   );

                              TR_QTDRegLote    := LPAD(v_lote,6,'0');
                              TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                              TR_QtdContas     := LPAD(1,6,0);

                              UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico  ||  TR_RegistroDet  ||
                                                                    TR_Brancos1    || TR_QTDRegLote   ||  TR_QTDRegArq    ||
                                                                    TR_QtdContas  || TR_Brancos2      || CHR(13));

                              UTL_FILE.FCLOSE( f_OutputCredito );

                          END IF;

                          c_cont_seq           := 1;
                          v_Seq                := NVL(v_Seq,0) + 1;
                          v_lote               := 1;
                          c_total_liquido      := 0;
                          vQtdeArq             := NVL(vQtdeArq,0) + 1;
                          HR_Sequencial        := lpad( HR_Sequencial + 1, 6, 0 );

                          c_OutputFileCredito_Crip := null;
                          c_OutputFileCredito_Crip := 'iedpgpr.spprev.'||to_char(sysdate+trunc(USER_IPESP.SEQ_ENVIO_ARQ_BANCARIO.NEXTVAL/60/60/60,6),'DDMMYYHH24MISS')||'.bco001.asc';


                          c_OutputFileCredito  := 'cnab240_'|| NVL( LPAD(I_COD_ENTIDADE,2,0), '99' ) || cs_cod_banco;
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || HR_CodConvenio || '_' || LPAD(v_Seq,2,0);
                          c_OutputFileCredito  := c_OutputFileCredito || '_' || LPAD( NVL( c_grupo_pagamento, '0' ), 2, '0' );

                          IF c_definitivo = 'S' THEN
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'.txt';
                          ELSE
                            c_OutputFileCredito  := c_OutputFileCredito || '_' || TO_CHAR(SYSDATE,'YYYYMMDDHH24MISS')|| '_' || HR_Sequencial||'_conf.txt';
                          END IF;

                          IF I_NOM_ARQUIVO IS NULL THEN
                             I_NOM_ARQUIVO := c_OutputFileCredito;
                          ELSE
                             I_NOM_ARQUIVO := I_NOM_ARQUIVO || ',' || c_OutputFileCredito;
                          END IF;

                          BEGIN

                            IF NOT UTL_FILE.IS_OPEN( f_OutputCredito ) THEN
                               f_OutputCredito := UTL_FILE.FOPEN( c_OutputLocation, c_OutputFileCredito, 'w' );
                            END IF;

                          EXCEPTION
                            WHEN UTL_FILE.INVALID_PATH THEN
                                 c_ERROR_MSG := 'Path ou nome do arquivo invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_MODE THEN
                                 c_ERROR_MSG := 'O parametro de abertura para a funcao FOPEN e invalido.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN UTL_FILE.INVALID_OPERATION THEN
                                 c_ERROR_MSG := 'Acesso invalido ao arquivo.';
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                            WHEN OTHERS THEN
                                 c_ERROR_MSG := SQLERRM;
                                 lOraErr     := TRUE;
                                 RAISE e_ERROR;
                          END;

                          -- Header de Arquivo
                          UTL_FILE.PUT_LINE( f_OutputCredito,   HR_CodBanco          ||  HR_LoteServicoArq    ||  HR_RegistroHeader  ||
                                                                HR_Brancos1          ||  HR_TipoInscricao    ||  HR_CGCEmpresa      ||
                                                                HR_CodConvenio      ||  HR_SiglaSistema      ||    HR_Brancos6     ||
                                                                HR_AgenciaManConta  ||  HR_Digito            ||    HR_Zeros        ||
                                                                HR_Modalidade        ||  HR_ContaCorrente    ||  HR_DVConta        ||
                                                                HR_DVAgenciaConta    ||  HR_NomEmpresa        ||  HR_NomBanco        ||
                                                                HR_Brancos2          ||  HR_CodRemRet        ||  HR_DataGeracao    ||
                                                                HR_HoraGeracao      ||  HR_Sequencial        ||  HR_NRLayout        ||
                                                                HR_DenGravacao      ||  HR_Brancos3          ||  HR_Brancos4        ||
                                                                HR_Brancos5         || CHR(13));
                          -- Header de Lote
                          UTL_FILE.PUT_LINE( f_OutputCredito,HL_CodBanco        ||  HL_LoteServico    ||  HL_RegistroHeader  ||
                                                             HL_TipoOperacao    ||  HL_TipoServico    ||  HL_Lancamento      ||
                                                             HL_VersaoLote      ||  HL_Brancos1         ||  HL_TipoInscricao  ||
                                                             HL_CGCEmpresa      ||  HR_CodConvenio    ||  HL_SiglaSistema   ||
                                                             HL_Brancos6         ||  HL_AgenciaManConta||  HL_Digito          ||
                                                             HL_Zeros            ||  HL_Modalidade     ||   HL_ContaCorrente  ||
                                                             HL_DVConta          ||  HL_DVAgenciaConta ||  HL_NomEmpresa      ||
                                                             HL_Mensagem        ||  HL_NomeRua        ||  HL_NumeroLocal    ||
                                                             HL_Complemento      ||  HL_Cidade          ||  HL_Cep            ||
                                                             HL_UF              ||  HL_Brancos3        ||  HL_CodOcorrencia   ||CHR(13)       );

                      END IF;

                      DR_LoteServico       := LPAD(v_lote, 4, 0);
                      DR_SeqRegistroLote   := LPAD(LTRIM(TO_CHAR(c_cont_seq,'00000')),5,'0');
                      DR_CodBancoFav       := LPAD(TO_NUMBER(vDetalhe(j)(k).cod_banco),3,0);
                      DR_CodAgenciaFav     := LPAD(TO_NUMBER(vDetalhe(j)(k).num_agencia),5,0);
                      DR_DVConta           := vDetalhe(j)(k).num_dv_conta;
                      DR_NomeFavorecido    := vDetalhe(j)(k).nom_ben;

                      select sq_envio_banco.nextval into DR_NumeroDoc from dual;
                      DR_NumeroDoc := lpad(DR_NumeroDoc,20,'0');

                      DR_Valor             := LPAD(TO_CHAR((ROUND(vDetalhe(j)(k).val_liquido,2) * 100)),15,'0');
                      DR_DataLancamento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                      DR_Zeros1             := Null;
                      DR_Modalidade         := Null;

                      IF DR_CodBancoFav = 1 THEN
                          SP_CALCULA_DV_bb( 1,
                                         LPAD( TO_NUMBER( vDetalhe(j)(k).num_agencia ), 4, 0 ),
                                         Null,
                                         vDvAg );

                         DR_Digito             := vDvAg;
                         DR_CamaraCentra       := '000';

                         DR_ContaCorrenteFav  := lpad( lpad(vDetalhe(j)(k).cod_tipo_conta,2,'0') || lpad(substr(trunc(vDetalhe(j)(k).num_conta),case when length(trunc(vDetalhe(j)(k).num_conta))-7 < 0 then 1 else -7 end ,7),7,'0'), 12 ,'0');

                         if (vDetalhe(j)(k).cod_tipo_conta in (1,51)) then
                             vTipo                 := 3; -- conta poupanca
                         else
                             vTipo                 := 1; -- cc
                         end if;

                      ELSE

                         DR_CamaraCentra       := '018';
                         DR_Digito             := ' ';

                         IF (DR_CodBancoFav = 33) THEN
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || lpad(substr(TRUNC(vDetalhe(j)(k).num_conta),1,6),6,'0'), 12,0);
                         elsif (DR_CodBancoFav = 104) then
                            DR_ContaCorrenteFav   := LPAD( LPAD(NVL(TRUNC(vDetalhe(j)(k).cod_tipo_conta,2),'00'),2,'0') || substr(vDetalhe(j)(k).num_conta,1,10), 12,0);
                         ELSE
                            DR_ContaCorrenteFav   := LPAD(TRUNC(vDetalhe(j)(k).num_conta),12,0);
                         END IF;

                         vTipo                 := 2;

                      END IF;



                      --
                      vLinha := DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                DR_CodInstrucao      ||  DR_CamaraCentra      ||  DR_CodBancoFav      ||
                                DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                DR_Brancos1          ||  DR_AvisoFavorecido   ||  DR_CodOcorrencia ;
                      --

                      -- Imprime Detalhe
                      UTL_FILE.PUT_LINE( f_OutputCredito, DR_CodBanco          ||  DR_LoteServico       ||  DR_RegistroDet      ||
                                                          DR_SeqRegistroLote   ||  DR_CodSegRegDetalhe  ||  DR_TipoMovimento    ||
                                                          DR_CodInstrucao      ||  DR_CamaraCentra     ||  DR_CodBancoFav      ||
                                                          DR_CodAgenciaFav     ||  DR_Digito            ||  DR_Zeros1           ||
                                                          DR_Modalidade        ||  DR_ContaCorrenteFav  ||
                                                          DR_DVConta           ||  DR_DVAgencia         ||  DR_NomeFavorecido   ||
                                                          DR_NumeroDoc         ||  DR_DataLancamento    ||  DR_TipoMoeda        ||
                                                          DR_QtdMoeda          ||  DR_Valor             ||  DR_NumDocBanco      ||
                                                          DR_DataReal          ||  DR_ValorReal         ||  DR_OutrasInf        ||
                                                          DR_Brancos1          ||  DR_AvisoFavorecido  ||  DR_CodOcorrencia     || CHR(13));

                      -- Incrementa a tb_envio_arq_bancario
                      INSERT INTO TB_ENVIO_ARQ_BANCARIO
                      (
                                   COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                      LOTE,                   CONVENIO,                 SEGMENTO,
                                   NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                DT_GERACAO,                   DT_PAGTO,                     NOME,
                                     VALOR,                    NUM_CPF,                  ARQUIVO,
                                     LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                               COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                  DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                              TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                    FLG_PA,                    TIP_MOV,                COD_BENEFICIO,
                              COD_IDENTIFICADOR,          FLG_TERCEIRO,         COD_IDE_CLI_TERCEIRO,
                              OBS_ARQ_BANCARIO
                       )
                       VALUES
                       (
                             1            , vDetalhe(j)(k).cod_ide_cli,                      '3',
                            DR_LoteServico,             HR_CodConvenio,      DR_CodSegRegDetalhe,
                             HR_Sequencial,                      vTipo,       DR_SeqRegistroLote,
                                   to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                                        c_data_efetiva,        DR_NomeFavorecido,
                                   ROUND(vDetalhe(j)(k).val_liquido,2),
                                                                  null,
                            CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                    vLinha,               c_definitivo,           DR_CodBancoFav,
                          DR_CodAgenciaFav,                  DR_Digito, vDetalhe(j)(k).num_conta,
                                DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                             I_PERPROCESSO,
                             I_TIPPROCESSO,            I_SEQ_PAGAMENTO,  LPAD( c_grupo_pagamento, 2, '0' ),
                                       'T',                        '0', vDetalhe(j)(k).cod_beneficio,
                              DR_NumeroDoc,
                              'N',
                              vDetalhe(j)(k).cod_ide_cli_ben,
                              'Pagamento originado pelo Fluxo de Saldo de Extinção'
                       );

                       c_cont_seq := c_cont_seq + 1;
                       DRB_LoteServico       := LPAD(v_lote,4,0);                     -- Lote de Servico
                       DRB_ValorDocumento    := LPAD(ROUND(vDetalhe(j)(k).val_liquido,2) * 100, 15, 0);       -- Valor do documento
                       DRB_DataVencimento    := TO_CHAR(c_data_efetiva,'DDMMYYYY');
                       DRB_SeqRegistroLote   := LPAD(c_cont_seq,5,'0');               -- sequencial do registro no lote
                       DRB_NumInscricao      := LPAD(TO_NUMBER( vDetalhe(j)(k).cod_ide_serv ),14,0);

                      --IF DR_CodBancoFav != 1 THEN
                         -- SEGMENTO B
                         UTL_FILE.PUT_LINE( f_OutputCredito, DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet      ||
                                                             DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                                             DRB_TipoInscricao     || DRB_NumInscricao       ||  DRB_Endereco        ||
                                                             DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                                             DRB_NomeCidade        || DRB_CEP                ||  DRB_UF              ||
                                                             DRB_DataVencimento    || DRB_ValorDocumento     ||  DRB_ValorAbatimento ||
                                                             DRB_ValorDesconto     || DRB_ValorMora          ||  DRB_ValorMulta      ||
                                                             DRB_CodigoFavorecido  || DRB_Brancos2           ||  CHR(13));

                         vLinha := DRB_CodBanco          || DRB_LoteServico       ||  DRB_RegistroDet     ||
                                   DRB_SeqRegistroLote   || DRB_CodSegRegDetalhe  ||  DRB_Brancos1        ||
                                   DRB_TipoInscricao     || DRB_NumInscricao      ||  DRB_Endereco        ||
                                   DRB_Numero            || DRB_Complemento       ||  DRB_Bairro          ||
                                   DRB_NomeCidade        || DRB_CEP               ||  DRB_UF              ||
                                   DRB_DataVencimento    || DRB_ValorDocumento    ||  DRB_ValorAbatimento ||
                                   DRB_ValorDesconto     || DRB_ValorMora         ||  DRB_ValorMulta      ||
                                   DRB_CodigoFavorecido  || DRB_Brancos2     ;


                          INSERT INTO user_ipesp.TB_ENVIO_ARQ_BANCARIO
                          (
                                       COD_INS,                COD_IDE_CLI,                 REGISTRO,
                                          LOTE,                   CONVENIO,                 SEGMENTO,
                                       NUM_NSA,                 TIPO_PAGTO,                SEQUENCIA,
                                    DT_GERACAO,                   DT_PAGTO,                     NOME,
                                         VALOR,                    NUM_CPF,                  ARQUIVO,
                                         LINHA,             FLG_DEFINITIVO,                COD_BANCO,
                                   COD_AGENCIA,                 DV_AGENCIA,                COD_CONTA,
                                      DV_CONTA,                 TIPO_CONTA,             PER_PROCESSO,
                                  TIP_PROCESSO,              SEQ_PAGAMENTO,                GRP_PAGTO,
                                        FLG_PA,                    TIP_MOV,             COD_BENEFICIO,
                             COD_IDENTIFICADOR,               FLG_TERCEIRO,             COD_IDE_CLI_TERCEIRO,
                             OBS_ARQ_BANCARIO
                          )
                          VALUES
                          (
                                 1, vDetalhe(j)(k).cod_ide_cli,                      '3',
                                 DRB_LoteServico, HR_CodConvenio, DRB_CodSegRegDetalhe,
                                 HR_Sequencial, vTipo, DRB_SeqRegistroLote,
                                 to_date( HR_DataGeracao||HR_HoraGeracao, 'ddmmyyyyhh24miss' ),
                                 c_data_efetiva, NULL,
                                 0,
                                 null,
                                 CASE WHEN c_definitivo = 'S' THEN c_OutputFileCredito_Crip ELSE c_OutputFileCredito END,
                                 vLinha,
                                 c_definitivo,
                                 DR_CodBancoFav,
                                 DR_CodAgenciaFav,               DR_Digito, vDetalhe(j)(k).num_conta,
                                 DR_DVConta,              LPAD(substr(NVL(vDetalhe(j)(k).cod_tipo_conta,'00'),1,2),2,'0'),
                                 I_PERPROCESSO,
                                 I_TIPPROCESSO,
                                 I_SEQ_PAGAMENTO,
                                 LPAD( c_grupo_pagamento, 2, '0' ),
                                 'T',
                                 '0',
                                 vDetalhe(j)(k).cod_beneficio,
                                 DR_NumeroDoc,
                                 'N',--CASE WHEN vDetalhe(j)(k).cod_ide_cli_ben IS NOT NULL THEN 'S' ELSE 'N' END,
                                 vDetalhe(j)(k).cod_ide_cli_ben,
                                 'Pagamento originado pelo Fluxo de Saldo de Extinção'
                          );

                      --END IF;

                  EXCEPTION
                  WHEN OTHERS THEN
                       c_ERROR_MSG := SQLERRM;
                       I_MSG_ERRO  := c_ERROR_MSG;
                       lOraErr     := TRUE;
                       RAISE e_ERROR;

                  END PRINT_FILE;

                  UTL_FILE.FFLUSH(f_OutputCredito);

                  vQtdeMoedaDetalhe := vQtdeMoedaDetalhe + to_number(DR_QtdMoeda);
                  c_total_liquido   := c_total_liquido + ROUND(vDetalhe(j)(k).val_liquido,2);
                  c_total_geral     := c_total_geral + ROUND(vDetalhe(j)(k).val_liquido,2);

                  vcontador := vcontador + 1;
                  vprocesso := 'Incluindo registro ' || vcontador || ' na tb_folha.';

                  /*IF c_definitivo = 'S' THEN

                      begin
                            UPDATE   TB_HFOLHA
                            SET   cod_banco       = LPAD(vDetalhe(j)(k).cod_banco, 5, '0'),
                                  num_agencia      = LPAD(vDetalhe(j)(k).num_agencia, 8, '0'),
                                  num_dv_agencia   = vDvAg,
                                  num_conta       = vDetalhe(j)(k).num_conta,
                                  num_dv_conta     = vDetalhe(j)(k).num_dv_conta,
                                  cod_tipo_conta   = vDetalhe(j)(k).cod_tipo_conta
                            WHERE   cod_ins        = c_cod_ins
                            AND     tip_processo   = c_tipo_processo
                            AND     per_processo   = I_PERPROCESSO
                            and     cod_beneficio  = vDetalhe(j)(k).cod_beneficio
                            AND     cod_ide_cli_ben    = vDetalhe(j)(k).cod_ide_cli;
                        exception
                            when others then
                              null;
                     end;
                  END IF;*/

              END LOOP;

              IF not lFim THEN

                TL_LoteServico     := LPAD(v_lote,4,0);
                TL_QTDRegLote      := LPAD(c_cont_seq + 2,6,'0');     -- Quantidade Registro do Lote 1+3+5
                TL_VALDebCred     := LPAD(ROUND(c_total_liquido,2) * 100,18,'0');
                TL_ValQtdMoedas   := LPAD(vQtdeMoedaDetalhe,18,0);         -- Somatorio Tipo Registro 3 + Seg A

                UTL_FILE.PUT_LINE( f_OutputCredito, TL_CodBanco      ||TL_LoteServico  ||TL_RegistroDet  ||
                                                    TL_Brancos1      ||TL_QTDRegLote    ||TL_VALDebCred    ||
                                                    TL_ValQtdMoedas  ||TL_Brancos2      ||TL_CodOcorrencia || CHR(13)   );

                TR_QTDRegLote    := LPAD(v_lote,6,'0');
                TR_QTDRegArq     := LPAD(c_cont_seq + 4,6,'0');
                TR_QtdContas     := LPAD(1,6,0);

                UTL_FILE.PUT_LINE( f_OutputCredito,   TR_CodBanco    || TR_LoteServico    ||  TR_RegistroDet  ||
                                                      TR_Brancos1    || TR_QTDRegLote    ||  TR_QTDRegArq    ||
                                                      TR_QtdContas  || TR_Brancos2  ||CHR(13) );
                UTL_FILE.FCLOSE( f_OutputCredito );
              END IF;

              IF c_definitivo = 'S' THEN

                /*------------------------------------------
                  Atualiza os controles de envio para banco
                ------------------------------------------*/
                BEGIN

                      c_num_nsa := vQtdeArq + c_num_nsa;

                      UPDATE   TB_ENVIO_BANCO
                      SET    VAL_LIQUIDO      = c_total_geral,
                            DAT_ENVIO        = SYSDATE,
                            DAT_ULT_ATU      = SYSDATE,
                            NOM_USU_ULT_ATU  = USER,
                            NOM_PRO_ULT_ATU  = 'GERA_ARQ_CNAB',
                            NUM_NSA         = c_num_nsa
                      WHERE  COD_INS           = c_cod_ins
                      AND    PER_PROCESSO     = I_PERPROCESSO
                      AND    COD_TIP_PROCESSO = I_TIPPROCESSO
                      AND    SEQ_PAGAMENTO     = I_SEQ_PAGAMENTO
                      AND    COD_ENTIDADE     = NVL(I_COD_ENTIDADE,999)
                      AND    COD_BANCO         = NVL(I_BANCO,001)
                      AND   NUM_GRP          = c_grupo_pagamento
                      AND   COD_CONV         = TRUNC( HR_CodConvenio );

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_ENVIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                      UPDATE TB_CONVENIO_BANCO
                      SET NUM_NSA   = c_num_nsa
                      WHERE COD_INS   = c_cod_ins
                      AND   COD_BANCO = NVL(I_BANCO,001)
                      AND   COD_CONV  = TRUNC( HR_CodConvenio )
                      -- 06/07/2010
                      -- Inserida a condicao para atualizar somente o convenio que deve ser afetado por este processo
                      AND   NUM_SEQ   = ( SELECT MIN(CB.NUM_SEQ) FROM TB_CONVENIO_BANCO CB WHERE CB.COD_CONV=TRUNC( HR_CodConvenio ));

                      IF sql%rowcount = 0 THEN
                         ROLLBACK;
                         c_ERROR_MSG := 'REGISTRO NAO ATUALIZADO NA TABELA DE CONTROLE DE ENVIO ( TB_CONVENIO_BANCO )';
                         lOraErr := TRUE;
                      END IF;

                EXCEPTION
                  WHEN OTHERS THEN
                   c_ERROR_MSG := 'ERRO AO ATUALIZAR TABELAS DE CONTROLE DE ENVIO (TB_ENVIO_BANCO) : ' || SQLERRM;
                   lOraErr     := TRUE;
                   RAISE e_ERROR;
                END;

                COMMIT;

              END IF;

          END IF;

        EXCEPTION
        WHEN OTHERS THEN
          GOTO END_LOOP;

        END;

        COMMIT;

        <<GERA_RESUMO>>
        BEGIN

            IF (c_definitivo = 'S') THEN

                SP_INCLUI_RESUMO_BANCARIO(I_PERPROCESSO,
                                          I_TIPPROCESSO,
                                          I_SEQ_PAGAMENTO,
                                          LPAD( NVL( c_grupo_pagamento, '00' ), 2, '0' ),
                                          c_data_efetiva,
                                          c_OutputFileCredito,
                                          c_OutputFileCredito_Crip,
                                          HR_DataGeracao,
                                          HR_HoraGeracao,
                                          c_total_liquido,
                                          c_count_seg_a,
                                          'N' );

                c_OutputFileCredito := c_OutputFileCredito_Crip||'_'||c_OutputFileCredito;
                SP_ENCRIPTA_ARQ_BANCARIO(c_OutputFileCredito);

                -- GERA RELATÓRIOS DE ARQUIVOS ENVIADOS AO BANCO E DE CONTAS JUDICIAIS
                USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_ARQ_ENV_BANCO('REL_ARQUIVOS_ENVIADOS_BANCO_'||TO_CHAR(c_data_efetiva,'YYYYMMDD'), c_data_efetiva, 'S','A');
                --USER_IPESP.PAC_RELATORIOS_FOLHA.SP_REL_CONTASJUDICIAIS('REL_CONTAS_JUDICIAIS_'||TO_CHAR(c_data_efetiva,'YYYYMMDD')||'_'||TO_CHAR(LPAD(I_GRP_PAGTO,2,'0')),1,I_TIPPROCESSO,I_PERPROCESSO,I_SEQ_PAGAMENTO,c_data_efetiva, I_GRP_PAGTO);


            END IF;

        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;

        END;

        <<END_LOOP>>
        IF lOraErr THEN
           I_NOM_ARQUIVO := NULL;
           RAISE e_ERROR;
        END IF;



    END LOOP;

    UTL_FILE.FCLOSE_ALL;

    -- ATUALIZA
    UPDATE USER_IPESP.TB_SALDO_EXTINCAO S
       SET S.FLG_PROCESSAMENTO = 'F',
           S.TIP_PROCESSO = I_TIPPROCESSO,
           S.PER_PROCESSO = I_PERPROCESSO,
           S.DAT_PAGAMENTO = c_data_efetiva,
           S.SEQ_PAGAMENTO = I_SEQ_PAGAMENTO
     WHERE S.COD_INS = 1
       AND S.FLG_PROCESSAMENTO = 'A'
       AND S.VAL_LIQUIDO > 0
       AND EXISTS
       (
          SELECT 1
            FROM user_ipesp.tb_rel_folha_aux rr
           WHERE rr.cod_ins               = c_cod_ins
             and rr.tip_processo          = I_TIPPROCESSO
             and rr.seq_pagamento         = I_SEQ_PAGAMENTO
             and rr.per_processo          = I_PERPROCESSO
             and rr.num_grupo             = lpad(I_GRP_PAGTO,2,'0')
             and rr.dat_pgto              = c_data_efetiva
       );

       COMMIT;
    --

  /*-------------------------
    Fecha o registro do log de processamento - Situacao 'F' - Finalizado
    -------------------------*/

    PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',   -- Bancos
                                        p_cod_ins                => 1,
                                        p_per_processo          => I_PERPROCESSO,
                                        p_cod_tip_processo      => I_TIPPROCESSO,
                                        p_seq_pagamento          => I_SEQ_PAGAMENTO,
                                        p_des_tipos_benef        => I_DES_NOM_BENEF,
                                        p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                        p_cod_banco              => NVL(I_BANCO,001),
                                        p_num_tip_emissao        => NULL,
                                        p_cod_ide_cli            => NULL,
                                        p_dat_agenda_proc        => SYSDATE,
                                        p_flg_processamento      => 'F' ,             -- Finalizado
                                        p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                        p_cod_cargo             => null,
                                        p_cod_categoria         => null,
                                        p_cod_pccs              => null,
                                        p_cod_entidade          => I_COD_ENTIDADE,
                                        p_flg_retorno            => c_erro_log ); -- Variavel da rotina para receber o retorno do registro do log

    IF TO_NUMBER(c_erro_log) <> 0 THEN
      RAISE e_ERROR;
    END IF;

  EXCEPTION

  WHEN e_ERROR THEN
       DBMS_OUTPUT.PUT_LINE(c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||SQLERRM);
       UTL_FILE.FCLOSE_ALL;
       RAISE e_ERROR;


  WHEN OTHERS THEN
       c_error_msg := SQLERRM;
       DBMS_OUTPUT.PUT_LINE('ERRO ORACLE1: '||c_ERROR_MSG);
       I_MSG_ERRO  := c_ERROR_MSG;
       UTL_FILE.FCLOSE_ALL;
       DBMS_OUTPUT.PUT_LINE(vprocesso);
       RAISE e_ERROR;

  END;

EXCEPTION
  WHEN OTHERS THEN

      /*-------------------------
      Fecha o registro do log de processamento - Situacao 'E' - Interrompido ou com erros
      -------------------------*/

      PAC_PROCESSAMENTO.SP_REGISTRA_LOG(  p_cod_tip_processamento  => '04',             -- Bancos
                                          p_cod_ins                => 1,
                                          p_per_processo          => I_PERPROCESSO,
                                          p_cod_tip_processo      => I_TIPPROCESSO,
                                          p_seq_pagamento          => I_SEQ_PAGAMENTO,  -- Alterar para I_SEQ_PAGAMENTO
                                          p_des_tipos_benef        => I_DES_NOM_BENEF,
                                          p_cod_tipo_beneficio    => I_COD_TIPO_BENEF,
                                          p_cod_banco              => NVL(I_BANCO,001),
                                          p_num_tip_emissao        => NULL,
                                          p_cod_ide_cli            => NULL,
                                          p_dat_agenda_proc        => SYSDATE,
                                          p_flg_processamento      => 'E' ,             -- Agendado
                                          p_msg_erro              => c_ERROR_MSG,      -- Variavel da rotina para receber a mensagem,
                                          p_cod_cargo             => null,
                                          p_cod_categoria         => null,
                                          p_cod_pccs              => null,
                                          p_cod_entidade          => I_COD_ENTIDADE,
                                          p_flg_retorno            => c_erro_log );      -- Variavel da rotina para receber o retorno do registro do log


  END GERA_ARQ_SALDO_EXTINCAO_old;

PROCEDURE sp_start_carga_retorno_guia IS

  /*-------------------------------------------------------------------------------------------------------------------------
  Procedure : sp_start_carga_retorno_guia
  Objetivo  : Realiza a carga dos arquivos de retorno de cobranca pendentes de processamento
  Autor    : Gabriel Pavao
  Alterac?o : 12/12/2017 - Criacao da procedure
  -------------------------------------------------------------------------------------------------------------------------*/

  /*--------------Variaveis Para Geracao de Arquivo--------------*/
  f_inputcontrole     utl_file.file_type;
  c_inputcontrole     VARCHAR2(100) := 'ARQS_BANCO_WORK';
  c_inputfilecontrole VARCHAR2(100) := 'Controle_Carga_Guia.txt';

  v_error_msg                VARCHAR2(500);
  v_linha                    VARCHAR2(200);
  v_arquivo_criptografado    VARCHAR2(200);
  v_arquivo_descriptografado VARCHAR2(200);
  v_arquivo_status           VARCHAR2(200);
  v_num_carga                NUMBER;

BEGIN

  BEGIN

    IF NOT utl_file.is_open(f_inputcontrole) THEN
      f_inputcontrole := utl_file.fopen(c_inputcontrole,
                                        c_inputfilecontrole,
                                        'r');
    END IF;

    LOOP
      utl_file.get_line(f_inputcontrole, v_linha);

      v_num_carga := user_ipesp.seq_controle_carga_arq.nextval;

      v_arquivo_criptografado    := substr(v_linha,
                                           1,
                                           instr(v_linha, '|', 1) - 1);
      v_arquivo_descriptografado := v_num_carga || '_' ||
                                    substr(v_linha,
                                           instr(v_linha, '|', 1) + 1,
                                           (instr(v_linha, '|', 1, 2) -
                                           instr(v_linha, '|', 1)) - 1);

      v_arquivo_status := upper(substr(v_linha,
                                       instr(v_linha, '|', 1, 2) + 1,
                                       10));

      INSERT INTO user_ipesp.tb_controle_carga_arq
        (cod_ins,
         num_carga,
         cod_tipo_arq,
         nome_arq,
         qtd_linhas,
         qtd_lin_erros,
         qtd_lin_lidas,
         flg_processo,
         dat_ini_proc,
         dat_fim_proc,
         dat_referencia,
         flg_fase,
         dat_ing,
         dat_ult_atu,
         nom_usu_ult_atu,
         nom_pro_ult_atu,
         nome_arq_modificado)
      VALUES
        (1,
         v_num_carga,
         3, -- arquivos de retorno bancario,
         v_arquivo_criptografado,
         0,
         0,
         0,
         decode(v_arquivo_status, 'OK', 'A', 'E'),
         NULL,
         NULL,
         to_char(trunc(SYSDATE), 'dd/mm/yyyy'),
         1,
         SYSDATE,
         SYSDATE,
         'CARGA_RETORNO_GUIA',
         'CARGA_RETORNO_GUIA',
         v_arquivo_descriptografado);

      utl_file.frename('ARQS_BANCO_DESCRIPTA',
                       v_arquivo_criptografado,
                       'ARQS_BANCO_DESCRIPTA',
                       v_arquivo_descriptografado,
                       TRUE);
    END LOOP;

  EXCEPTION
    WHEN no_data_found THEN
      COMMIT;
      f_inputcontrole := utl_file.fopen(c_inputcontrole,
                                        substr(c_inputfilecontrole,
                                               1,
                                               length(c_inputfilecontrole) - 3) || 'ok',
                                        'W');
      utl_file.fclose_all;

    WHEN utl_file.invalid_path THEN
      dbms_output.put_line('Diretorio invalido.');
      utl_file.fclose(f_inputcontrole);
    WHEN OTHERS THEN
      v_error_msg := SQLERRM;
      dbms_output.put_line('ERRO ORACLE: ' || v_error_msg);
      utl_file.fclose_all;
  END;

END sp_start_carga_retorno_guia;

  PROCEDURE SP_START_CARGA_RETORNO_BANCO IS

    /*--------------Variaveis Para Geracao de Arquivo--------------*/
    f_InputControle           UTL_FILE.FILE_TYPE;
    c_InputControle           VARCHAR2(100) := 'ARQS_BANCO_WORK';
    c_InputFileControle       VARCHAR2(100) := 'Controle_Carga_bancario.txt';

    v_error_msg varchar2(500);
    v_linha varchar2(200);
    v_arquivo_criptografado varchar2(200);
    v_arquivo_descriptografado varchar2(200);
    v_arquivo_status varchar2(200);

  BEGIN

      BEGIN

        IF NOT UTL_FILE.IS_OPEN( f_InputControle ) THEN
            f_InputControle := UTL_FILE.FOPEN( c_InputControle, c_InputFileControle, 'r' );
        END IF;

        Loop
            UTL_File.Get_Line(f_InputControle, v_Linha);
            v_arquivo_criptografado    := substr(v_linha,1,
                                          instr(v_Linha,'|',1) - 1);
            v_arquivo_descriptografado := substr
                                         (v_linha,
                                          instr(v_Linha,'|',1) + 1,
                                          (instr(v_Linha,'|',1,2) -
                                          instr(v_Linha,'|',1)) -1
                                          );

            v_arquivo_status := upper(substr(v_linha,instr(v_Linha,'|',1,2)+1,10));

            INSERT INTO USER_IPESP.TB_CONTROLE_CARGA_ARQ
            (
                  COD_INS,
                  NUM_CARGA,
                  COD_TIPO_ARQ,
                  NOME_ARQ,
                  QTD_LINHAS,
                  QTD_LIN_ERROS,
                  QTD_LIN_LIDAS,
                  FLG_PROCESSO,
                  DAT_INI_PROC,
                  DAT_FIM_PROC,
                  DAT_REFERENCIA,
                  FLG_FASE,
                  DAT_ING,
                  DAT_ULT_ATU,
                  NOM_USU_ULT_ATU,
                  NOM_PRO_ULT_ATU,
                  NOME_ARQ_MODIFICADO
            )
            VALUES
            (
                  1,
                  user_ipesp.seq_controle_carga_arq.nextval,
                  9, -- arquivos de retorno bancario,
                  v_arquivo_criptografado,
                  0,
                  0,
                  0,
                  case when v_arquivo_status = 'OK' then 'A' else 'E' end,
                  NULL,
                  NULL,
                  to_char(TRUNC(SYSDATE),'dd/mm/yyyy'),
                  1,
                  SYSDATE,
                  SYSDATE,
                  'CARGA_RETORNO_BANCO',
                  'CARGA_RETORNO_BANCO',
                  v_arquivo_descriptografado
             );

        End Loop;

      EXCEPTION
          WHEN No_data_found THEN
               Commit;
               f_InputControle := UTL_FILE.FOPEN( c_InputControle, substr(c_InputFileControle,1,length(c_InputFileControle)-3)||'ok', 'W');
               UTL_FILE.FCLOSE_ALL;
          WHEN UTL_FILE.INVALID_PATH THEN
               Dbms_Output.Put_Line('Diretorio invalido.');
               UTL_File.Fclose(f_InputControle);
          WHEN OTHERS THEN
               v_error_msg := SQLERRM;
               DBMS_OUTPUT.PUT_LINE('ERRO ORACLE: '||v_error_msg);
               UTL_FILE.FCLOSE_ALL;
      END;


  END SP_START_CARGA_RETORNO_BANCO;

  PROCEDURE sp_carga_arq_febraban(p_cod_ins     NUMBER,
                                p_num_carga   NUMBER,
                                p_cod_tip_arq NUMBER,
                                p_nome_arq    VARCHAR2) IS

  --CONTROLE DE LEITURA DO ARQUIVO
  v_dir VARCHAR2(500) := 'ARQS_BANCO_DESCRIPTA';
  v_dir_log VARCHAR2(500) := 'ARQS_BANCO_LOG';


  --VARIAVEIS DE APOIO
  v_count_erro        NUMBER := 0; --iterar a qtd de erros encontrados no procedimento de carga
  v_count_reg_arq     NUMBER := 0; --iterar a qtd de registros do arquivo no procedimento de validação
  v_qtd_erro          NUMBER := 0; --quantidade total de erros ocorridos no procedimento de carga
  v_qtd_total_reg_arq NUMBER := 0; --quantidade total de registros do arquivo coletados no procedimento de validação

  --VARIAVEIS DE CONTROLE DE EXECUCAO
  v_extensao_arq VARCHAR2(10); --coleta extensao do arquivo
  e_extensao_invalida EXCEPTION; --extensao for invalida
  e_qtd_registro_lote EXCEPTION; --qtd de registro do lote inconsistente
  e_lote_inconsistente EXCEPTION; --quando o lote nao possui cabecalho
  e_qtd_lote_inconsistente EXCEPTION; --qtd de lotes inconsistente
  e_tamanho_linha_inconsistente EXCEPTION; --tamanho do registro tiver diferente de 240
  e_tipo_arq_invalido EXCEPTION; --usado quando o tipo de arquivo for processamento
  e_aborta_processamento EXCEPTION; --usado para quando for necessario interromper o processamento
  e_pagamento_duplicado_sega EXCEPTION; --usado quando tentar inserir um registro que ja existe na tabela sega
  e_pagamento_duplicado_segb EXCEPTION; --usado quando tentar inserir um registro que ja existe na tabela sega

  v_qtd_total_reg_lote NUMBER := 0; --quantidade total de registros por lote
  v_count_reg_lote     NUMBER := 0; --contador de registros por lote
  v_count_lote         NUMBER := 0; --contador de lotes do arquivo
  v_qtd_total_lote     NUMBER := 0; --quantidade total de lotes do arquivo
  v_header_lote        NUMBER := 0; --flag se o lote possui cabecalho (0=nao possui ; 1=possui)
  v_length_line        NUMBER := 0; --tamanho da linha do arquivo
  v_check_tbseg        NUMBER := 0; -- antes de inserir o registro na tb_dret_febra_sega, verifica se ja nao existe

  --loga erros
  PROCEDURE sp_loga_erro(p_num_carga NUMBER,
                         p_nome_arq  VARCHAR2,
                         p_desc_erro VARCHAR2) IS

  BEGIN

    INSERT INTO tb_carga_arquivos_erros
      (num_carga, nome_arquivo, desc_erro)
    VALUES
      (p_num_carga, p_nome_arq, p_desc_erro);

    COMMIT;
  END;

  --GERAR LOG - RELATORIO TEXTO
  PROCEDURE sp_gera_log(p_nome_arq           VARCHAR2 DEFAULT NULL,
                        p_qtd_total_reg_arq  NUMBER DEFAULT 0,
                        p_qtd_total_lote     NUMBER DEFAULT 0,
                        p_qtd_total_reg_lote NUMBER DEFAULT 0,
                        p_qtd_erro           NUMBER DEFAULT 0,
                        p_tipo_param         VARCHAR2 DEFAULT NULL,
                        p_data_inicio        DATE DEFAULT NULL,
                        p_data_fim           DATE DEFAULT NULL,
                        p_mensagem           VARCHAR2 DEFAULT NULL

                        ) IS

    --CONTROLE DE LEITURA DO ARQUIVO
    v_file_type utl_file.file_type;
    v_arq       VARCHAR2(500);

    v_informacoes VARCHAR2(4000);
    v_header      VARCHAR2(4000);
    v_trailer     VARCHAR2(4000);
    v_delimit     VARCHAR2(4000);

  BEGIN

    v_informacoes := '';
    v_header      := '';
    v_trailer     := '';

    v_delimit := '***************************************';

    v_header := rpad('Arquivo: ', 25) || p_nome_arq || chr(10) || chr(10) ||
                rpad('Inicio do processo : ', 25) ||
                to_char(p_data_inicio, 'dd/mm/rrrr hh24:mi:ss') || chr(10);

    v_trailer := v_delimit || chr(10) || rpad('Fim do processo : ', 25) ||
                 to_char(p_data_fim, 'dd/mm/rrrr hh24:mi:ss') || chr(10);

    IF p_num_carga = 15374 THEN
      NULL;
    END IF;

    v_arq       := p_nome_arq || '_' || to_char(SYSDATE, 'ddmmrrrr') ||
                   '.log';
    v_file_type := utl_file.fopen(v_dir_log, v_arq, 'A', 32767);

    IF p_tipo_param = 'I' THEN
      v_informacoes := v_header;

    ELSIF p_tipo_param = 'F' THEN
      v_informacoes := v_trailer;

    ELSIF p_tipo_param = 'E' THEN
      v_informacoes := p_mensagem;

    ELSIF p_tipo_param = 'A' THEN
      v_informacoes := v_delimit || chr(10) ||
                       rpad('Total Registro Arquivo: ', 25) ||
                       p_qtd_total_reg_arq || chr(10) ||
                       rpad('Total Lotes: ', 25) || p_qtd_total_lote ||
                       chr(10) || rpad('Total Erros Ocorridos: ', 25) ||
                       p_qtd_erro || chr(10) || chr(10);
    END IF;

    utl_file.put_line(v_file_type, v_informacoes);

    utl_file.fclose(v_file_type);

  EXCEPTION
    WHEN OTHERS THEN
      dbms_output.put_line('[ERRO GERACAO LOG] - NUM_CARGA: ' ||
                           p_num_carga || ' - ' || SQLERRM);

  END sp_gera_log;

  --UTILIZADO PARA SABER SE
  FUNCTION func_valida_existencia(p_seu_num  VARCHAR2,
                                  p_tabela   VARCHAR2,
                                  p_data_pag NUMBER DEFAULT NULL,
                                  p_val_pag  NUMBER DEFAULT NULL)
    RETURN NUMBER IS

    v_data_pag  NUMBER;
    v_valor_pag NUMBER;

    v_check NUMBER := 0;

  BEGIN

    v_data_pag  := lpad(p_data_pag, 8, 0);
    v_valor_pag := p_val_pag / 100;

    IF upper(p_tabela) = 'SEGA' THEN

      SELECT COUNT(*)
        INTO v_check
        FROM user_ipesp.tb_dret_febra_sega tbsega
       WHERE tbsega.seu_num = p_seu_num
         AND lpad(tbsega.data_pag, 8, 0) = p_data_pag
         AND tbsega.val_pag = v_valor_pag;

    ELSIF upper(p_tabela) = 'SEGB' THEN

      SELECT COUNT(*)
        INTO v_check
        FROM user_ipesp.tb_dret_febra_segb tbsegb
       WHERE tbsegb.seu_num = p_seu_num;

    ELSIF upper(p_tabela) = 'SEGA_PREVIA' THEN

      SELECT COUNT(*)
        INTO v_check
        FROM user_ipesp.tb_dret_febra_sega_previa tbsega_prev
       WHERE tbsega_prev.seu_num = p_seu_num
         AND lpad(tbsega_prev.data_pag, 8, 0) = p_data_pag
         AND tbsega_prev.val_pag = v_valor_pag;

    ELSIF upper(p_tabela) = 'SEGB_PREVIA' THEN

      SELECT COUNT(*)
        INTO v_check
        FROM user_ipesp.tb_dret_febra_segb_previa tbsegb_prev
       WHERE tbsegb_prev.seu_num = p_seu_num;

    END IF;

    IF v_check > 0 THEN
      RETURN 1;
    ELSE
      RETURN 0;
    END IF;
  EXCEPTION
    WHEN OTHERS THEN
      RETURN - 1;

  END func_valida_existencia;

  PROCEDURE sp_atualiza_tb_controle(p_cod_ins       NUMBER DEFAULT 0,
                                    p_cod_tip_arq   NUMBER DEFAULT 0,
                                    p_num_carga     NUMBER DEFAULT 0,
                                    p_nome_arq      VARCHAR2 DEFAULT NULL,
                                    p_tipo          VARCHAR2 DEFAULT NULL,
                                    p_qtd_reg       NUMBER DEFAULT 0,
                                    p_qtd_erros     NUMBER DEFAULT 0,
                                    p_qtd_reg_lidos NUMBER DEFAULT 0) IS
    v_flg_processo VARCHAR2(1);

  BEGIN

    IF p_tipo = 'A' THEN
      --AO FINAL DO PROCESSO DE CARGA - "A"=ATUALIZACAO NORMAL
      v_flg_processo := 'F';
    ELSIF p_tipo = 'E' THEN
      --DURANTE O PROCESSO DE VALIDACAO ARQUIVO - "E"=ERRO
      v_flg_processo := 'E';
    END IF;

    UPDATE user_ipesp.tb_controle_carga_arq
       SET cod_tipo_arq  = p_cod_tip_arq,
           flg_processo  = v_flg_processo,
           qtd_linhas    = p_qtd_reg,
           qtd_lin_erros = p_qtd_erros,
           qtd_lin_lidas = p_qtd_reg_lidos,
           dat_ini_proc  = SYSDATE,
           dat_fim_proc  = SYSDATE,
           dat_ult_atu   = SYSDATE
     WHERE cod_ins = p_cod_ins
       AND num_carga = p_num_carga
       AND nome_arq_modificado = p_nome_arq;

    COMMIT;

  END sp_atualiza_tb_controle;

  --processo de validacao do arquivo
  PROCEDURE sp_validar_arquivo IS

    --CONTROLE DE LEITURA DO ARQUIVO
    v_file_type utl_file.file_type;
    v_line      VARCHAR2(4000);

    v_msg_error VARCHAR2(1000);

    --variaveis de arquivo - valores obtidos do arquivo
    v_cod_segmento        VARCHAR2(1);
    v_qtd_reg_arq         NUMBER;
    v_cod_banco           NUMBER(8);
    v_num_lote            NUMBER(8);
    v_tipo_reg            NUMBER(8);
    v_tipo_insc_emp       NUMBER;
    v_num_insc_emp        NUMBER;
    v_cod_conv            VARCHAR2(20);
    v_agen                NUMBER;
    v_dv_agen             VARCHAR2(1);
    v_num_conta           NUMBER;
    v_dv_conta            VARCHAR2(1);
    v_dv_agen_conta       VARCHAR2(1);
    v_nom_emp             VARCHAR2(30);
    v_tipo_movimento      NUMBER;
    v_cod_movimento       NUMBER;
    v_cod_banco_favor     NUMBER;
    v_agencia_favor       NUMBER;
    v_dv_agencia_favor    VARCHAR2(1);
    v_conta_favor         NUMBER;
    v_dv_conta_favor      VARCHAR2(1);
    v_dv_agen_conta_favor VARCHAR2(1);
    v_nome_favor          VARCHAR2(30);
    v_seu_numero          VARCHAR2(20);
    v_data_pagto          NUMBER;
    v_tipo_moeda          VARCHAR2(3);
    v_valor_pagto         NUMBER(13, 5);
    v_data_real_pagto     NUMBER;
    v_valor_real_pagto    NUMBER(13, 2);
    v_qtd_moeda           NUMBER(10, 5);
    v_ocorrencias         VARCHAR2(10);
    v_qtd_lote_arq        NUMBER;

    --- SEGMENTO "B"
    v_num_registro    NUMBER;
    v_tipo_insc_favor NUMBER;
    v_num_insc_favor  NUMBER;
    v_logradouro      VARCHAR2(30);
    v_numero          NUMBER;
    v_complem         VARCHAR2(15);
    v_bairro          VARCHAR2(15);
    v_cidade          VARCHAR2(20);
    v_cep             NUMBER;
    v_complem_cep     VARCHAR2(3);
    v_estado          VARCHAR2(2);
    v_data_venc       NUMBER;
    v_vlr_doc         NUMBER(13, 2);
    v_abat_vlr        NUMBER(13, 2);
    v_vlr_desc        NUMBER(13, 2);
    v_vlr_mora        NUMBER(13, 2);
    v_vlr_multa       NUMBER(13, 2);
    v_cod_doc         VARCHAR2(15);
    v_aviso           NUMBER;
    v_cod_ug          NUMBER;
    v_cnab            VARCHAR2(8);

    --**controle
    v_check_sigeprev     VARCHAR2(20);
    v_cod_agencia_spprev VARCHAR2(50);

    v_tip_arq VARCHAR2(11);

  BEGIN

    --GERAR LOG DE INICIO DE CARGA
    sp_gera_log(p_nome_arq    => p_nome_arq,
                p_tipo_param  => 'I',
                p_data_inicio => SYSDATE);

    --validar extensao do arquivo
    v_extensao_arq := substr(p_nome_arq, -3, 3);
    IF lower(v_extensao_arq) != 'txt' THEN
      RAISE e_extensao_invalida;
    END IF;

    v_file_type := utl_file.fopen(v_dir, p_nome_arq, 'r', 32767);

    LOOP
      BEGIN

        utl_file.get_line(v_file_type, v_line);

        --iterar qtd de registros do arquivo
        v_count_reg_arq := v_count_reg_arq + 1;

        --qtd de caracteres do registro do arquivo
        v_length_line := length(REPLACE(v_line, chr(13)));

        IF v_length_line != 240 THEN
          RAISE e_tamanho_linha_inconsistente;
        END IF;

        --coletando tipo de registro (0,1,3,5,9)
        v_tipo_reg := substr(v_line, 8, 1);

        -- "0" = HEADER ARQUIVO
        IF v_tipo_reg = 0 THEN

          --agencia/dv_agencia/conta/dv_conta
      v_check_sigeprev := substr(v_line, 53, 19);

          -- VALIDAR SE O ARQUIVO NAO E DO SIGEPREV
      -- ATUAL: 01897X0000001009575
          SELECT cod_par
            INTO v_cod_agencia_spprev --**
            FROM user_ipesp.tb_codigo
           WHERE cod_num = 10199;

          --VALIDAR SE O DADOS DO ARQUIVO CORRESPONDEM AS DADOS BANCARIOS PARAMETRIZADOS
          IF v_check_sigeprev != v_cod_agencia_spprev THEN
            RAISE e_tipo_arq_invalido;
          END IF;

          --VALIDAR SE E TIPO PROCESSAMENTO
          v_tip_arq := substr(v_line, 181, 11);

          IF v_tip_arq = 'PROCESSAMEN' THEN
            --GERAR lOG
            RAISE e_tipo_arq_invalido;
          END IF;

          v_cod_banco     := substr(v_line, 1, 3);
          v_num_lote      := substr(v_line, 4, 4);
          v_tipo_reg      := substr(v_line, 8, 1);
          v_tipo_insc_emp := substr(v_line, 18, 1);
          v_num_insc_emp  := substr(v_line, 19, 14);
          v_cod_conv      := substr(v_line, 33, 20);
          v_agen          := substr(v_line, 53, 5);
          v_dv_agen       := substr(v_line, 58, 1);
          v_num_conta     := substr(v_line, 59, 12);
          v_dv_conta      := substr(v_line, 71, 1);
          v_dv_agen_conta := substr(v_line, 72, 1);
          v_nom_emp       := substr(v_line, 73, 30);

        END IF;

        -- "1" = HEADER LOTE
        IF v_tipo_reg = 1 THEN

          --ITERAR UM REGISTRO DE LOTE (CABECALHO DO LOTE FAZ PARTE DA CONTAGEM DE REGISTRO DE LOTE)
          v_count_reg_lote := v_count_reg_lote + 1;

          --FLAG PARA IDENTIFICAR QUE O LOTE POSSUI CABECALHO (0 = "NAO POSSUI" ; 1 = "POSSUI")
          v_header_lote := 1;

          --COLETAR VALORES DO ARQUIVO
          v_cod_banco     := substr(v_line, 1, 3);
          v_num_lote      := substr(v_line, 4, 4);
          v_tipo_reg      := substr(v_line, 8, 1);
          v_num_insc_emp  := substr(v_line, 19, 14);
          v_cod_conv      := substr(v_line, 33, 20);
          v_agen          := substr(v_line, 53, 5);
          v_dv_agen       := substr(v_line, 58, 1);
          v_num_conta     := substr(v_line, 59, 12);
          v_dv_conta      := substr(v_line, 71, 1);
          v_dv_agen_conta := substr(v_line, 72, 1);
          v_nom_emp       := substr(v_line, 73, 30);
          v_ocorrencias   := substr(v_line, 231, 10);

        END IF;

        -- "3" = DETALHE DO LOTE
        IF v_tipo_reg = 3 THEN

          --ITERAR UM REGISTRO DE LOTE (SOMAR O DETALHE DO LOTE)
          v_count_reg_lote := v_count_reg_lote + 1;

          --VALIDAR SE O LOTE TEM CABECALHO
          IF v_header_lote = 0 THEN
            RAISE e_lote_inconsistente;
          END IF;

          --SABER QUAL SEGMENTO DO REGISTRO (A,B,C) -** OBS: NO NOMENTO VAMOS CARREGAR SOMENTE SEGMENTO "A"
          v_cod_segmento := substr(v_line, 14, 1);

          --SEGMENTO "A"
          IF v_cod_segmento = 'A' THEN

            --COLETAR VALORES DO ARQUIVO
            v_cod_banco           := substr(v_line, 1, 3);
            v_num_lote            := substr(v_line, 4, 4);
            v_tipo_reg            := substr(v_line, 8, 1);
            v_cod_segmento        := substr(v_line, 14, 1);
            v_tipo_movimento      := substr(v_line, 15, 1);
            v_cod_movimento       := substr(v_line, 16, 2);
            v_cod_banco_favor     := substr(v_line, 21, 3);
            v_agencia_favor       := substr(v_line, 24, 5);
            v_dv_agencia_favor    := substr(v_line, 29, 1);
            v_conta_favor         := substr(v_line, 30, 12);
            v_dv_conta_favor      := substr(v_line, 42, 1);
            v_dv_agen_conta_favor := substr(v_line, 43, 1);
            v_nome_favor          := substr(v_line, 44, 30);
            v_seu_numero          := substr(v_line, 74, 20);
            v_data_pagto          := substr(v_line, 94, 8);
            v_tipo_moeda          := substr(v_line, 102, 3);
            v_qtd_moeda           := substr(v_line, 105, 15);
            v_valor_pagto         := substr(v_line, 120, 15);
            v_data_real_pagto     := substr(v_line, 155, 8);
            v_valor_real_pagto    := substr(v_line, 163, 15);
            v_ocorrencias         := substr(v_line, 231, 10);

          END IF;

          --SEGMENTO "B"
          IF v_cod_segmento = 'B' THEN

            --COLETAR VALORES DO ARQUIVO
            v_cod_banco       := substr(v_line, 1, 3);
            v_num_lote        := substr(v_line, 4, 4);
            v_tipo_reg        := substr(v_line, 8, 1);
            v_num_registro    := substr(v_line, 9, 5);
            v_cod_segmento    := substr(v_line, 14, 1);
            v_tipo_insc_favor := substr(v_line, 18, 1);
            v_num_insc_favor  := substr(v_line, 19, 14);

          END IF;

        END IF;

        -- "5" = TRAILER DE LOTE
        IF v_tipo_reg = 5 THEN

          --VALIDAR SE O LOTE TEM CABECALHO
          IF v_header_lote = 0 THEN
            RAISE e_lote_inconsistente;

          ELSIF v_header_lote = 1 THEN

            --ITERAR A QUANTIDADE DE LOTE
            v_count_lote := v_count_lote + 1;

            --QUANTIDADE TOTAL DE LOTES DO ARQUIVO
            v_qtd_total_lote := v_count_lote;
          END IF;

          --COLETAR VALORES DO ARQUIVO
          v_cod_banco   := substr(v_line, 1, 3);
          v_num_lote    := substr(v_line, 4, 4);
          v_tipo_reg    := substr(v_line, 8, 1);
          v_qtd_reg_arq := substr(v_line, 18, 6);

          --ITERAR UM REGISTRO DE LOTE (TRAILER DO LOTE FAZ PARTE DA CONTAGEM DE REGISTRO DE LOTE)
          v_count_reg_lote := v_count_reg_lote + 1;

          --TOTAL DE REGISTROS DO LOTE (HEADER LOTE = "1" + DETALHE LOTE = "N" + TRAILER LOTE = "1")
          v_qtd_total_reg_lote := v_count_reg_lote;

          --ZERAR VARIAVEIS AUXILIARES
          v_count_reg_lote := 0;
          v_header_lote    := 0;

          --VALIDAR SE A QTD DE REGISTRO DE LOTE INFORMADO NO TRAILER DE LOTE BATE COM A QTD DE REGISTROS EXISTENTES NO LOTE
          --TOTAL DE REGISTROS != TOTAL INFORMADO NO TRAILER
          IF v_qtd_total_reg_lote != v_qtd_reg_arq THEN
            RAISE e_qtd_registro_lote;
          END IF;

        END IF;

        -- "9" = TRAILER ARQUIVO
        IF v_tipo_reg = 9 THEN

          --COLETANDO DADOS DO TRAILER ARQUIVO
          v_cod_banco    := substr(v_line, 1, 3);
          v_num_lote     := substr(v_line, 4, 4);
          v_tipo_reg     := substr(v_line, 8, 1);
          v_qtd_lote_arq := substr(v_line, 18, 6);

          --VALIDAR SE A QTD DE LOTE INFORMADO NO TRAILER DE ARQUIVO BATE COM A QTD DE LOTES EXISTENTES NO ARQUIVO
          IF v_qtd_total_lote != v_qtd_lote_arq THEN
            RAISE e_qtd_lote_inconsistente;
          END IF;

        END IF;

      EXCEPTION
        WHEN e_tamanho_linha_inconsistente THEN
          v_count_erro := v_count_erro + 1;

          -- 'QUANTIDADE DE CARACTERES DO REGISTRO E DIFERENTE DE 240';
          sp_gera_log(p_nome_arq   => p_nome_arq,
                      p_tipo_param => 'E',
                      p_mensagem   => '[ERRO] [LINHA: ' || v_count_reg_arq ||
                                      '] [QUANTIDADE DE CARACTERES DO REGISTRO E DIFERENTE DE 240]');

          --loga erros
          sp_loga_erro(p_num_carga,
                       p_nome_arq,
                       '[ERRO] [LINHA: ' || v_count_reg_arq ||
                       '] [QUANTIDADE DE CARACTERES DO REGISTRO E DIFERENTE DE 240]');

        WHEN e_qtd_registro_lote THEN
          v_count_erro := v_count_erro + 1;

          -- 'QUANTIDADE DE REGISTROS DO LOTE NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO LOTE';
          sp_gera_log(p_nome_arq   => p_nome_arq,
                      p_tipo_param => 'E',
                      p_mensagem   => '[ERRO] [LINHA: ' || v_count_reg_arq ||
                                      '] [QUANTIDADE DE REGISTROS DO LOTE NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO LOTE]');

          --loga erros
          sp_loga_erro(p_num_carga,
                       p_nome_arq,
                       '[ERRO] [LINHA: ' || v_count_reg_arq ||
                       '] [QUANTIDADE DE REGISTROS DO LOTE NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO LOTE]');

        WHEN e_lote_inconsistente THEN
          v_count_erro := v_count_erro + 1;

          --'LOTE NAO POSSUI CABECALHO';
          sp_gera_log(p_nome_arq   => p_nome_arq,
                      p_tipo_param => 'E',
                      p_mensagem   => '[ERRO] [LINHA: ' || v_count_reg_arq ||
                                      '] [LOTE NAO POSSUI CABECALHO]');

          --loga erros
          sp_loga_erro(p_num_carga,
                       p_nome_arq,
                       '[ERRO] [LINHA: ' || v_count_reg_arq ||
                       '] [LOTE NAO POSSUI CABECALHO]');

        WHEN e_qtd_lote_inconsistente THEN
          v_count_erro := v_count_erro + 1;

          --'QUANTIDADE DE LOTES DO ARQUIVO NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO ARQUIVO';
          sp_gera_log(p_nome_arq   => p_nome_arq,
                      p_tipo_param => 'E',
                      p_mensagem   => '[ERRO] [LINHA: ' || v_count_reg_arq ||
                                      '] [QUANTIDADE DE LOTES DO ARQUIVO NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO ARQUIVO]');

          --loga erros
          sp_loga_erro(p_num_carga,
                       p_nome_arq,
                       '[ERRO] [LINHA: ' || v_count_reg_arq ||
                       '] [QUANTIDADE DE LOTES DO ARQUIVO NAO CONDIZ COM A QUANTIDADE ESPECIFICADA NO TRAILER DO ARQUIVO]');

      END;
    END LOOP;

    utl_file.fclose(v_file_type);

  EXCEPTION
    WHEN e_tipo_arq_invalido THEN

      utl_file.fclose(v_file_type);

      -- 'ARQUIVO NAO E DO SIGEPREV';
      sp_gera_log(p_nome_arq   => p_nome_arq,
                  p_tipo_param => 'E',
                  p_mensagem   => '[ARQUIVO FORA DO ESCOPO DE PROCESSAMENTO]');

      --loga erros
      sp_loga_erro(p_num_carga,
                   p_nome_arq,
                   '[ARQUIVO FORA DO ESCOPO DE PROCESSAMENTO]');

      sp_atualiza_tb_controle(p_cod_ins     => 1,
                              p_cod_tip_arq => 13,
                              p_num_carga   => p_num_carga,
                              p_nome_arq    => p_nome_arq,
                              p_tipo        => 'A');

      RAISE e_aborta_processamento;

    WHEN no_data_found THEN
      BEGIN
        utl_file.fclose(v_file_type);

        v_qtd_total_reg_arq := v_count_reg_arq;
        v_count_reg_arq     := 0;

        v_qtd_erro := v_count_erro;

        --loga erros
        sp_loga_erro(p_num_carga, p_nome_arq, 'Validacao ok.');

        --APOS IDENTIFICAR QUE HOUVE ERRO NA VALIDACAO, DEVERA GERAR O RESUMO DO LOG E ENCERRAR O PROCESSAMENTO DO ARQUIVO
        sp_atualiza_tb_controle(p_cod_ins       => 1,
                                p_cod_tip_arq   => p_cod_tip_arq,
                                p_qtd_reg       => v_qtd_total_reg_arq,
                                p_qtd_reg_lidos => v_qtd_total_reg_arq,
                                p_num_carga     => p_num_carga,
                                p_nome_arq      => p_nome_arq,
                                p_qtd_erros     => v_qtd_erro,
                                p_tipo          => 'E');

        IF v_qtd_erro > 0 THEN

          sp_gera_log(p_nome_arq           => p_nome_arq,
                      p_qtd_total_reg_arq  => v_qtd_total_reg_arq,
                      p_qtd_total_lote     => v_qtd_total_lote,
                      p_qtd_total_reg_lote => v_qtd_total_reg_lote,
                      p_data_fim           => SYSDATE,
                      p_qtd_erro           => v_qtd_erro,
                      p_tipo_param         => 'A');

          INSERT INTO user_ipesp.tb_analise_carga_arq
            (cod_ins,
             num_carga,
             num_seq_regi,
             cod_erro,
             des_conteudo_arq,
             des_conteudo_sigeprev,
             dat_ing,
             dat_ult_atu,
             nom_usu_ult_atu,
             nom_pro_utl_atu)
          VALUES
            (p_cod_ins,
             p_num_carga,
             1,
             69,
             'ERRO NA VALIDACAO DO ARQUIVO, CONSULTAR ARQUIVO DE LOG',
             'ERRO NA VALIDACAO DO ARQUIVO, CONSULTAR ARQUIVO DE LOG',
             SYSDATE,
             SYSDATE,
             'SP_CARGA_ARQ_FEBRABA',
             'SP_CARGA_ARQ_FEBRABA');
          COMMIT;
          RAISE e_aborta_processamento;
        END IF;

      END;

    WHEN e_extensao_invalida THEN
      BEGIN
        utl_file.fclose(v_file_type);

        sp_gera_log(p_nome_arq   => p_nome_arq,
                    p_tipo_param => 'E',
                    p_mensagem   => '[EXTENSAO DO ARQUIVO INVÁLIDA]');

        --loga erros
        sp_loga_erro(p_num_carga,
                     p_nome_arq,
                     '[EXTENSAO DO ARQUIVO INVÁLIDA]');

        --ENCERRAR PROCESSAMENTO
        RAISE e_aborta_processamento;

      END;

    WHEN utl_file.invalid_path THEN
      BEGIN
        ROLLBACK;
        utl_file.fclose(v_file_type);

        --loga erros
        sp_loga_erro(p_num_carga,
                     p_nome_arq,
                     'ERRO VALIDACAO: Diretorio invalido.');

      END;

    WHEN OTHERS THEN
      BEGIN

        utl_file.fclose(v_file_type);

        v_msg_error := substr(SQLERRM, 1, 300);

        --loga erros
        sp_loga_erro(p_num_carga,
                     p_nome_arq,
                     'ERRO VALIDACAO: ' || v_msg_error);

        sp_gera_log(p_nome_arq   => p_nome_arq,
                    p_tipo_param => 'E',
                    p_mensagem   => 'ERRO: ' || v_msg_error);

        ROLLBACK;

      END;

  END sp_validar_arquivo;

  --procedimento de carga
  PROCEDURE sp_carga_arquivo IS

    --CONTROLE DE LEITURA DO ARQUIVO
    v_file_type utl_file.file_type;
    v_line      VARCHAR2(4000);
    v_msg_error VARCHAR2(1000);

    --VARIAVEIS DE CONTROLE DE EXECUCAO
    v_count_reg_arq NUMBER := 0;

    --variaveis de arquivo - valores obtidos do arquivo
    v_cod_segmento        VARCHAR2(1);
    v_qtd_reg_arq         NUMBER;
    v_cod_banco           NUMBER(8);
    v_num_seq_envio       NUMBER(8);
    v_num_lote            NUMBER(8);
    v_tipo_reg            NUMBER(8);
    v_tipo_insc_emp       NUMBER;
    v_num_insc_emp        NUMBER;
    v_cod_conv            VARCHAR2(20);
    v_agen                NUMBER;
    v_dv_agen             VARCHAR2(1);
    v_num_conta           NUMBER;
    v_dv_conta            VARCHAR2(1);
    v_dv_agen_conta       VARCHAR2(1);
    v_nom_emp             VARCHAR2(30);
    v_tipo_movimento      NUMBER;
    v_cod_movimento       NUMBER;
    v_cod_banco_favor     NUMBER;
    v_agencia_favor       NUMBER;
    v_dv_agencia_favor    VARCHAR2(1);
    v_conta_favor         NUMBER;
    v_dv_conta_favor      VARCHAR2(1);
    v_dv_agen_conta_favor VARCHAR2(1);
    v_nome_favor          VARCHAR2(30);
    v_seu_numero          VARCHAR2(20);
    v_data_pagto          NUMBER;
    v_tipo_moeda          VARCHAR2(3);
    v_valor_pagto         NUMBER(13, 2);
    v_cod_camara          NUMBER;
    v_nosso_numero        NUMBER;
    v_data_real_pagto     NUMBER;
    v_valor_real_pagto    NUMBER(13, 2);
    v_qtd_moeda           NUMBER(13, 5);
    v_ocorrencias         VARCHAR2(10);
    v_qtd_lote_arq        NUMBER;

    --- SEGMENTO "B"
    v_num_registro    NUMBER;
    v_tipo_insc_favor NUMBER;
    v_num_insc_favor  NUMBER;
    v_logradouro      VARCHAR2(30);
    v_numero          NUMBER;
    v_complem         VARCHAR2(15);
    v_bairro          VARCHAR2(15);
    v_cidade          VARCHAR2(20);
    v_cep             NUMBER;
    v_complem_cep     VARCHAR2(3);
    v_estado          VARCHAR2(2);
    v_data_venc       NUMBER;
    v_vlr_doc         NUMBER(13, 2);
    v_abat_vlr        NUMBER(13, 2);
    v_vlr_desc        NUMBER(13, 2);
    v_vlr_mora        NUMBER(13, 2);
    v_vlr_multa       NUMBER(13, 2);
    v_cod_doc         VARCHAR2(15);
    v_aviso           INTEGER;
    v_cod_ug          NUMBER;
    v_cnab            VARCHAR2(8);

    v_informacao_2        VARCHAR2(40);
    v_cod_finalid_doc     VARCHAR2(2);
    v_cod_finalid_ted     VARCHAR2(5);
    v_cod_finalid_complem VARCHAR2(2);
    v_tip_proc            VARCHAR2(1);
    v_cod_tipo_arq        NUMBER;
    v_tip_arq             VARCHAR2(11);

  BEGIN

    --INICIAR LEITURA DO ARQUIVO
    v_file_type := utl_file.fopen(v_dir, p_nome_arq, 'r', 32767);

    LOOP
      BEGIN

        --ZERAR VALORES DO ARQUIVO
        v_cod_banco           := NULL;
        v_num_lote            := NULL;
        v_tipo_reg            := NULL;
        v_num_registro        := NULL;
        v_cod_segmento        := NULL;
        v_tipo_movimento      := NULL;
        v_cod_movimento       := NULL;
        v_cod_camara          := NULL;
        v_cod_banco_favor     := NULL;
        v_agencia_favor       := NULL;
        v_dv_agencia_favor    := NULL;
        v_conta_favor         := NULL;
        v_dv_conta_favor      := NULL;
        v_dv_agen_conta_favor := NULL;
        v_nome_favor          := NULL;
        --  v_seu_numero          := NULL;
        v_data_pagto       := NULL;
        v_tipo_moeda       := NULL;
        v_qtd_moeda        := NULL;
        v_valor_pagto      := NULL;
        v_nosso_numero     := NULL;
        v_data_real_pagto  := NULL;
        v_valor_real_pagto := NULL;
        v_ocorrencias      := NULL;
        -- v_cod_conv            := NULL;
        v_informacao_2 := NULL;

        v_cod_finalid_doc     := NULL;
        v_cod_finalid_ted     := NULL;
        v_cod_finalid_complem := NULL;
        v_cnab                := NULL;
        v_aviso               := NULL;

        --COLETANDO CONTEUDO DA LINHA DO ARQUIVO
        utl_file.get_line(v_file_type, v_line);

        --CONTAR QTD REGISTRO DO ARQUIVO
        v_count_reg_arq := v_count_reg_arq + 1;

        --coletando tipo de registro (0,1,3,5,9)
        v_tipo_reg := substr(v_line, 8, 1);

        -- "0" = HEADER ARQUIVO
        IF v_tipo_reg = 0 THEN

          --SABER QUAL O TIPO DE ARQUIVO (PREVIA, PROCESSAMEN, CONSOLIDADO)
          v_tip_arq       := trim(substr(v_line, 181, 11));
          v_num_seq_envio := substr(v_line, 158, 6);

          v_tip_proc := CASE
                          WHEN trim(upper(v_tip_arq)) = 'PREVIA' THEN
                           '1'
                          WHEN trim(upper(v_tip_arq)) = 'PROCESSAMEN' THEN
                           '2'
                          WHEN trim(upper(v_tip_arq)) = 'CONSOLIDADO' THEN
                           '3'
                          ELSE
                           '3'
                        END;

          v_cod_tipo_arq := CASE v_tip_proc
                              WHEN '1' THEN
                               10 --PREVIA
                              WHEN '2' THEN
                               12 --PROCESSAMEN
                              WHEN '3' THEN
                               11 --CONSOLIDADO
                            END;

        END IF;

        IF v_tipo_reg = 1 THEN
          --COLETAR COD_CONVENIO
          v_cod_conv := substr(v_line, 33, 20);
        END IF;

        --SE FOR CONSOLIDADO, CARREGAR NAS TABELAS tb_dret_febraba_sega e tb_dret_febraba_segb
        BEGIN
          IF upper(TRIM(v_tip_arq)) = 'CONSOLIDADO' THEN

            -- "3" = DETALHE DO LOTE
            IF v_tipo_reg = 3 THEN

              --COLETAR O SEGMENTO DO REGISTRO (A,B,C)
              v_cod_segmento := substr(v_line, 14, 1);

              --SEGMENTO "A"
              IF v_cod_segmento = 'A' THEN

                --COLETAR VALORES DO ARQUIVO
                v_cod_banco           := substr(v_line, 1, 3);
                v_num_lote            := substr(v_line, 4, 4);
                v_tipo_reg            := substr(v_line, 8, 1);
                v_num_registro        := substr(v_line, 9, 5);
                v_cod_segmento        := substr(v_line, 14, 1);
                v_tipo_movimento      := substr(v_line, 15, 1);
                v_cod_movimento       := substr(v_line, 16, 2);
                v_cod_camara          := substr(v_line, 18, 3);
                v_cod_banco_favor     := substr(v_line, 21, 3);
                v_agencia_favor       := substr(v_line, 24, 5);
                v_dv_agencia_favor    := substr(v_line, 29, 1);
                v_conta_favor         := substr(v_line, 30, 12);
                v_dv_conta_favor      := substr(v_line, 42, 1);
                v_dv_agen_conta_favor := substr(v_line, 43, 1);
                v_nome_favor          := substr(v_line, 44, 30);
                v_seu_numero          := substr(v_line, 74, 20);
                v_data_pagto          := substr(v_line, 94, 8);
                v_tipo_moeda          := substr(v_line, 102, 3);
                v_qtd_moeda           := substr(v_line, 105, 15);
                v_valor_pagto         := substr(v_line, 120, 15);
                v_nosso_numero        := substr(v_line, 135, 20);
                v_data_real_pagto     := substr(v_line, 155, 8);
                v_valor_real_pagto    := substr(v_line, 163, 15);
                v_informacao_2        := substr(v_line, 178, 40);
                v_cod_finalid_doc     := substr(v_line, 218, 2);
                v_cod_finalid_ted     := substr(v_line, 220, 5);
                v_cod_finalid_complem := substr(v_line, 225, 2);
                v_cnab                := substr(v_line, 227, 3);
                --v_aviso            := nvl(substr(v_line, 230, 1), 0);
                v_ocorrencias := substr(v_line, 231, 10);

                --VERIFICAR SE O REGISTRO ATUAL JA NAO EXISTE NA TABELA TB_DRET_FEBRA_SEGA
                v_check_tbseg := func_valida_existencia(v_seu_numero,
                                                        'SEGA',
                                                        v_data_pagto,
                                                        v_valor_pagto);

                --REGISTRO JA EXISTE NA TABELA (NAO EXISTE: "0" | JA EXISTE: "1")
                IF v_check_tbseg = 1 THEN
                  RAISE e_pagamento_duplicado_sega;
                END IF;

                INSERT INTO user_ipesp.tb_dret_febra_sega
                  (cod_ins,
                   cod_banco,
                   num_lote,
                   num_seq_envio,
                   flg_status,
                   tip_reg,
                   num_seq_reg,
                   cod_seg_reg,
                   tip_mov,
                   cod_inst_mov,
                   cod_camara_f,
                   cod_banco_f,
                   cod_age_f,
                   dig_age_f,
                   cod_cue_f,
                   dig_cue_f,
                   dig_age_cue_f,
                   nome_f,
                   seu_num,
                   data_pag,
                   tipo_moeda,
                   qua_moeda,
                   val_pag,
                   nos_num,
                   data_real,
                   val_real,
                   info,
                   cod_fin_doc,
                   cod_fin_ted,
                   cod_fin_comp,
                   cnab,
                   aviso,
                   ocurrencias,
                   dat_ing,
                   dat_ult_atu,
                   nom_pro_ult_atu,
                   nom_usu_ult_atu,
                   cod_conv,
                   tipo_proc,
                   arquivo,
                   num_carga)
                VALUES
                  (p_cod_ins, --COD_INS,
                   v_cod_banco, --COD_BANCO,
                   v_num_lote, --NUM_LOTE,
                   v_num_seq_envio, --NUM_SEQ_ENVIO,
                   'V', --FLG_STATUS,
                   v_tipo_reg, --TIP_REG,
                   v_num_registro, --NUM_SEQ_REG,
                   v_cod_segmento, --COD_SEG_REG,
                   v_tipo_movimento, --TIP_MOV,
                   v_cod_movimento, -- NULL, --COD_INST_MOV,
                   v_cod_camara, --COD_CAMARA_F,
                   v_cod_banco_favor, --COD_BANCO_F,
                   v_agencia_favor, --COD_AGE_F,
                   v_dv_agencia_favor, --DIG_AGE_F,
                   v_conta_favor, --COD_CUE_F,
                   v_dv_conta_favor, --DIG_CUE_F,
                   v_dv_agen_conta_favor, --DIG_AGE_CUE_F,
                   v_nome_favor, --NOME_F,
                   v_seu_numero, --SEU_NUM,
                   v_data_pagto, --DATA_PAG,
                   v_tipo_moeda, --TIPO_MOEDA,
                   v_qtd_moeda, --QUA_MOEDA,
                   v_valor_pagto / 100, --VAL_PAG,
                   v_nosso_numero, --NOS_NUM,
                   lpad(v_data_real_pagto,8,'0'), --DATA_REAL,
                   v_valor_real_pagto / 100, --VAL_REAL,
                   v_informacao_2, --INFO,
                   v_cod_finalid_doc, --COD_FIN_DOC,
                   v_cod_finalid_ted, --COD_FIN_TED,
                   v_cod_finalid_complem, --COD_FIN_COMP,
                   v_cnab, --CNAB,
                   v_aviso, --AVISO,
                   trim(v_ocorrencias), -- NULL, --OCURRENCIAS,
                   SYSDATE, --DAT_ING,
                   SYSDATE, --DAT_ULT_ATU,
                   'SP_CARGA_ARQUIVO_FEB', --NOM_PRO_ULT_ATU,
                   'ATL_RET_BANC', --NOM_USU_ULT_ATU,
                   v_cod_conv, --COD_CONV,
                   v_tip_proc, --TIPO_PROC,
                   p_nome_arq, --ARQUIVO
                   p_num_carga);

              END IF;

              --SEGMENTO "B"
              IF v_cod_segmento = 'B' THEN

                --COLETAR VALORES DO ARQUIVO
                v_cod_banco       := substr(v_line, 1, 3);
                v_num_lote        := substr(v_line, 4, 4);
                v_tipo_reg        := substr(v_line, 8, 1);
                v_num_registro    := substr(v_line, 9, 5);
                v_cod_segmento    := substr(v_line, 14, 1);
                v_cnab            := substr(v_line, 15, 3);
                v_tipo_insc_favor := substr(v_line, 18, 1);
                v_num_insc_favor  := substr(v_line, 19, 14);

                --verificar se o registro atual ja nao existe na tabela tb_dret_febra_segB
                v_check_tbseg := func_valida_existencia(v_seu_numero,
                                                        'SEGB' /*,
                                                                                    v_data_pagto,
                                                                                    v_valor_pagto*/);

                --REGISTRO JA EXISTE NA TABELA
                IF v_check_tbseg = 1 THEN
                  RAISE e_pagamento_duplicado_segb;
                END IF;

                INSERT INTO user_ipesp.tb_dret_febra_segb
                  (cod_ins,
                   cod_banco,
                   num_lote,
                   num_seq_envio,
                   flg_status,
                   tip_reg,
                   num_seq_reg,
                   cod_seg_reg,
                   cnab,
                   fav_insc_tipo,
                   fav_insc_num,
                   dat_ing,
                   dat_ult_atu,
                   nom_pro_ult_atu,
                   nom_usu_ult_atu,
                   cod_conv,
                   tipo_proc,
                   arquivo,
                   seu_num,
                   num_carga)
                VALUES
                  (p_cod_ins,
                   v_cod_banco,
                   v_num_lote,
                   v_num_seq_envio,
                   'V',
                   v_tipo_reg, -- TIP_REG,
                   v_num_registro, -- NUM_SEQ_REG,
                   v_cod_segmento, -- COD_SEG_REG,
                   v_cnab, -- CNAB,
                   v_tipo_insc_favor, -- FAV_INSC_TIPO,
                   v_num_insc_favor, -- FAV_INSC_NUM,
                   SYSDATE, -- DAT_ING,
                   SYSDATE, -- DAT_ULT_ATU,
                   'SP_CARGA_ARQUIVO_FEB', -- NOM_PRO_ULT_ATU,
                   'ATL_RET_BANC', -- NOM_USU_ULT_ATU,
                   v_cod_conv, -- COD_CONV,
                   v_tip_proc,
                   p_nome_arq, -- ARQUIVO
                   v_seu_numero,
                   p_num_carga);

              END IF;
            END IF;
          END IF;

        EXCEPTION
          WHEN e_pagamento_duplicado_sega THEN
            BEGIN

              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[WARNING] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero ||
                                         --', NOME: '||v_nome_favor||
                                          ', DATA PAGTO: ' ||
                                          v_data_real_pagto ||
                                          ', VALOR PAGTO: ' ||
                                          v_valor_real_pagto / 100);
            END;

          WHEN e_pagamento_duplicado_segb THEN
            BEGIN

              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[WARNING] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;

          WHEN dup_val_on_index THEN
            BEGIN

              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[ERRO] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [ERRO DE PK] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;

          WHEN OTHERS THEN
            BEGIN

              v_msg_error := substr(SQLERRM, 1, 300);
              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[ERRO GENERICO] [LINHA: ' ||
                                          v_count_reg_arq || '] [' ||
                                          v_msg_error || '] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;

        END;

        --SE FOR PREVIA, CARREGAR NAS TABELAS tb_dret_febraba_sega_previa e tb_dret_febraba_segb_previa
        BEGIN

          IF upper(TRIM(v_tip_arq)) = 'PREVIA' THEN

            -- "3" = DETALHE DO LOTE
            IF v_tipo_reg = 3 THEN

              --COLETAR O SEGMENTO DO REGISTRO (A,B,C)
              v_cod_segmento := substr(v_line, 14, 1);

              --SEGMENTO "A"
              IF v_cod_segmento = 'A' THEN

                --COLETAR VALORES DO ARQUIVO
                v_cod_banco           := substr(v_line, 1, 3);
                v_num_lote            := substr(v_line, 4, 4);
                v_tipo_reg            := substr(v_line, 8, 1);
                v_num_registro        := substr(v_line, 9, 5);
                v_cod_segmento        := substr(v_line, 14, 1);
                v_tipo_movimento      := substr(v_line, 15, 1);
                v_cod_movimento       := substr(v_line, 16, 2);
                v_cod_camara          := substr(v_line, 18, 3);
                v_cod_banco_favor     := substr(v_line, 21, 3);
                v_agencia_favor       := substr(v_line, 24, 5);
                v_dv_agencia_favor    := substr(v_line, 29, 1);
                v_conta_favor         := substr(v_line, 30, 12);
                v_dv_conta_favor      := substr(v_line, 42, 1);
                v_dv_agen_conta_favor := substr(v_line, 43, 1);
                v_nome_favor          := substr(v_line, 44, 30);
                v_seu_numero          := substr(v_line, 74, 20);
                v_data_pagto          := substr(v_line, 94, 8);
                v_tipo_moeda          := substr(v_line, 102, 3);
                v_qtd_moeda           := substr(v_line, 105, 15);
                v_valor_pagto         := substr(v_line, 120, 15);
                v_nosso_numero        := substr(v_line, 135, 20);
                v_data_real_pagto     := substr(v_line, 155, 8);
                v_valor_real_pagto    := substr(v_line, 163, 15);
                v_informacao_2        := substr(v_line, 178, 40);
                v_cod_finalid_doc     := substr(v_line, 218, 2);
                v_cod_finalid_ted     := substr(v_line, 220, 5);
                v_cod_finalid_complem := substr(v_line, 225, 2);
                v_cnab                := substr(v_line, 227, 3);
                --v_aviso        := nvl(substr(v_line, 230, 1), 0);
                v_ocorrencias := substr(v_line, 231, 10);

                --VERIFICAR SE O REGISTRO ATUAL JA NAO EXISTE NA TABELA TB_DRET_FEBRA_SEGA
                v_check_tbseg := func_valida_existencia(v_seu_numero,
                                                        'SEGA_PREVIA',
                                                        v_data_pagto,
                                                        v_valor_pagto);

                --REGISTRO JA EXISTE NA TABELA (NAO EXISTE: "0" | JA EXISTE: "1")
                IF v_check_tbseg = 1 THEN
                  RAISE e_pagamento_duplicado_sega;
                END IF;

                INSERT INTO user_ipesp.tb_dret_febra_sega_previa
                  (cod_ins,
                   cod_banco,
                   num_lote,
                   num_seq_envio,
                   flg_status,
                   tip_reg,
                   num_seq_reg,
                   cod_seg_reg,
                   tip_mov,
                   cod_inst_mov,
                   cod_camara_f,
                   cod_banco_f,
                   cod_age_f,
                   dig_age_f,
                   cod_cue_f,
                   dig_cue_f,
                   dig_age_cue_f,
                   nome_f,
                   seu_num,
                   data_pag,
                   tipo_moeda,
                   qua_moeda,
                   val_pag,
                   nos_num,
                   data_real,
                   val_real,
                   info,
                   cod_fin_doc,
                   cod_fin_ted,
                   cod_fin_comp,
                   cnab,
                   aviso,
                   ocurrencias,
                   dat_ing,
                   dat_ult_atu,
                   nom_pro_ult_atu,
                   nom_usu_ult_atu,
                   cod_conv,
                   tipo_proc,
                   arquivo,
                   num_carga)
                VALUES
                  (p_cod_ins, --COD_INS,
                   v_cod_banco, --COD_BANCO,
                   v_num_lote, --NUM_LOTE,
                   v_num_seq_envio, --NUM_SEQ_ENVIO,
                   'V', --FLG_STATUS,
                   v_tipo_reg, --TIP_REG,
                   v_num_registro, --NUM_SEQ_REG,
                   v_cod_segmento, --COD_SEG_REG,
                   v_tipo_movimento, --TIP_MOV,
                   v_cod_movimento, -- NULL, --COD_INST_MOV,
                   v_cod_camara, --COD_CAMARA_F,
                   v_cod_banco_favor, --COD_BANCO_F,
                   v_agencia_favor, --COD_AGE_F,
                   v_dv_agencia_favor, --DIG_AGE_F,
                   v_conta_favor, --COD_CUE_F,
                   v_dv_conta_favor, --DIG_CUE_F,
                   v_dv_agen_conta_favor, --DIG_AGE_CUE_F,
                   v_nome_favor, --NOME_F,
                   v_seu_numero, --SEU_NUM,
                   v_data_pagto, --DATA_PAG,
                   v_tipo_moeda, --TIPO_MOEDA,
                   v_qtd_moeda, --QUA_MOEDA,
                   v_valor_pagto / 100, --VAL_PAG,
                   v_nosso_numero, --NOS_NUM,
                   lpad(v_data_real_pagto,8,'0'), --DATA_REAL,
                   v_valor_real_pagto / 100, --VAL_REAL,
                   v_informacao_2, --INFO,
                   v_cod_finalid_doc, --COD_FIN_DOC,
                   v_cod_finalid_ted, --COD_FIN_TED,
                   v_cod_finalid_complem, --COD_FIN_COMP,
                   v_cnab, --CNAB,
                   v_aviso, --AVISO,
                   trim(v_ocorrencias), -- NULL, --OCURRENCIAS,
                   SYSDATE, --DAT_ING,
                   SYSDATE, --DAT_ULT_ATU,
                   'SP_CARGA_ARQUIVO_FEB', --NOM_PRO_ULT_ATU,
                   'ATL_RET_BANC', --NOM_USU_ULT_ATU,
                   v_cod_conv, --COD_CONV,
                   v_tip_proc, --TIPO_PROC,
                   p_nome_arq, --ARQUIVO
                   p_num_carga);

              END IF;

              --SEGMENTO "B"
              IF v_cod_segmento = 'B' THEN

                --COLETAR VALORES DO ARQUIVO
                v_cod_banco       := substr(v_line, 1, 3);
                v_num_lote        := substr(v_line, 4, 4);
                v_tipo_reg        := substr(v_line, 8, 1);
                v_num_registro    := substr(v_line, 9, 5);
                v_cod_segmento    := substr(v_line, 14, 1);
                v_cnab            := substr(v_line, 15, 3);
                v_tipo_insc_favor := substr(v_line, 18, 1);
                v_num_insc_favor  := substr(v_line, 19, 14);

                --verificar se o registro atual ja nao existe na tabela tb_dret_febra_sega
                v_check_tbseg := func_valida_existencia(v_seu_numero,
                                                        'SEGB_PREVIA' /*,
                                                                                    v_data_pagto,
                                                                                    v_valor_pagto*/);

                --REGISTRO JA EXISTE NA TABELA
                IF v_check_tbseg = 1 THEN
                  RAISE e_pagamento_duplicado_segb;
                END IF;

                INSERT INTO user_ipesp.tb_dret_febra_segb_previa
                  (cod_ins,
                   cod_banco,
                   num_lote,
                   num_seq_envio,
                   flg_status,
                   tip_reg,
                   num_seq_reg,
                   cod_seg_reg,
                   cnab,
                   fav_insc_tipo,
                   fav_insc_num,
                   dat_ing,
                   dat_ult_atu,
                   nom_pro_ult_atu,
                   nom_usu_ult_atu,
                   cod_conv,
                   tipo_proc,
                   arquivo,
                   seu_num,
                   num_carga)
                VALUES
                  (p_cod_ins,
                   v_cod_banco,
                   v_num_lote,
                   v_num_seq_envio,
                   'V',
                   v_tipo_reg, -- TIP_REG,
                   v_num_registro, -- NUM_SEQ_REG,
                   v_cod_segmento, -- COD_SEG_REG,
                   v_cnab, -- CNAB,
                   v_tipo_insc_favor, -- FAV_INSC_TIPO,
                   v_num_insc_favor, -- FAV_INSC_NUM,
                   SYSDATE, -- DAT_ING,
                   SYSDATE, -- DAT_ULT_ATU,
                   'SP_CARGA_ARQUIVO_FEB', -- NOM_PRO_ULT_ATU,
                   'ATL_RET_BANC', -- NOM_USU_ULT_ATU,
                   v_cod_conv, -- COD_CONV,
                   v_tip_proc,
                   p_nome_arq, -- ARQUIVO
                   v_seu_numero,
                   p_num_carga);

              END IF;
            END IF;
          END IF;

        EXCEPTION
          WHEN e_pagamento_duplicado_sega THEN
            BEGIN

              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[WARNING] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero ||
                                         --', NOME: '||v_nome_favor||
                                          ', DATA PAGTO: ' ||
                                          v_data_real_pagto ||
                                          ', VALOR PAGTO: ' ||
                                          v_valor_real_pagto / 100);
            END;

          WHEN e_pagamento_duplicado_segb THEN
            BEGIN

              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[WARNING] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;

          WHEN dup_val_on_index THEN
            BEGIN

              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[WARNING] [LINHA: ' ||
                                          v_count_reg_arq ||
                                          '] [REGISTRO JA EXISTE] [ERRO DE PK] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;

          WHEN OTHERS THEN
            BEGIN

              v_msg_error := substr(SQLERRM, 1, 300);
              --gerar log com os detalhes de pagto duplicado
              sp_gera_log(p_nome_arq   => p_nome_arq,
                          p_tipo_param => 'E',
                          p_mensagem   => '[ERRO GENERICO] [LINHA: ' ||
                                          v_count_reg_arq || '] [' ||
                                          v_msg_error || '] [SEGMENTO ' ||
                                          v_cod_segmento ||
                                          '] - SEU_NUMERO: ' || v_seu_numero);
            END;
        END;

      END;
    END LOOP;

    utl_file.fclose(v_file_type);

  EXCEPTION

    WHEN no_data_found THEN
      BEGIN
        utl_file.fclose(v_file_type);

        v_qtd_erro      := v_count_erro;
        v_count_erro    := 0;
        v_count_reg_arq := 0;

        -- 1 = Atualizar registros da tabela
        sp_gera_log(p_nome_arq           => p_nome_arq,
                    p_qtd_total_reg_arq  => v_qtd_total_reg_arq,
                    p_qtd_total_lote     => v_qtd_total_lote,
                    p_qtd_total_reg_lote => v_qtd_total_reg_lote,
                    p_data_fim           => SYSDATE,
                    p_qtd_erro           => v_qtd_erro,
                    p_tipo_param         => 'A');

        -- 2 = Atualizar tabela de controle - tb_controle_carga_arq
        sp_atualiza_tb_controle(p_cod_ins       => 1,
                                p_cod_tip_arq   => v_cod_tipo_arq,
                                p_qtd_reg       => v_qtd_total_reg_arq,
                                p_qtd_reg_lidos => v_qtd_total_reg_arq,
                                p_num_carga     => p_num_carga,
                                p_nome_arq      => p_nome_arq,
                                p_qtd_erros     => v_qtd_erro,
                                p_tipo          => 'A');

        --20/12/2016
        sp_gera_log(p_nome_arq   => p_nome_arq,
                    p_tipo_param => 'F',
                    p_data_fim   => SYSDATE);

        COMMIT;
      END;

    WHEN utl_file.invalid_path THEN
      BEGIN

        dbms_output.put_line('ERRO CARGA: Diretório inválido.');
        utl_file.fclose(v_file_type);
        ROLLBACK;

      END;

    WHEN OTHERS THEN
      BEGIN

        utl_file.fclose(v_file_type);

        v_msg_error := substr(SQLERRM, 1, 300);
        dbms_output.put_line('ERRO CARGA: ' || v_msg_error);

        ROLLBACK;

      END;

  END sp_carga_arquivo;

BEGIN

  --01 - VALIDA INTEGRIDADE DO ARQUIVO
  sp_validar_arquivo;

  --02 - CARGA DO ARQUIVO
  sp_carga_arquivo;

EXCEPTION
  WHEN e_aborta_processamento THEN
    BEGIN
      sp_gera_log(p_nome_arq   => p_nome_arq,
                  p_tipo_param => 'F',
                  p_data_fim   => SYSDATE);
    END;

  WHEN OTHERS THEN
    dbms_output.put_line('[ERRO BLOCO CHAMADOR] - NUM_CARGA: ' ||
                         p_num_carga || ' - ' || SQLERRM);

END sp_carga_arq_febraban;

END PAC_INTEGRACAO;
/
