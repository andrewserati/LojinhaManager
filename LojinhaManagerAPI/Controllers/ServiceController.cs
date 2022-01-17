using LojinhaManagerAPI.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace LojinhaManagerAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ServiceController : ControllerBase
    {

        [HttpGet]
        public Service GetServices()
        {
            return new Service(1, "Formatação", "teste");
        }

    }
}
