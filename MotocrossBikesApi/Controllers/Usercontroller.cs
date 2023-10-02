using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace MotocrossBikesApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Usercontroller : ControllerBase
    {
        [HttpGet]
        public async Task<IActionResult> CreateUser()
        {

        }

        [HttpDelete]
        public async Task<IActionResult> DeleteUser()
        {

        }
    }
}
