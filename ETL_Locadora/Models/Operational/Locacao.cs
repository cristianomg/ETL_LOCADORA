using System;

namespace ETL_Locadora.Models.Operational
{
    public class Locacao
    {
        public int IdSocio { get; set; }
        public int IdGravadora { get; set; }
        public int IdTitulo { get; set; }
        public int IdArtista { get; set; }
        public DateTime DataLocacao { get; set; }
        public decimal ValorLocacao { get; set; }
        public DateTime? DataPagamento { get; set; }
        public DateTime DataVencimento { get; set; }
        public bool StPagamento { get; set; }
    }
}
