using LojinhaManagerDomain.Models;
using Microsoft.AspNetCore.Mvc;

namespace LojinhaManagerAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        public CustomersController() { }

        [HttpGet]
        public IEnumerable<Customer> Get()
        {
            return new List<Customer>()
            {
                new Customer(5, "Andrew", new DateTime(2000, 07, 05).ToUniversalTime())
            };
        }

    }
}
