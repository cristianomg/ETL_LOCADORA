-- Gerado por Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   em:        2021-09-27 10:36:43 BRT
--   site:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE dm_artistas (
    id_artista   NUMBER(10) NOT NULL,
    tpo_art       CHAR(1 BYTE) NOT NULL,
    nac_bras      CHAR(1 BYTE) NOT NULL,
    nom_art       VARCHAR2(40 BYTE) NOT NULL
);

ALTER TABLE dm_artistas ADD CONSTRAINT dm_artistas_pk PRIMARY KEY ( id_artistia );

CREATE TABLE dm_gravadoras (
    id_grav    NUMBER(4) NOT NULL,
    nom_grav   VARCHAR2(40 BYTE) NOT NULL,
    uf_grav    CHAR(2 BYTE) NOT NULL
);

ALTER TABLE dm_gravadoras ADD CONSTRAINT dm_gravadoras_pk PRIMARY KEY ( id_grav );

CREATE TABLE dm_socios (
    id_socio     NUMBER(10) NOT NULL,
    nome_socio   VARCHAR2(100) NOT NULL,
    dsc_tps      VARCHAR2(40 BYTE) NOT NULL,
);

ALTER TABLE dm_socios ADD CONSTRAINT dm_socios_pk PRIMARY KEY ( id_socio );

CREATE TABLE dm_tempo (
    id_tempo    NUMBER(10) NOT NULL,
    nu_ano      NUMBER(4) NOT NULL,
    nu_mes      NUMBER(2) NOT NULL,
    nu_dia      NUMBER(2) NOT NULL,
);

ALTER TABLE dm_tempo ADD CONSTRAINT dm_tempo_pk PRIMARY KEY ( id_tempo );

CREATE TABLE dm_titulos (
    id_titulo   NUMBER(10) NOT NULL,
    cla_tit     CHAR(1 BYTE) NOT NULL,
    tpo_tit     CHAR(1 BYTE) NOT NULL,
    dsc_tit     VARCHAR2(40 BYTE) NOT NULL
);

ALTER TABLE dm_titulos ADD CONSTRAINT dm_titulos_pk PRIMARY KEY ( id_titulo );

CREATE TABLE ft_locacoes (
    id_grav                  NUMBER(4) NOT NULL,
    id_artista              NUMBER(10) NOT NULL,
    id_socio                 NUMBER(10) NOT NULL,
    id_tempo                 NUMBER(10) NOT NULL,
    id_titulo                NUMBER(10) NOT NULL,
    valor_arrecadado         NUMBER(10, 2) NOT NULL,
    tempo_atraso             NUMBER(4) NOT NULL,
    valor_arrecadado_multa   NUMBER(10, 2) NOT NULL
);

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_pk PRIMARY KEY ( id_grav,
                                                id_artista,
                                                id_socio,
                                                id_tempo,
                                                id_titulo );

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_dm_artistas_fk FOREIGN KEY ( id_artista )
        REFERENCES dm_artistas ( id_artista );

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_dm_gravadoras_fk FOREIGN KEY ( id_grav )
        REFERENCES dm_gravadoras ( id_grav );

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_dm_socios_fk FOREIGN KEY ( id_socio )
        REFERENCES dm_socios ( id_socio );

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_dm_tempo_fk FOREIGN KEY ( id_tempo )
        REFERENCES dm_tempo ( id_tempo );

ALTER TABLE ft_locacoes
    ADD CONSTRAINT ft_locacoes_dm_titulos_fk FOREIGN KEY ( id_titulo )
        REFERENCES dm_titulos ( id_titulo );



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             0
-- ALTER TABLE                             11
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
