create user locadora
  identified by "locadora"
  default tablespace DADOS_ACAD
  temporary tablespace TEMP_ACAD
  profile DEFAULT 
  quota unlimited on DADOS_ACAD
  quota unlimited on INDICES_ACAD;


grant connect to locadora;
grant resource to locadora;
grant create view to locadora;