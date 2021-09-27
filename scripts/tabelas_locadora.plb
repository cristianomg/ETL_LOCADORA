ALTER SESSION SET CURRENT_SCHEMA = LOCADORA

/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Remove todas as tabelas criadas
PROMPT
/*-------------------------------------------------------------------------------------------*/
drop table itens_locacoes cascade constraints;
drop table locacoes cascade constraints;
drop table titulos cascade constraints;
drop table artistas cascade constraints;
drop table gravadoras cascade constraints;
drop table socios cascade constraints;
drop table tipos_socios cascade constraints;
drop table copias cascade constraints;
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de GRAVADORAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table gravadoras(
   cod_grav   number(4)     not null check( cod_grav > 0 ),
   uf_grav    char(2)       not null check( uf_grav in ( 'PR','SC','RS','SP','RJ','MG','ES',
                                                         'MT','MS','GO','DF','BA','SE','AL',
                                                         'PE','RN','PB','CE','MA','PI','PA',
                                                         'TO','AM','AC','RR','RO' ) ),
   nac_bras   char(1)       not null check( nac_bras in( 'V', 'F' ) ),
   nom_grav   varchar2(40)  not null,
   constraint grv_pk primary key( cod_grav ) );
create index grv_nom_grav_I on gravadoras( nom_grav );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de ARTISTAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table artistas(
   cod_art    number(4)     not null check( cod_art > 0 ),
   tpo_art    char(1)       not null check( tpo_art in( 'B', 'D', 'I' ) ),
   nac_bras   char(1)       not null check( nac_bras in( 'V', 'F' ) ),
   cod_grav   number(4)     not null check( cod_grav > 0 ),
   qtd_tit    number(4)     not null check( qtd_tit >= 0 ),
   med_anual  number(4,2)   not null check( med_anual >= 0 ),      
   nom_art    varchar2(40)  not null,
   constraint art_pk primary key( cod_art ),
   constraint art_fk_grv foreign key( cod_grav ) references gravadoras( cod_grav ) );
create index art_fk_grv_I on artistas( cod_grav );
create index art_nom_art_I on artistas( nom_art );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de TITULOS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table titulos(
   cod_tit   number(6)     not null check( cod_tit > 0 ),
   tpo_tit   char(1)       not null check( tpo_tit in( 'C', 'D' ) ),
   cla_tit   char(1)       not null check( cla_tit in( 'L', 'N', 'P' ) ),
   qtd_cop   number(3)     not null check( qtd_cop >= 0 ),
   dat_lanc  date          not null,
   cod_art    number(4)    not null check( cod_art > 0 ),
   cod_grav  number(4)     not null check( cod_grav > 0 ),
   dsc_tit   varchar2(40)  not null,
   constraint tit_pk primary key( cod_tit ),
   constraint tit_fk_grv foreign key( cod_grav ) references gravadoras( cod_grav ),
   constraint tit_fk_art foreign key( cod_art ) references artistas( cod_art ) );
create index tit_fk_grv_I on titulos( cod_grav );
create index tit_fk_art_I on titulos( cod_art );
create index tit_dsc_tit_I on titulos( dsc_tit );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de COPIAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table copias(
   cod_tit   number(6)     not null check( cod_tit > 0 ),
   num_cop   number(2)     not null check( num_cop > 0 ),
   dat_aq    date          not null,
   status    char(1)       not null check( status in( 'A', 'I' ) ),
   constraint cop_pk primary key( cod_tit, num_cop ),
   constraint cop_fk_tit foreign key( cod_tit ) references titulos( cod_tit ) );
create index cop_fk_tit_I on copias( cod_tit );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de TIPOS_SOCIOS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table tipos_socios(
   cod_tps       number(4)     not null check( cod_tps > 0 ),
   lim_tit       number(2)     not null check( lim_tit > 0 ),
   val_base      number(6,2)   not null check( val_base > 0 ),
   dsc_tps       varchar2(40)  not null, 
   constraint tps_pk primary key( cod_tps ) );
create index tps_dsc_tps_I on tipos_socios( dsc_tps );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de SOCIOS
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table socios(
   cod_soc       number(4)     not null check( cod_soc > 0 ),
   dat_cad       date          not null,
   cod_tps       number(4)     not null check( cod_tps > 0 ),
   sta_soc       char(1)       not null check( sta_soc in( 'A', 'C', 'S' ) ),
   nom_soc       varchar2(40)  not null, 
   constraint soc_pk primary key( cod_soc ),
   constraint soc_fk_tps foreign key( cod_tps ) references tipos_socios( cod_tps ) );
create index soc_fk_tps_I on socios( cod_tps );
create index soc_nom_soc_I on socios( nom_soc );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de LOCACOES
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table locacoes(
   cod_soc       number(4)     not null check( cod_soc > 0 ),
   dat_loc       date          not null,
   val_loc       number(5,2)   not null check( val_loc >= 0 ),
   dat_venc      date          not null,
   sta_pgto      char(1)       not null check( sta_pgto in( 'N', 'P' ) ),
   dat_pgto      date, 
   constraint loc_pk primary key( cod_soc, dat_loc ),
   constraint loc_ck_datas check( dat_venc > dat_loc and nvl( dat_pgto, dat_loc ) >= dat_loc ),
   constraint loc_ck_pgto check( ( dat_pgto is null and sta_pgto='N' ) or ( dat_pgto is not null and sta_pgto='P' ) ),
   constraint loc_fk_soc foreign key( cod_soc ) references socios( cod_soc ) );
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela de ITENS_LOCACOES
PROMPT
/*-------------------------------------------------------------------------------------------*/
create table itens_locacoes(
   cod_soc       number(4)     not null check( cod_soc > 0 ),
   dat_loc       date          not null,
   cod_tit       number(6)     not null check( cod_tit > 0 ),
   num_cop       number(2)     not null check( num_cop > 0 ),
   dat_prev      date          not null,
   val_loc       number(6,2)   not null check( val_loc > 0 ),
   sta_mul       char(1)       not null check( sta_mul in( 'N', 'P', 'Q' ) ), 
   dat_dev       date          null,
   constraint itl_pk primary key( cod_soc, dat_loc, cod_tit ),
   constraint itl_fk_loc foreign key( cod_soc, dat_loc ) references locacoes( cod_soc, dat_loc ),
   constraint itl_fk_cop foreign key( cod_tit, num_cop ) references copias( cod_tit, num_cop ) );
create index itl_fk_cop_I on itens_locacoes( cod_tit, num_cop );