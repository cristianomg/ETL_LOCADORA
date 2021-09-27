using ETL_Locadora.Models.Dimensional;
using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;

namespace ETL_Locadora
{
    public class Carga
    {
        public Carga(Transformacao transformacao, OracleConnection connection)
        {
            try
            {
                CarregarDmArtistas(transformacao.DmArtistas, connection);
                CarregarDmGravadora(transformacao.DmGravadoras, connection);
                CarregarDmSocios(transformacao.DmSocios, connection);
                CarregarDmTempo(transformacao.DmTempo, connection);
                CarregarDmTitulo(transformacao.DmTitulos, connection);
                CarregarFtLocacao(transformacao.FtLocacoes, connection);
            }
            finally
            {
                connection?.Clone();
            }
        }
        private void CarregarDmArtistas(List<DmArtista> dm, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento dos artistas");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();
            foreach (var item in dm)
            {
                OracleCommand commandSQL = connection.CreateCommand();
                try
                {

                    commandSQL.CommandText = $@"SELECT * FROM DW_LOCADORA.DM_ARTISTAS WHERE ID_ARTISTA = {item.Id}";

                    commandSQL.CommandType = CommandType.Text;

                    OracleDataReader dr = commandSQL.ExecuteReader();

                    var data = new DataTable();
                    data.Load(dr);

                    var hasValue = data.Rows.Count > 0;

                    if (hasValue)
                    {
                        commandSQL.CommandText = $@"UPDATE DW_LOCADORA.DM_ARTISTAS 
                                                SET TPO_ART = '{item.Tipo}',
                                                    NAC_BRAS = '{item.NasBras}',
                                                    NOM_ART = '{item.Nome}'
                                                WHERE ID_ARTISTA = {item.Id}";
                    }
                    else
                    {

                        commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.DM_ARTISTAS
                                                    (ID_ARTISTA, TPO_ART, NAC_BRAS, NOM_ART)
                                                    VALUES
                                                    ({item.Id}, '{item.Tipo}', '{item.NasBras}', '{item.Nome}')";
                    }
                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                finally
                {
                    commandSQL.Clone();
                }
               
            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento dos artistas" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void CarregarDmGravadora(List<DmGravadora> dm, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento das gravadoras");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();
            foreach (var item in dm)
            {
                OracleCommand commandSQL = connection.CreateCommand();
                try
                {

                    commandSQL.CommandText = $@"SELECT * FROM DW_LOCADORA.DM_GRAVADORAS WHERE ID_GRAV = {item.Id}";

                    commandSQL.CommandType = CommandType.Text;

                    OracleDataReader dr = commandSQL.ExecuteReader();

                    var data = new DataTable();
                    data.Load(dr);

                    var hasValue = data.Rows.Count > 0;

                    if (hasValue)
                    {
                        commandSQL.CommandText = $@"UPDATE DW_LOCADORA.DM_GRAVADORAS 
                                                    SET NOM_GRAV = '{item.Nome}',
                                                        UF_GRAV = '{item.Uf}'
                                                    WHERE ID_GRAV = {item.Id}";
                    }
                    else
                    {

                        commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.DM_GRAVADORAS
                                                    (ID_GRAV, NOM_GRAV, UF_GRAV)
                                                    VALUES
                                                    ({item.Id}, '{item.Nome}', '{item.Uf}')";
                    }
                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                finally
                {
                    commandSQL.Clone();
                }

            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento das gravadoras" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void CarregarDmSocios(List<DmSocio> dm, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento dos socios");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();
            foreach (var item in dm)
            {
                OracleCommand commandSQL = connection.CreateCommand();
                try
                {

                    commandSQL.CommandText = $@"SELECT * FROM DW_LOCADORA.DM_SOCIOS WHERE ID_SOCIO = {item.Id}";

                    commandSQL.CommandType = CommandType.Text;

                    OracleDataReader dr = commandSQL.ExecuteReader();

                    var data = new DataTable();
                    data.Load(dr);

                    var hasValue = data.Rows.Count > 0;

                    if (hasValue)
                    {
                        commandSQL.CommandText = $@"UPDATE DW_LOCADORA.DM_SOCIOS 
                                                    SET NOME_SOCIO = '{item.Nome}',
                                                        DSC_TPS = '{item.Tipo}'
                                                    WHERE ID_SOCIO = {item.Id}";
                    }
                    else
                    {

                        commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.DM_SOCIOS
                                                    (ID_SOCIO, NOME_SOCIO, DSC_TPS)
                                                    VALUES
                                                    ({item.Id}, '{item.Nome}', '{item.Tipo}')";
                    }
                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                finally
                {
                    commandSQL.Clone();
                }

            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento dos socios" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void CarregarDmTempo(List<DmTempo> dm, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento dos tempos");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();
            foreach (var item in dm)
            {
                OracleCommand commandSQL = connection.CreateCommand();
                try
                {

                    commandSQL.CommandText = $@"SELECT * FROM DW_LOCADORA.DM_TEMPO WHERE ID_TEMPO = {item.Id}";

                    commandSQL.CommandType = CommandType.Text;

                    OracleDataReader dr = commandSQL.ExecuteReader();

                    var data = new DataTable();
                    data.Load(dr);

                    var hasValue = data.Rows.Count > 0;

                    if (hasValue)
                    {
                        commandSQL.CommandText = $@"UPDATE DW_LOCADORA.DM_TEMPO 
                                                    SET NU_ANO = '{item.Ano}',
                                                        NU_MES = '{item.Mes}',
                                                        NU_DIA = '{item.Dia}'
                                                    WHERE ID_TEMPO = {item.Id}";
                    }
                    else
                    {

                        commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.DM_TEMPO
                                                    (ID_TEMPO, NU_ANO, NU_MES, NU_DIA)
                                                    VALUES
                                                    ({item.Id}, '{item.Ano}', '{item.Mes}', '{item.Dia}')";
                    }
                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                finally
                {
                    commandSQL.Clone();
                }

            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento dos tempos" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void CarregarDmTitulo(List<DmTitulo> dm, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento dos titulos");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();
            foreach (var item in dm)
            {
                OracleCommand commandSQL = connection.CreateCommand();
                try
                {

                    commandSQL.CommandText = $@"SELECT * FROM DW_LOCADORA.DM_TITULOS WHERE ID_TITULO = {item.Id}";

                    commandSQL.CommandType = CommandType.Text;

                    OracleDataReader dr = commandSQL.ExecuteReader();

                    var data = new DataTable();
                    data.Load(dr);

                    var hasValue = data.Rows.Count > 0;

                    if (hasValue)
                    {
                        commandSQL.CommandText = $@"UPDATE DW_LOCADORA.DM_TITULOS 
                                                    SET CLA_TIT = '{item.ClaTitulo}',
                                                        TPO_TIT = '{item.Tipo}',
                                                        DSC_TIT = '{item.Descricao}'
                                                    WHERE ID_TITULO = {item.Id}";
                    }
                    else
                    {

                        commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.DM_TITULOS
                                                    (ID_TITULO, CLA_TIT, TPO_TIT, DSC_TIT)
                                                    VALUES
                                                    ({item.Id}, '{item.ClaTitulo}', '{item.Tipo}', '{item.Descricao}')";
                    }
                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                finally
                {
                    commandSQL.Clone();
                }

            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento dos titulos" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void CarregarFtLocacao(List<FtLocacao> ft, OracleConnection connection)
        {
            Console.WriteLine("Iniciando carregamento das locações");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();
            commandSQL.CommandText = "DELETE FROM DW_LOCADORA.FT_LOCACOES";
            commandSQL.CommandType = CommandType.Text;
            commandSQL.ExecuteReader();
            foreach (var item in ft)
            {
                try
                {
                    commandSQL.CommandType = CommandType.Text;
                    commandSQL.CommandText = $@"INSERT INTO DW_LOCADORA.FT_LOCACOES
                                                    (ID_GRAV, ID_ARTISTA, ID_SOCIO, ID_TEMPO, ID_TITULO, VALOR_ARRECADADO,
                                                     TEMPO_ATRASO, VALOR_ARRECADADO_MULTA )
                                                    VALUES
                                                    ({item.IdGravadora}, {item.IdArtista},{item.IdSocio},
                                                     {item.IdTempo}, {item.IdTitulo}, {item.ValorArrecadado.ToString().Replace(',', '.')},
                                                     {item.TempoAtrasado.ToString().Replace(',', '.')},
                                                     {item.ValorArrecadadoMulta.ToString().Replace(',', '.')})";


                    commandSQL.CommandType = CommandType.Text;

                    commandSQL.ExecuteReader();
                }
                catch(Exception ex)
                {
                    Console.WriteLine(ex);
                }
                finally
                {
                    commandSQL.Clone();
                }

            }
            connection.Close();
            sw.Stop();
            Console.WriteLine($"Finalizando carregamento das locações" +
                              $" - Tempo de carregamento: {sw.Elapsed.TotalSeconds} segundos.");
        }
    }
}
