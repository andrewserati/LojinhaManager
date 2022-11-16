namespace LojinhaManagerDomain.Requests
{
    public class CustomerCreateRequest
    {
        public string Name { get; set; }

        //public DateTime Birthdate { get; set; }

        public CustomerCreateRequest(string name)
        { 
            Name = name;
        }
    }
}
