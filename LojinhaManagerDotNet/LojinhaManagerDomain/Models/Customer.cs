using LojinhaManagerDomain.Models.Others;

namespace LojinhaManagerDomain.Models
{
    public class Customer : MininalLMObject
    {
        public string Name { get; set; }
        public DateTime? Birthdate { get; set; }

        public Customer(string name)
        { 
            Name = name;
        }

        public Customer(int id, string name) : base(id)
        {
            Name = name;
        }

        public Customer(int id, string name, DateTime birthdate) : base(id)
        {
            Name = name;
            Birthdate = birthdate;
        }
    }
}
