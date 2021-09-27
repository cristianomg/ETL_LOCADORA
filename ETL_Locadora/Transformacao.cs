using ETL_Locadora.Models.Dimensional;
using ETL_Locadora.Models.Operational;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;

namespace ETL_Locadora
{
    public class Transformacao
    {
        public List<DmTempo> DmTempo { get; private set; } = new List<DmTempo>();
        public List<DmSocio> DmSocios { get; private set; } = new List<DmSocio>();
        public List<DmTitulo> DmTitulos { get; private set; } = new List<DmTitulo>();
        public List<DmArtista> DmArtistas { get; private set; } = new List<DmArtista>();
        public List<DmGravadora> DmGravadoras { get; private set; } = new List<DmGravadora>();
        public List<FtLocacao> FtLocacoes { get; private set; } = new List<FtLocacao>();

        public Transformacao(Extracao extracao)
        {
            TransformarTempo(extracao.Tempo);
            TransformarSocios(extracao.Socios);
            TransformarTitulos(extracao.Titulos);
            TransformarArtistas(extracao.Artistas);
            TransformarGravadoras(extracao.Gravadoras);
            TransformarFtLocacoes(extracao.Locacoes);
        }

        private void TransformarTempo(DataTable data)
        {
            Console.WriteLine("Iniciando transformação do tempo");
            var sw = new Stopwatch();
            sw.Start();
            foreach (DataRow item in data.Rows)
            {
                DmTempo.Add(new DmTempo(Convert.ToDateTime(item.ItemArray[0])));
            }
            sw.Stop();

            Console.WriteLine($"Finalizando transformação do tempo" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");

        }
        private void TransformarSocios(DataTable data)
        {
            Console.WriteLine("Iniciando transformação dos Socios");
            var sw = new Stopwatch();
            sw.Start();
            foreach (DataRow item in data.Rows)
            {
                var obj = item.ItemArray;
                DmSocios.Add(new DmSocio(Convert.ToInt32(obj[0]), (string)obj[1],(string)obj[2]));
            }
            sw.Stop();

            Console.WriteLine($"Finalizando transformação dos Socios" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void TransformarTitulos(DataTable data)
        {
            Console.WriteLine("Iniciando transformação dos Titulos");
            var sw = new Stopwatch();
            sw.Start();
            foreach (DataRow item in data.Rows)
            {
                var obj = item.ItemArray;
                DmTitulos.Add(new DmTitulo(Convert.ToInt32(obj[0]), (string)obj[1], (string)obj[2], (string)obj[3]));
            }
            sw.Stop();

            Console.WriteLine($"Finalizando transformação dos Titulos" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void TransformarArtistas(DataTable data)
        {
            Console.WriteLine("Iniciando transformação dos Artistas");
            var sw = new Stopwatch();
            sw.Start();
            foreach (DataRow item in data.Rows)
            {
                var obj = item.ItemArray;
                DmArtistas.Add(new DmArtista(Convert.ToInt32(obj[0]), (string)obj[1], (string)obj[2], (string)obj[3]));
            }
            sw.Stop();

            Console.WriteLine($"Finalizando transformação dos Artistas" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");
        }
        private void TransformarGravadoras(DataTable data)
        {
            Console.WriteLine("Iniciando transformação das Gravadoras");
            var sw = new Stopwatch();
            sw.Start();
            foreach (DataRow item in data.Rows)
            {
                var obj = item.ItemArray;
                DmGravadoras.Add(new DmGravadora(Convert.ToInt32(obj[0]), (string)obj[1], (string)obj[2]));
            }
            sw.Stop();

            Console.WriteLine($"Finalizando transformação das Gravadoras" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");
        }

        private void TransformarFtLocacoes(DataTable data)
        {
            Console.WriteLine("Iniciando transformação das Locações");
            var sw = new Stopwatch();
            sw.Start();
            var locacoes = new List<Locacao>();

            foreach (DataRow item in data.Rows)
            {
                var obj = item.ItemArray;
                DateTime? dtPamento = obj[6] is DBNull ? null : Convert.ToDateTime(obj[6]);
                locacoes.Add(new Locacao
                {
                    IdSocio = Convert.ToInt32(obj[0]),
                    IdGravadora = Convert.ToInt32(obj[1]),
                    IdTitulo = Convert.ToInt32(obj[2]),
                    IdArtista = Convert.ToInt32(obj[3]),
                    DataLocacao = Convert.ToDateTime(obj[4]),
                    ValorLocacao = Convert.ToDecimal(obj[5]),
                    DataPagamento = dtPamento,
                    DataVencimento = Convert.ToDateTime(obj[7]),
                    StPagamento = obj[8] is "P" ? true : false
                });
            }

            FtLocacoes = locacoes.GroupBy(x=> new { x.IdArtista,
                                                    x.IdGravadora,
                                                    x.IdSocio,
                                                    x.IdTitulo,
                                                    x.DataLocacao }
                                        )
                                 .Select(x=> new FtLocacao(x.Key.IdGravadora,
                                                           x.Key.IdArtista,
                                                           x.Key.IdSocio,
                                                           Convert.ToInt64(x.Key.DataLocacao.ToString("yyyyMMdd")),
                                                           x.Key.IdTitulo,
                                                           x.ToList()
                                        ))
                                 .ToList();

            sw.Stop();

            Console.WriteLine($"Finalizando transformação das Locações" +
                              $" - Tempo de transformação: {sw.Elapsed.TotalSeconds} segundos.");
        }

    }
}
