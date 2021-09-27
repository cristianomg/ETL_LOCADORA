using ETL_Locadora.Models.Operational;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ETL_Locadora.Models.Dimensional
{
    public class FtLocacao
    {
        public int IdGravadora { get; private set; }
        public int IdArtista { get; private set; }
        public int IdSocio { get; private set; }
        public long IdTempo { get; private set; }
        public int IdTitulo { get; private set; }
        public decimal ValorArrecadado { get; private set; }
        public long TempoAtrasado { get; private set; } // tempo Atrasado [Dias]
        public decimal ValorArrecadadoMulta { get; private set; }
        public FtLocacao(int idGravadora, int idArtista, int idSocio, long idTempo, int idTitulo, List<Locacao> locacoes)
        {
            this.IdGravadora = idGravadora;
            this.IdArtista = idArtista;
            this.IdSocio = idSocio;
            this.IdTempo = idTempo;
            this.IdTitulo = idTitulo;

            ValorArrecadado = CalcularValorArrecadado(locacoes);
            TempoAtrasado = CalcularTempoAtrasado(locacoes);
            ValorArrecadadoMulta = CalcularValorArrecadadoMulta(locacoes);
        }

        private decimal CalcularValorArrecadado(List<Locacao> locacoes)
        {
            return locacoes.Sum(x => x.ValorLocacao);
        }
        private long CalcularTempoAtrasado(List<Locacao> locacoes)
        {
            return Convert.ToInt64(locacoes.Sum(x => Calcular(x)));

            double Calcular(Locacao locacao)
            {
                if (locacao.StPagamento)
                    return 0.0;
                else
                    return Math.Abs(DateTime.Now.Subtract(locacao.DataVencimento).TotalDays);
            }
        }
        private decimal CalcularValorArrecadadoMulta(List<Locacao> locacoes)
        {
            return locacoes.Sum(x => Calcular(x));
            
            decimal Calcular(Locacao locacao)
            {
                if (locacao.StPagamento)
                    return 0.0M;

                var tempoAtrasado = Math.Abs(DateTime.Now.Subtract(locacao.DataVencimento).TotalDays);

                decimal valorMulta = locacao.ValorLocacao;

                if (tempoAtrasado > 1)
                {
                    tempoAtrasado -= 1;

                    valorMulta += Convert.ToDecimal(tempoAtrasado * Convert.ToDouble(locacao.ValorLocacao * 0.40M));
                }
                return valorMulta;
            }
        }

    }
}
