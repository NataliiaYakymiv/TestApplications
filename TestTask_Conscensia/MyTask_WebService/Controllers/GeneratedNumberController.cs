using Microsoft.AspNetCore.Mvc;
using System;

namespace MyTask_WebService.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class GeneratedNumberController : ControllerBase
    {
        // GET: api/GeneratedNumber
        [HttpGet]
        public int Get()
        {
            return new Random().Next(1, 100);
        }
    }
}
