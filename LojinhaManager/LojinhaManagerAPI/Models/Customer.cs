namespace LojinhaManagerAPI.Models
{
    public class Customer
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime Birthdate { get; set; }

        public Customer(int id, string name, DateTime birthdate) 
        {
            this.Id = id;
            this.Name = name;
            this.Birthdate = birthdate;
        }
    }
}
