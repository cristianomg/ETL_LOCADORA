namespace ETL_Locadora.Models.Dimensional
{
    public class DmSocio
    {
        public int Id { get; private set; }
        public string Nome { get; private set; }
        public string Tipo { get; private set; }

        public DmSocio(int id, string nome, string tipo)
        {
            this.Id = id;
            this.Nome = nome;
            this.Tipo = tipo;
        }
    }
}
