using System.ComponentModel.DataAnnotations;

namespace LojinhaManagerDomain.Models.Others
{
    public abstract class MininalLMObject
    {
        [Key]
        public int Id { get; set; }

        public MininalLMObject(int id)
        {
            Id = id;
        }
    }
}
