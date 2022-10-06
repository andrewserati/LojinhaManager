//using Microsoft.AspNetCore.Authorization;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.Identity.Web.Resource;

//namespace LojinhaManagerAPI.Controllers
//{
//    [Authorize]
//    [ApiController]
//    [Route("[controller]")]
//    [RequiredScope(RequiredScopesConfigurationKey = "AzureAd:Scopes")]
//    public class WeatherForecastController : ControllerBase
//    {
//        public WeatherForecastController()
//        {
//        }

//        [HttpGet(Name = "GetWeatherForecast")]
//        public IEnumerable<WeatherForecast> Get()
//        {
//            return null;
//        }
//    }
//}