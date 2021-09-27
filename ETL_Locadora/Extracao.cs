using Oracle.ManagedDataAccess.Client;
using System;
using System.Data;
using System.Diagnostics;

namespace ETL_Locadora
{
    public class Extracao
    {
        public DataTable Tempo { get; private set; } = new DataTable();
        public DataTable Socios { get; private set; } = new DataTable();
        public DataTable Titulos { get; private set; } = new DataTable();
        public DataTable Artistas { get; private set; } = new DataTable();
        public DataTable Gravadoras { get; private set; } = new DataTable();
        public DataTable Locacoes { get; private set; } = new DataTable();

        public Extracao(OracleConnection connection)
        {
            try
            {
                ExtrairTempo(connection);
                ExtrairTitulos(connection);
                ExtrairArtistas(connection);
                ExtrairGravadora(connection);
                ExtrairLocacoes(connection);
                ExtrairSocios(connection);
            }
            finally
            {
                connection?.Clone();
            }
        }

        private void ExtrairTempo(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração do Tempo");
            var sw = new Stopwatch();
            sw.Start();
            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText = @"SELECT DISTINCT L.DAT_LOC
                                              FROM LOCACOES L";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Tempo.Load(dr);
            connection.Close();
            sw.Stop();

            Console.WriteLine($"Finalizando extração do Tempo" +
                              $" - Total extraido: {Tempo.Rows.Count}" +
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos.");

        }
        private void ExtrairSocios(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração dos Socios");
            var sw = new Stopwatch();
            sw.Start();

            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText = @"SELECT DISTINCT s.COD_SOC, s.NOM_SOC, tp.DSC_TPS 
                                              FROM SOCIOS s
                                              JOIN TIPOS_SOCIOS tp on s.COD_TPS = tp.COD_TPS";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Socios.Load(dr);
            connection.Close();
            sw.Stop();

            Console.WriteLine($"Finalizando extração dos Socios" +
                              $" - Total extraido: {Socios.Rows.Count}" +
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void ExtrairTitulos(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração dos Titulos");
            var sw = new Stopwatch();
            sw.Start();

            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText = @"SELECT DISTINCT COD_TIT, CLA_TIT, TPO_TIT, DSC_TIT 
                                              FROM TITULOS";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Titulos.Load(dr);
            connection.Close();
            sw.Stop();

            Console.WriteLine($"Finalizando extração dos Titulos" +
                              $" - Total extraido: {Titulos.Rows.Count}" +
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void ExtrairArtistas(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração dos Artitas");
            var sw = new Stopwatch();
            sw.Start();

            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText = @"SELECT DISTINCT COD_ART, TPO_ART, NAC_BRAS, NOM_ART 
                                              FROM ARTISTAS";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Artistas.Load(dr);
            connection.Close();
            sw.Stop();

            Console.WriteLine($"Finalizando extração dos Artistas" +
                              $" - Total extraido: {Artistas.Rows.Count}" +
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void ExtrairGravadora(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração das Gravadora");
            var sw = new Stopwatch();
            sw.Start();

            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText = @"SELECT DISTINCT COD_GRAV, NOM_GRAV, UF_GRAV
                                              FROM GRAVADORAS";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Gravadoras.Load(dr);
            connection.Close();
            sw.Stop();

            Console.WriteLine($"Finalizando extração das Gravadora" + 
                              $" - Total extraido: {Gravadoras.Rows.Count}" +
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void ExtrairLocacoes(OracleConnection connection)
        {
            Console.WriteLine("Iniciando extração das Locações");
            var sw = new Stopwatch();
            sw.Start();

            connection.Open();

            OracleCommand commandSQL = connection.CreateCommand();

            commandSQL.CommandText =
                @"SELECT l.COD_SOC, A2.COD_GRAV, t.COD_TIT, t.COD_ART, l.DAT_LOC, l.VAL_LOC, l.DAT_PGTO, l.DAT_VENC, l.STA_PGTO 
                         FROM LOCACOES l
                         JOIN ITENS_LOCACOES IL on l.COD_SOC = IL.COD_SOC and l.DAT_LOC = IL.DAT_LOC
                         JOIN COPIAS C2 on IL.COD_TIT = C2.COD_TIT and IL.NUM_COP = C2.NUM_COP
                         JOIN TITULOS T on C2.COD_TIT = T.COD_TIT
                         JOIN ARTISTAS A2 on T.COD_ART = A2.COD_ART";

            commandSQL.CommandType = CommandType.Text;

            OracleDataReader dr = commandSQL.ExecuteReader();

            Locacoes.Load(dr);
            connection.Close();
            sw.Stop();
            
            Console.WriteLine($"Finalizando extração das Locações" + 
                              $" - Total extraido: {Locacoes.Rows.Count}" + 
                              $" - Tempo de extração: {sw.Elapsed.TotalSeconds} segundos."); 
        }
    }
}
