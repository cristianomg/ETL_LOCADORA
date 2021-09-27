namespace ETL_Locadora.Models.Dimensional
{
    public class DmArtista
    {
        public int Id { get; private set; }
        public string Tipo { get; private set; }
        public string NasBras { get; private set; }
        public string Nome { get; private set; }

        public DmArtista(int id, string tipo, string nasBras, string nome)
        {
            this.Id = id;
            this.Tipo = tipo;
            this.NasBras = nasBras;
            this.Nome = nome;
        }
    }
}
