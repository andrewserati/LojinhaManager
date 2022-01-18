using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace LojinhaManagerAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MenuController : ControllerBase
    {

        public void GetMenu()
        { 
            var result = new List<string>();
        }

    }
}
