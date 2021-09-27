namespace ETL_Locadora.Models.Dimensional
{
    public class DmTitulo
    {
        public int Id { get; private set; }
        public string ClaTitulo { get; private set; }
        public string Tipo { get; private set; }
        public string Descricao { get; private set; }

        public DmTitulo(int id, string claTituto, string tipo, string descricao)
        {
            this.Id = id;
            this.ClaTitulo = claTituto;
            this.Tipo = tipo;
            this.Descricao = descricao;
        }
    }
}
