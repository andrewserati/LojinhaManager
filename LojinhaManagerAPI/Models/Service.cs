namespace LojinhaManagerAPI.Models
{
    public class Service
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public Service(int Id, string Name, string Description) 
        {
            this.Id = Id;
            this.Name = Name;
            this.Description = Description;
        }

    }
}
