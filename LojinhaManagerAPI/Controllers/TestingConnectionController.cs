﻿using Microsoft.AspNetCore.Mvc;
using System.Net;
using LojinhaManagerAPI.Models;

namespace LojinhaManagerAPI.Controllers
{
    [Route("")]
    [ApiController]
    public class TestingConnectionController : ControllerBase
    {
        [HttpGet]
        public CustomMessage Get() 
        {
            return new CustomMessage("A API está funcionando normalmente!");
        }
    }
}
