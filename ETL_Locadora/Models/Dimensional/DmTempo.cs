using System;

namespace ETL_Locadora.Models.Dimensional
{
    public class DmTempo
    {
        public long Id { get; private set; }
        public int Dia { get; private set; }
        public int Mes { get; private set; }
        public int Ano { get; private set; }

        public DmTempo(DateTime value)
        {
            this.Id = Convert.ToInt64(value.ToString("yyyyMMdd"));
            this.Dia = value.Day;
            this.Mes = value.Month;
            this.Ano = value.Year;
        }

    }
}
