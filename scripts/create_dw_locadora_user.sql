create user dw_locadora
  identified by "dw_locadora"
  default tablespace DADOS_ACAD
  temporary tablespace TEMP_ACAD
  profile DEFAULT 
  quota unlimited on DADOS_ACAD
  quota unlimited on INDICES_ACAD;


grant connect to dw_locadora;
grant resource to dw_locadora;
grant create view to dw_locadora;