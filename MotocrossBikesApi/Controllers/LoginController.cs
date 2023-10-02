using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MotocrossBikesApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {
        [HttpPost]
        public async Task<IActionResult> Login()
        {

        }
    }
}
