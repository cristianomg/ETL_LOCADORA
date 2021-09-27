namespace ETL_Locadora.Models.Dimensional
{
    public class DmGravadora
    {
        public int Id { get; private set; }
        public string Nome { get; private set; }
        public string Uf { get; private set; }

        public DmGravadora(int id, string nome, string uf)
        {
            this.Id = id;
            this.Nome = nome;
            this.Uf = uf;
        }
    }
}
