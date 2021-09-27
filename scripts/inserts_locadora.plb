ALTER SESSION SET CURRENT_SCHEMA = LOCADORA
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Inser��o na tabela GRAVADORAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 2, 'SP', 'F', 'BMG' );
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 5, 'SE', 'V', 'Atalaia' );
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 3, 'SP', 'F', 'Som Livre' );
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 1, 'RJ', 'F', 'Sony Music' );
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 4, 'BA', 'V', 'Bahia Ax� Music' );
insert into gravadoras
    ( cod_grav, uf_grav, nac_bras, nom_grav )
values
    ( 6, 'CE', 'V', 'Caatinga Music' );
commit;
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Cria��o da tabela ARTISTAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 9, 'B', 'V', 3, 0, 0, 'Kid Abelha' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 5, 'I', 'F', 2, 0, 0, 'Madona' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 2, 'I', 'V', 1, 0, 0, 'Lulu Santos' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 3, 'B', 'V', 1, 0, 0, 'Paralamas do Sucesso' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 1, 'D', 'V', 1, 0, 0, 'Zez� de Camargo e Luciano' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 4, 'B', 'V', 2, 0, 0, 'Skank' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 6, 'B', 'F', 2, 0, 0, 'The Cure' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 8, 'B', 'V', 3, 0, 0, 'Titans' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 15, 'I', 'V', 4, 0, 0, 'Lelo Almeida' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 10, 'B', 'V', 4, 0, 0, 'Chiclete com Banana' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 7, 'I', 'F', 2, 0, 0, 'Santana' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 12, 'I', 'V', 4, 0, 0, 'Ivete Sangalo' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 11, 'I', 'V', 4, 0, 0, 'Daniela Mercury' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 14, 'B', 'V', 5, 0, 0, 'Sib�ria' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 13, 'I', 'V', 4, 0, 0, 'Carlinhos Brown' );
insert into artistas
    ( cod_art, tpo_art, nac_bras, cod_grav, qtd_tit, med_anual, nom_art )
values
    ( 99, 'I', 'V', 4, 0, 0, 'Caju e Castanha' );
commit;
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Inser��o na tabela TITULOS
PROMPT
/*-------------------------------------------------------------------------------------------*/
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 10, 'C', 'L', 0, to_date( '15/03/2005', 'DD/MM/YYYY' ), 9, 3, 'Pega Vida' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 2, 'D', 'N', 0, to_date( '25/05/2002', 'DD/MM/YYYY' ), 9, 3, 'Ac�stico MTV' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 6, 'C', 'N', 0, to_date( '03/01/2001', 'DD/MM/YYYY' ), 9, 1, 'Surf' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 3, 'C', 'N', 0, to_date( '03/07/2003', 'DD/MM/YYYY' ), 5, 2, 'Die Another Day' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 1, 'C', 'N', 0, to_date( '03/08/2001', 'DD/MM/YYYY' ), 5, 2, 'American Pie' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 4, 'C', 'N', 0, to_date( '03/08/1999', 'DD/MM/YYYY' ), 5, 3, 'This Used To Be My Playground' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 5, 'C', 'N', 0, to_date( '21/03/1996', 'DD/MM/YYYY' ), 5, 4, 'Gambler' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 13, 'D', 'N', 0, to_date( '18/12/2004', 'DD/MM/YYYY' ), 2, 1, 'MTV Ao Vivo' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 30, 'C', 'P', 0, to_date( '21/08/2003', 'DD/MM/YYYY' ), 2, 2, 'Bugalu' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 18, 'C', 'L', 0, to_date( '22/11/2004', 'DD/MM/YYYY' ), 3, 1, 'Uns Dias' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 22, 'D', 'L', 0, to_date( '21/08/2004', 'DD/MM/YYYY' ), 3, 1, 'Arquivo de Imagens' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 19, 'C', 'N', 0, to_date( '01/06/2003', 'DD/MM/YYYY' ), 3, 1, 'Brasil de A a Z' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 17, 'C', 'N', 0, to_date( '30/04/2002', 'DD/MM/YYYY' ), 3, 1, 'Longo Caminho' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 23, 'C', 'P', 0, to_date( '11/06/1996', 'DD/MM/YYYY' ), 3, 1, '9 Luas' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 26, 'C', 'N', 0, to_date( '15/05/2002', 'DD/MM/YYYY' ), 1, 1, 'Zez� de camargo e Luciano - Amigos' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 29, 'C', 'L', 0, to_date( '06/05/2004', 'DD/MM/YYYY' ), 4, 2, 'Radiola' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 31, 'C', 'L', 0, to_date( '06/05/2004', 'DD/MM/YYYY' ), 4, 5, 'Cosmotron' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 28, 'C', 'L', 0, to_date( '29/08/1979', 'DD/MM/YYYY' ), 6, 2, 'Boys Don''t Cry' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 27, 'C', 'N', 0, to_date( '29/08/1986', 'DD/MM/YYYY' ), 8, 2, 'Cabe�a de Dinossauro' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 39, 'C', 'P', 0, to_date( '30/08/1996', 'DD/MM/YYYY' ), 10, 4, 'Menina dos Olhos' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 32, 'C', 'N', 0, to_date( '30/07/1998', 'DD/MM/YYYY' ), 10, 1, 'Bem Me Quer' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 51, 'C', 'N', 0, to_date( '19/09/2003', 'DD/MM/YYYY' ), 7, 4, 'Ceremony' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 49, 'C', 'L', 0, to_date( '19/02/2004', 'DD/MM/YYYY' ), 12, 4, 'MTV Ao Vivo' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 47, 'C', 'L', 0, to_date( '27/04/2001', 'DD/MM/YYYY' ), 12, 4, 'Festa' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 41, 'C', 'L', 0, to_date( '22/02/2004', 'DD/MM/YYYY' ), 11, 4, 'Carnaval Eletr�nico' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 43, 'C', 'N', 0, to_date( '21/01/2002', 'DD/MM/YYYY' ), 13, 4, 'Para Sempre' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 44, 'C', 'L', 0, to_date( '21/01/2005', 'DD/MM/YYYY' ), 14, 5, 'Aracaju' );
insert into titulos
    ( cod_tit, tpo_tit, cla_tit, qtd_cop, dat_lanc, cod_art, cod_grav, dsc_tit )
values
    ( 99, 'C', 'L', 0, to_date( '21/08/2005', 'DD/MM/YYYY' ), 99, 6, 'Repenta da Caatinga' );
commit;
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Inser��o na tabela COPIAS
PROMPT
/*-------------------------------------------------------------------------------------------*/
declare 
  dat   date;
  tot   number(2);
begin

  
  for i in( select cod_tit, dat_lanc 
               from titulos ) loop
    
    tot := to_char( i.dat_lanc, 'MM' );
    if tot > 6 then
      tot := tot - 6;
    end if;
    if tot < 3 then
      tot := 3;
    end if;
    
    for j in 1 .. tot loop
      insert into copias
          ( cod_tit, num_cop, dat_aq, status )
      values
          ( i.cod_tit, j, i.dat_lanc + ( j + tot ) * 10 , 'A' );
    end loop;
  end loop;
  commit;

end;
/
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Inser��o na tabela TIPOS_SOCIOS
PROMPT
/*-------------------------------------------------------------------------------------------*/
insert into tipos_socios
   ( cod_tps, lim_tit, val_base, dsc_tps )
values
   ( 1, 4, 3, 'Comum' );
insert into tipos_socios
   ( cod_tps, lim_tit, val_base, dsc_tps )
values
   ( 2, 7, 2.50, 'Especial' );
insert into tipos_socios
   ( cod_tps, lim_tit, val_base, dsc_tps )
values
   ( 3, 10, 2, 'Vip' );
commit;
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1094, to_date( '02/07/1979', 'DD/MM/YYYY' ), 2, 'A','Benetti Silva Marozzi Cabral' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1113, to_date( '01/11/1976', 'DD/MM/YYYY' ), 2, 'A','Jorge Augusto Coelho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1124, to_date( '14/09/1974', 'DD/MM/YYYY' ), 2, 'A','Marcelo Vieira Vieira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1135, to_date( '22/04/1979', 'DD/MM/YYYY' ), 2, 'A','Wolney Sampaio de Menezes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1280, to_date( '18/02/1983', 'DD/MM/YYYY' ), 1, 'A','Andrey Henrique Leal de Queiroz' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1332, to_date( '18/07/1983', 'DD/MM/YYYY' ), 1, 'A','Felipe Jorge Silva Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1334, to_date( '02/02/1982', 'DD/MM/YYYY' ), 1, 'A','Fabr�cio Feitosa Santos Carvalho ' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1337, to_date( '03/12/1983', 'DD/MM/YYYY' ), 1, 'A','Renata Azevedo Carvalho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1343, to_date( '27/09/1983', 'DD/MM/YYYY' ), 1, 'A','Felipe Menezes Oliveira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1349, to_date( '22/06/1983', 'DD/MM/YYYY' ), 1, 'A','Tadeu Ferreira Cardoso' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1350, to_date( '15/06/1984', 'DD/MM/YYYY' ), 1, 'A','Virg�lio Vasconcelos Bezerra Cardoso' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1351, to_date( '09/11/1984', 'DD/MM/YYYY' ), 1, 'A','Fernando Henrique de Almeida' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1354, to_date( '13/04/1983', 'DD/MM/YYYY' ), 1, 'A','Carlos Frederick dos Santos J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1356, to_date( '10/11/1983', 'DD/MM/YYYY' ), 1, 'A','Gilson Pereira Soares de Jesus' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1363, to_date( '20/10/1983', 'DD/MM/YYYY' ), 1, 'A','Eric Bernardes Fontes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1367, to_date( '04/10/1982', 'DD/MM/YYYY' ), 1, 'A','Lauro Barreto Chagas Barros' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1375, to_date( '17/08/1983', 'DD/MM/YYYY' ), 1, 'A','Luiz Fernando Nascimento' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1377, to_date( '01/03/1984', 'DD/MM/YYYY' ), 1, 'A','Victor Barreto Gomes de Oliveira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1392, to_date( '21/03/1982', 'DD/MM/YYYY' ), 1, 'A','Anderson Julian Martins de Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1393, to_date( '16/01/1983', 'DD/MM/YYYY' ), 1, 'A','Luciano Sampaio Silva Bastos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1401, to_date( '21/08/1984', 'DD/MM/YYYY' ), 1, 'A','Djalma Moreira de Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1404, to_date( '12/06/1983', 'DD/MM/YYYY' ), 1, 'A','Thiago Matos de Faria Junior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1406, to_date( '16/02/1982', 'DD/MM/YYYY' ), 1, 'A','Rodrigo de  Agnol' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1568, to_date( '12/01/1982', 'DD/MM/YYYY' ), 1, 'A','Igor Dall Oliveira Barbosa' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1604, to_date( '24/09/1980', 'DD/MM/YYYY' ), 1, 'A','Saulo de Cantanhede Neri' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1682, to_date( '07/03/1983', 'DD/MM/YYYY' ), 1, 'A','Luiz Eduardo Tarso Medeiros da Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1688, to_date( '10/04/1983', 'DD/MM/YYYY' ), 1, 'A','Diego Araujo Gon�alves Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1691, to_date( '03/01/1983', 'DD/MM/YYYY' ), 1, 'A','Gustavo Menezes Rolemberg Mendon�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1711, to_date( '19/01/1984', 'DD/MM/YYYY' ), 1, 'A','Max Castor Rocha Passos Almeida' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1745, to_date( '12/04/1983', 'DD/MM/YYYY' ), 1, 'A','George da Rodrigues J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1889, to_date( '19/09/1982', 'DD/MM/YYYY' ), 1, 'A','Rinaldo Serra Machado' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 1934, to_date( '14/08/1983', 'DD/MM/YYYY' ), 1, 'A','Rafael Nunes Barreto Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2066, to_date( '07/12/1981', 'DD/MM/YYYY' ), 1, 'A','Ricardo Vasconcelos Celino' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2079, to_date( '09/09/1981', 'DD/MM/YYYY' ), 1, 'A','Gustavo Gentil Tavares' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2100, to_date( '09/02/1981', 'DD/MM/YYYY' ), 1, 'A','Marcelo Costa de Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2143, to_date( '10/02/1982', 'DD/MM/YYYY' ), 1, 'A','Adalberto Pinto Andrade' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2149, to_date( '28/03/1982', 'DD/MM/YYYY' ), 1, 'A','Alan Vasconcelos de Queiroz Neto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2155, to_date( '15/05/1981', 'DD/MM/YYYY' ), 1, 'A','Alberto Torres Siqueira Britto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2158, to_date( '07/06/1977', 'DD/MM/YYYY' ), 1, 'A','Andr� Fellipe Barr�to' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2166, to_date( '09/09/1980', 'DD/MM/YYYY' ), 1, 'A','Ant�nio Jorge Carvalho Fontes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2182, to_date( '19/12/1981', 'DD/MM/YYYY' ), 1, 'A','Augusto de Vilas - B�as Carvalho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2212, to_date( '11/05/1982', 'DD/MM/YYYY' ), 1, 'A','Ig de de Melo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2217, to_date( '18/03/1983', 'DD/MM/YYYY' ), 1, 'A','Ronaldo Andrusyszyn Siqueira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2253, to_date( '20/03/1982', 'DD/MM/YYYY' ), 1, 'A','Tiago Franco Oliveira Ferreira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2261, to_date( '21/06/1982', 'DD/MM/YYYY' ), 1, 'A','Roberto Mendon�a Brito' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2291, to_date( '15/10/1983', 'DD/MM/YYYY' ), 1, 'A','Oton Afr�nio dos Santos Ricarte' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2380, to_date( '01/02/1983', 'DD/MM/YYYY' ), 1, 'A','Jairo Rog�rio Barroso J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2507, to_date( '04/01/1978', 'DD/MM/YYYY' ), 1, 'A','Leonardo Sodr� Oliveira Lima' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2548, to_date( '24/07/1972', 'DD/MM/YYYY' ), 2, 'A','Andr� Gustavo Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2579, to_date( '15/07/1978', 'DD/MM/YYYY' ), 2, 'A','Thadeu Melo Alves Rangel' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2590, to_date( '07/08/1977', 'DD/MM/YYYY' ), 2, 'A','Genicl�cia Alves Cruz' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2598, to_date( '09/05/1975', 'DD/MM/YYYY' ), 2, 'A','D�nio Oliveira de Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2599, to_date( '20/05/1977', 'DD/MM/YYYY' ), 2, 'A','Jos� Augusto Neres' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2617, to_date( '04/10/1979', 'DD/MM/YYYY' ), 1, 'A','Thiago de Coelho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2623, to_date( '08/04/1978', 'DD/MM/YYYY' ), 1, 'A','Gabriela Marcia Alcantara' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2752, to_date( '10/11/1980', 'DD/MM/YYYY' ), 1, 'A','Carlos Eduardo de Jesus' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 2770, to_date( '08/05/1960', 'DD/MM/YYYY' ), 3, 'A','Cleiton Freitas Silva Menezes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3045, to_date( '25/07/1984', 'DD/MM/YYYY' ), 1, 'A','Bruno Souza Guimar�es de Albuquerque' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3136, to_date( '03/08/1983', 'DD/MM/YYYY' ), 1, 'A','Daniel Dias da Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3153, to_date( '04/03/1982', 'DD/MM/YYYY' ), 1, 'A','Ricardo Martins Santa Rosa' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3165, to_date( '28/08/1973', 'DD/MM/YYYY' ), 1, 'A','Carlos Adilson de Faria Freire' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3414, to_date( '16/03/1978', 'DD/MM/YYYY' ), 1, 'A','Alan Pereira Flor�ncio de Melo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3481, to_date( '06/08/1982', 'DD/MM/YYYY' ), 1, 'A','Helder Luiz Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3489, to_date( '21/09/1977', 'DD/MM/YYYY' ), 1, 'A','Henrique Manoel Barreto Conrado' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3501, to_date( '05/10/1974', 'DD/MM/YYYY' ), 1, 'A','Anco Marcio Campos Costa' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3579, to_date( '26/07/1980', 'DD/MM/YYYY' ), 1, 'A','Bruno Alves Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3616, to_date( '30/01/1981', 'DD/MM/YYYY' ), 1, 'A','Rodrigo Antonio Vasconcelos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3634, to_date( '09/01/1983', 'DD/MM/YYYY' ), 1, 'A','Roseane de Costa Lima' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3670, to_date( '03/06/1982', 'DD/MM/YYYY' ), 1, 'A','F�bio Sobreira Barboza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3721, to_date( '22/07/1983', 'DD/MM/YYYY' ), 1, 'A','Jos� Raimundo Moura' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3724, to_date( '10/12/1980', 'DD/MM/YYYY' ), 1, 'A','Allan Santos Coriolano Filho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3765, to_date( '15/04/1981', 'DD/MM/YYYY' ), 1, 'A','Ubirajara da de Oliveira Veiga de Paula' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3949, to_date( '10/10/1979', 'DD/MM/YYYY' ), 1, 'A','Gustavo Mac�do de Souza Filho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3961, to_date( '10/05/1980', 'DD/MM/YYYY' ), 2, 'A','Alison Mota Monteiro Figueiredo J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3977, to_date( '23/08/1976', 'DD/MM/YYYY' ), 2, 'A','F�bio Cristiano Damaceno' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3996, to_date( '20/11/1977', 'DD/MM/YYYY' ), 2, 'A','Rose Elisa Santos Corr�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 3998, to_date( '09/10/1976', 'DD/MM/YYYY' ), 2, 'A','Sidney Lima de Jesus' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4000, to_date( '14/02/1981', 'DD/MM/YYYY' ), 2, 'A','Weslley Arquibaldo da Mota' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4003, to_date( '18/11/1979', 'DD/MM/YYYY' ), 2, 'A','Fernanda Lima de Araujo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4010, to_date( '06/02/1982', 'DD/MM/YYYY' ), 1, 'A','Victor Franco de Oliveira Neto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4013, to_date( '06/04/1977', 'DD/MM/YYYY' ), 2, 'A','Ericka Piedade de Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4073, to_date( '28/04/1971', 'DD/MM/YYYY' ), 3, 'A','David Just de Oliveira Neto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4091, to_date( '10/06/1980', 'DD/MM/YYYY' ), 3, 'A','Joanne Cristina Santos Batista' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4144, to_date( '03/11/1982', 'DD/MM/YYYY' ), 3, 'A','Aline Martins Jesus Vieira Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4170, to_date( '18/02/1957', 'DD/MM/YYYY' ), 3, 'A','Wellington de L�o' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4172, to_date( '28/08/1981', 'DD/MM/YYYY' ), 3, 'A','Aldo Alves Gomes �vila' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4180, to_date( '30/06/1978', 'DD/MM/YYYY' ), 3, 'A','Anderson Lamartine Vasconcelos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4307, to_date( '29/12/1981', 'DD/MM/YYYY' ), 3, 'A','Juliana de Fraga Leal' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4583, to_date( '26/11/1972', 'DD/MM/YYYY' ), 2, 'A','Herculis Ruberty Junior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4625, to_date( '30/05/1978', 'DD/MM/YYYY' ), 3, 'A','Fatima Aparecida Matos Vita' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4830, to_date( '17/02/1979', 'DD/MM/YYYY' ), 1, 'A','Noriel Thiers dos Reis Morais' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 4921, to_date( '21/02/1980', 'DD/MM/YYYY' ), 3, 'A','Katia Araujo de Jesus' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5099, to_date( '08/08/1974', 'DD/MM/YYYY' ), 1, 'A','Gabriela Major Costa Lima J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5160, to_date( '09/06/1951', 'DD/MM/YYYY' ), 3, 'A','Jos� Wylliam Feij� de Melo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5538, to_date( '19/09/1965', 'DD/MM/YYYY' ), 2, 'A','Claudinei Sim�es Mendon�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5539, to_date( '19/08/1968', 'DD/MM/YYYY' ), 2, 'A','Dayse Carla Campos Cardoso' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5547, to_date( '11/02/1977', 'DD/MM/YYYY' ), 2, 'A','Jos� Wilton Santos Passos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5550, to_date( '01/12/1980', 'DD/MM/YYYY' ), 2, 'A','Ludmila Cavalcanti Figueiredo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5558, to_date( '02/03/1977', 'DD/MM/YYYY' ), 2, 'A','Yurie Pacheco Passos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5571, to_date( '02/03/1977', 'DD/MM/YYYY' ), 2, 'A','Rob�rio Moreira Tavares dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5653, to_date( '11/11/1974', 'DD/MM/YYYY' ), 2, 'A','Guilherme Salom�o D�lio Silva Ferreira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 5674, to_date( '18/03/1975', 'DD/MM/YYYY' ), 2, 'A','Murillo Brito Freire Lima' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6465, to_date( '02/12/1981', 'DD/MM/YYYY' ), 1, 'A','Jo�o Melo Miranda de Oliveira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6541, to_date( '29/11/1982', 'DD/MM/YYYY' ), 1, 'A','Rafael Thyago Rocha' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6549, to_date( '30/07/1981', 'DD/MM/YYYY' ), 1, 'A','Edyzan Machado Antonello' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6762, to_date( '26/04/1981', 'DD/MM/YYYY' ), 1, 'A','Jos� Carlos Costa de Araujo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6766, to_date( '21/11/1977', 'DD/MM/YYYY' ), 3, 'A','Jorgeana Nunes Celestino Pascoal' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6774, to_date( '08/10/1979', 'DD/MM/YYYY' ), 3, 'A','Pedro Ernesto da Silva Farias' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6777, to_date( '11/12/1974', 'DD/MM/YYYY' ), 3, 'A','Rosana Amado Aguiar Chagas' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6778, to_date( '22/04/1981', 'DD/MM/YYYY' ), 3, 'A','Rosane de Cardoso' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6781, to_date( '18/08/1970', 'DD/MM/YYYY' ), 3, 'A','Antonio Robson dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6788, to_date( '02/09/1975', 'DD/MM/YYYY' ), 3, 'A','Roberto Carlos Leal Dias' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6886, to_date( '31/12/1973', 'DD/MM/YYYY' ), 2, 'A','F�bio Silva dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6888, to_date( '11/01/1976', 'DD/MM/YYYY' ), 2, 'A','Maria Solange Moura Reis' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6894, to_date( '21/07/1982', 'DD/MM/YYYY' ), 1, 'A','Daniel Guilherme Madureira Junior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6900, to_date( '01/09/1975', 'DD/MM/YYYY' ), 2, 'A','Viviane de Balbino da Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 6963, to_date( '25/02/1980', 'DD/MM/YYYY' ), 1, 'A','Janete Nobre Silva Costa' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7043, to_date( '29/08/1980', 'DD/MM/YYYY' ), 2, 'A','Al�rcio Bressano Garcez da Rocha' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7046, to_date( '27/09/1980', 'DD/MM/YYYY' ), 2, 'A','Ana Tereza D�ria Mendon�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7048, to_date( '28/09/1979', 'DD/MM/YYYY' ), 2, 'A','Andrea Santos Din�zio' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7051, to_date( '23/09/1977', 'DD/MM/YYYY' ), 2, 'A','Clailson Soares Figueir�do' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7070, to_date( '11/07/1979', 'DD/MM/YYYY' ), 2, 'A','Marcelo Tiago Lima Barreto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7072, to_date( '16/07/1979', 'DD/MM/YYYY' ), 2, 'A','M�rcio Matos Alves Teixeira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7074, to_date( '25/10/1979', 'DD/MM/YYYY' ), 2, 'A','Paulo Jos� Rolemberg Farias' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7075, to_date( '16/02/1981', 'DD/MM/YYYY' ), 2, 'A','Pedro Santana de Freitas Filho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7076, to_date( '20/02/1981', 'DD/MM/YYYY' ), 2, 'A','Rafaela Oliveira dos Santos Sales' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7077, to_date( '26/09/1978', 'DD/MM/YYYY' ), 2, 'A','Ricardo Nascimento Motta' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7078, to_date( '22/10/1978', 'DD/MM/YYYY' ), 2, 'A','Roberto Maia Mayumi Katsuura' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7112, to_date( '12/08/1981', 'DD/MM/YYYY' ), 1, 'A','M�rcio Augusto dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7131, to_date( '13/04/1982', 'DD/MM/YYYY' ), 1, 'A','Jos� Eduardo Paula de Lima' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7407, to_date( '05/02/1981', 'DD/MM/YYYY' ), 1, 'A','Anderson Alles Neto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7605, to_date( '28/06/1980', 'DD/MM/YYYY' ), 1, 'A','Newton Dias Xavier G�is' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7729, to_date( '01/05/1967', 'DD/MM/YYYY' ), 1, 'A','Irineu Antonio Nascimento Figueir�do' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7730, to_date( '22/05/1978', 'DD/MM/YYYY' ), 1, 'A','F�bio Cardoso Vilas Boas' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7744, to_date( '28/10/1981', 'DD/MM/YYYY' ), 1, 'A','Marcel Leal Santa Rosa' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7747, to_date( '21/08/1983', 'DD/MM/YYYY' ), 1, 'A','Milena Araujo Mota Bennes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7753, to_date( '28/06/1980', 'DD/MM/YYYY' ), 1, 'A','Alex Sandro de Lucena Ribeiro' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7758, to_date( '21/10/1980', 'DD/MM/YYYY' ), 1, 'A','Murilo Alves Machado ' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7761, to_date( '30/11/1982', 'DD/MM/YYYY' ), 1, 'A','Danielle Gois Bezerra Junior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7763, to_date( '17/06/1965', 'DD/MM/YYYY' ), 1, 'A','Nilza Ikejiri Almeida' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7765, to_date( '15/03/1981', 'DD/MM/YYYY' ), 1, 'A','Anderson Santos Carrara' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7777, to_date( '10/10/1980', 'DD/MM/YYYY' ), 1, 'A','Carlos Alberto Ferreira Soares ' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7809, to_date( '10/08/1976', 'DD/MM/YYYY' ), 2, 'A','Alcenor Costa Almeida Guimar�es' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 7840, to_date( '02/03/1976', 'DD/MM/YYYY' ), 2, 'A','Sidney Reis Santos Mendon�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8261, to_date( '27/07/1981', 'DD/MM/YYYY' ), 1, 'A','Andr� Luiz Fraga Pimentel Filho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8419, to_date( '30/05/1978', 'DD/MM/YYYY' ), 2, 'A','Daniela Santos Macedo Pires' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8421, to_date( '07/11/1978', 'DD/MM/YYYY' ), 2, 'A','D�bora Vieira Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8423, to_date( '12/12/1957', 'DD/MM/YYYY' ), 2, 'A','Edmilson Porto Figueir�do' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8425, to_date( '27/06/1980', 'DD/MM/YYYY' ), 2, 'A','Fabiana Cristina Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8431, to_date( '06/01/1980', 'DD/MM/YYYY' ), 2, 'A','Jacyara Quintela Nascimento Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8434, to_date( '26/09/1975', 'DD/MM/YYYY' ), 2, 'A','Manuel de Vieira Neto' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8435, to_date( '21/05/1978', 'DD/MM/YYYY' ), 2, 'A','M�rcio do Vieira Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8436, to_date( '21/06/1976', 'DD/MM/YYYY' ), 2, 'A','de Oliveira J�nior' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8439, to_date( '30/11/1971', 'DD/MM/YYYY' ), 2, 'A','Roberto Const�ncio Oliveira C�sar' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8440, to_date( '01/01/1977', 'DD/MM/YYYY' ), 2, 'A','Rog�rio Dultra Nogueira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8442, to_date( '06/02/1980', 'DD/MM/YYYY' ), 2, 'A','Vanessa Silveira Barbosa e Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8447, to_date( '30/04/1979', 'DD/MM/YYYY' ), 2, 'A','Wellington Silva Araujo' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8454, to_date( '04/11/1972', 'DD/MM/YYYY' ), 2, 'A','Toniclay Andrade Torres' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8460, to_date( '26/10/1977', 'DD/MM/YYYY' ), 2, 'A','Paulo Cesar Silva' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8470, to_date( '07/08/1980', 'DD/MM/YYYY' ), 2, 'A','Robert Paulo Sobral' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8518, to_date( '08/08/1976', 'DD/MM/YYYY' ), 2, 'A','Regiani Patr�cia dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8525, to_date( '23/01/1975', 'DD/MM/YYYY' ), 2, 'A','Thiago Vieira Almeida' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8531, to_date( '23/07/1976', 'DD/MM/YYYY' ), 2, 'A','Bruno Campos de Melo Naziazeno' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8540, to_date( '17/01/1979', 'DD/MM/YYYY' ), 2, 'A','Edson Bruno Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8808, to_date( '09/07/1982', 'DD/MM/YYYY' ), 1, 'A','Mario Augusto Alves Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 8839, to_date( '22/06/1982', 'DD/MM/YYYY' ), 1, 'A','Fabiano Oliveira Mota Dias' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9034, to_date( '06/03/1979', 'DD/MM/YYYY' ), 1, 'A','Karlos Edwardo Falc�o Filho' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9066, to_date( '29/06/1982', 'DD/MM/YYYY' ), 1, 'A','Pedro Esp�ndola de Jesus' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9147, to_date( '27/05/1982', 'DD/MM/YYYY' ), 1, 'A','Dalmo Galeno dos Reis' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9254, to_date( '04/01/1980', 'DD/MM/YYYY' ), 1, 'A','Igor Jos� Souza C�rtes' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9428, to_date( '28/12/1975', 'DD/MM/YYYY' ), 1, 'A','Sandra Augusta Santos Souza' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9814, to_date( '05/01/1968', 'DD/MM/YYYY' ), 3, 'A','�lvaro Fonseca Valen�a' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9831, to_date( '24/05/1977', 'DD/MM/YYYY' ), 2, 'A','Andrezza Conrado Mattos dos Santos' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9836, to_date( '18/01/1974', 'DD/MM/YYYY' ), 2, 'A','de Oliveira' );
insert into socios( cod_soc, dat_cad, cod_tps, sta_soc, nom_soc ) values ( 9857, to_date( '17/05/1978', 'DD/MM/YYYY' ), 2, 'A','Samanda Ferreira Egnaldo Santos' );
commit;
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Inser��o nas tabelas de locacoes e itens_locacoes
PROMPT
/*-------------------------------------------------------------------------------------------*/
declare
  type t_reg_tit is record( cod_tit    titulos.cod_tit%type,
                            cla_tit    titulos.cla_tit%type,
                            qtd_cop    number(2),
                            cop_atu    number(2) );
                            
  type t_vet_tit is table of t_reg_tit index by binary_integer;
  
  v_titulos    t_vet_tit;
  v_tot_ins    number(2) := 5;
  v_tot_ite    number(2) := 2;
  v_sta_pgto   locacoes.sta_pgto%type;
  v_dat_loc    locacoes.dat_loc%type;
  v_dat_venc   locacoes.dat_venc%type;
  v_dat_pgto   locacoes.dat_pgto%type;
  v_pos        number(3);
  v_posi       number(3);
  v_posf       number(3);
  v_ini        boolean := true;
  v_dat_prev   itens_locacoes.dat_prev%type;
  v_sta_mul    itens_locacoes.sta_mul%type;
  v_dat_dev    itens_locacoes.dat_dev%type;
    
begin

  
  for i in( select cod_tit, cla_tit, count(*) tot
               from titulos join copias using( cod_tit )
               group by cod_tit, cla_tit ) loop
    v_pos := v_titulos.count + 1;           
    v_titulos( v_pos ).cod_tit := i.cod_tit;
    v_titulos( v_pos ).cla_tit := i.cla_tit;
    v_titulos( v_pos ).qtd_cop := i.tot;
    v_titulos( v_pos ).cop_atu := 0;
  end loop;
  v_ini  := true;
  v_posi := 1;
  v_posf := v_titulos.count;

  
  for i in( select cod_soc, sta_soc
               from socios ) loop
    
    if v_tot_ins mod 5 = 0 then
      v_tot_ins := v_tot_ins + trunc( v_tot_ins / 3 ) + ( v_tot_ins mod 3 );
    elsif v_tot_ins mod 3 = 0 then
       v_tot_ins := v_tot_ins + trunc( v_tot_ins / 5 ) + ( v_tot_ins mod 5 );
    else   
      v_tot_ins := v_tot_ins + trunc( v_tot_ins / 5 ) + ( v_tot_ins mod 3 );
    end if;
    if v_tot_ins > 20 then
      v_tot_ins := trunc( i.cod_soc / 1000 );
    end if;
    
    v_dat_loc :=  trunc( sysdate ) - ( v_tot_ins * 15 );
    for j in 1 .. v_tot_ins loop
      
      v_tot_ite := v_tot_ite + 1; 
      if v_tot_ite > 5 then
        v_tot_ite := 2;
      end if;
      v_dat_venc := v_dat_loc + trunc( v_tot_ite/2 ) + 1;
      
      if i.sta_soc<>'A' then
        v_sta_pgto := 'P';
        if v_dat_venc > trunc( sysdate ) then
          v_dat_loc  := trunc( sysdate ) - ( v_dat_venc - trunc( sysdate ) );
          v_dat_venc := v_dat_loc + trunc( v_tot_ite/2 ) + 1;
          v_dat_pgto := v_dat_venc;
        else  
          v_dat_pgto := v_dat_venc + 1;
        end if;
      elsif v_dat_venc <= trunc( sysdate ) then
        if ( i.cod_soc + to_char( v_dat_loc, 'DD' ) ) mod 3 = 0 then
          v_sta_pgto := 'N';
          v_dat_pgto := null;
        elsif ( i.cod_soc + to_char( v_dat_loc, 'DD' ) ) mod 7 = 0 then
          v_dat_pgto := v_dat_venc + ( i.cod_soc mod 7 );
          v_sta_pgto := 'P';
        else  
          v_dat_pgto := v_dat_venc;
          v_sta_pgto := 'P';
        end if;  
      else  
        v_sta_pgto := 'N';
        v_dat_pgto := null;
      end if;             
      
      insert into locacoes
         ( cod_soc, dat_loc, val_loc, dat_venc, sta_pgto, dat_pgto )
      values
         ( i.cod_soc, v_dat_loc, 0, v_dat_venc, v_sta_pgto, v_dat_pgto );   
      
      for k in 1 .. v_tot_ite loop
        
        if v_ini then
          v_pos  := v_posi;
          v_posi := v_posi + 1;
          if v_posi > v_titulos.count then
            v_posi := 1;
          end if;  
        else
          v_pos  := v_posf;
          v_posf := v_posf - 1;
          if v_posf < 1  then
            v_posf := v_titulos.count;
          end if;  
        end if;
        if v_titulos( v_pos ).cop_atu >= v_titulos( v_pos ).qtd_cop then
          v_titulos( v_pos ).cop_atu := 1;
        else
          v_titulos( v_pos ).cop_atu := v_titulos( v_pos ).cop_atu + 1;
        end if;
        
        case v_titulos( v_pos ).cla_tit
          when 'L' then
            v_dat_prev := v_dat_loc + 1;
          when 'P' then
            v_dat_prev := v_dat_loc + 3;
        else
          v_dat_prev := v_dat_loc + 2;
        end case;
        
        v_dat_dev := v_dat_prev + 1;
        if v_dat_dev >= trunc( sysdate ) then
          v_sta_mul := 'N';
          v_dat_dev := null;
        elsif ( i.cod_soc + v_titulos( v_pos ).cod_tit ) mod 3 = 0 then
          if i.sta_soc = 'A' then
            v_sta_mul := 'P';
            v_dat_dev := v_dat_prev + v_titulos( v_pos ).cop_atu;
          elsif v_titulos( v_pos ).cod_tit mod 3 = 0 then
            v_sta_mul := 'Q';
            v_dat_dev := v_dat_prev + v_titulos( v_pos ).cop_atu;
          else
            v_sta_mul := 'N';
            v_dat_dev := v_dat_prev;
          end if;
        elsif ( i.cod_soc + v_titulos( v_pos ).cod_tit ) mod 5 = 0 then
          v_sta_mul := 'Q';
          v_dat_dev := v_dat_prev + v_titulos( v_pos ).cop_atu;
        elsif ( i.cod_soc + v_titulos( v_pos ).cod_tit ) mod 7 = 0 then
          v_sta_mul := 'N';
          v_dat_dev := null;
        else
          v_sta_mul := 'N';
          v_dat_dev := v_dat_prev;
        end if;
        
        insert into itens_locacoes
            ( cod_soc, dat_loc, cod_tit, num_cop, dat_prev, val_loc, sta_mul, dat_dev )      
        values
            ( i.cod_soc, v_dat_loc, v_titulos( v_pos ).cod_tit, v_titulos( v_pos ).cop_atu, 
              v_dat_prev, 1, v_sta_mul, v_dat_dev );    
      end loop;      
      
      v_dat_loc := v_dat_loc + 15;   
    end loop;     
  end loop;
  commit;
end;
/
/*-------------------------------------------------------------------------------------------*/
PROMPT
PROMPT Atualiza��o de campos calculados
PROMPT
/*-------------------------------------------------------------------------------------------*/
declare
  v_anos  number(2);

begin
  
  select max( to_char( sysdate, 'YYYY' ) - to_char( dat_lanc, 'YYYY' ) )  into v_anos
      from titulos;

  for i in( select cod_art, count(*) tot, count(*)/v_anos med
               from titulos
               group by cod_art ) loop
    update artistas
       set qtd_tit = i.tot, med_anual = i.med
       where cod_art = i.cod_art;
  end loop;
  commit;

end;
/
begin
  
  for i in( select cod_tit, count(*) tot
               from copias
               group by cod_tit ) loop
    update titulos
       set qtd_cop = i.tot
       where cod_tit = i.cod_tit;
  end loop;
  commit;

end;
/
begin
  
  for i in( select l.cod_soc, l.dat_loc, t.val_base
               from locacoes l join socios s on l.cod_soc = s.cod_soc
                               join tipos_socios t on s.cod_tps = t.cod_tps
               where l.dat_loc >= trunc( sysdate ) - 60 ) loop
    update itens_locacoes il
       set val_loc = i.val_base
       where il.cod_soc = i.cod_soc and il.dat_loc = i.dat_loc and 
             exists( select t.cod_tit
                        from titulos t
                        where t.cod_tit = il.cod_tit and t.cla_tit = 'N' );
    update itens_locacoes il
       set val_loc = trunc( i.val_base * 0.6, 2 )
       where il.cod_soc = i.cod_soc and il.dat_loc = i.dat_loc and 
             exists( select t.cod_tit
                        from titulos t
                        where t.cod_tit = il.cod_tit and t.cla_tit = 'P' );
    update itens_locacoes il
       set val_loc = trunc( i.val_base * 1.1, 2 )
       where il.cod_soc = i.cod_soc and il.dat_loc = i.dat_loc and 
             exists( select t.cod_tit
                        from titulos t
                        where t.cod_tit = il.cod_tit and t.cla_tit = 'L' );
  end loop;

  update itens_locacoes il
     set val_loc = val_loc * 0.9
     where dat_loc < sysdate - 60;

  commit;

end;
/
begin
  
  for i in( select cod_soc, dat_loc, sum( val_loc ) tot
               from itens_locacoes
               group by cod_soc, dat_loc ) loop
    update locacoes
       set val_loc = i.tot
       where cod_soc = i.cod_soc and dat_loc = i.dat_loc;
  end loop;
  commit;

end;
/