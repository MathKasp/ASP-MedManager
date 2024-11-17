using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace newEmpty.Controllers
{
    public class HomeController : Controller
    {
        [Authorize]
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult FAQ()
        {
            return View();
        }

        public IActionResult Contact()
        {
            return View();
        }

    }
}
