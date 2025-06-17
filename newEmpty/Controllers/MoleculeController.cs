using Microsoft.AspNetCore.Mvc;
using newEmpty.Models;
using NewEmpty.Data;
using Microsoft.EntityFrameworkCore;
using newEmpty.ViewModel;
using System.Security.Cryptography.X509Certificates;
using Microsoft.AspNetCore.Authorization;

namespace newEmpty.Controllers
{
    public class MoleculeController : Controller
    {

        private readonly ApplicationDbContext _context;

        // Controleur, injection de dependance
        public MoleculeController(ApplicationDbContext context)
        {
            _context = context;
        }

        [Authorize]

        #region INDEX
        public IActionResult Index()
        {
            List<Molecule> molecules = new List<Molecule>();
            molecules = _context.Molecules.ToList();
            return View(molecules);
        }
        #endregion


        #region ADD
        [HttpGet]
        public async Task<IActionResult> Add()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken] // Expliquer 
        public async Task<IActionResult> AddConfirmed(Molecule model)
        {
            if (ModelState.IsValid)
            {
                _context.Molecules.Add(model);
                await _context.SaveChangesAsync();

                return RedirectToAction("Index");
            }

            return RedirectToAction("Add");
        }
        #endregion


        #region REMOVE
        [HttpGet]
        public IActionResult Remove(int id)
        {
            Molecule? molecule = _context.Molecules.FirstOrDefault(s => s.Moleculeid == id);
            return View(molecule);
        }

        [HttpPost]
        public IActionResult RemoveConfirm(int moleculeid)
        {
            var molecule = _context.Molecules.FirstOrDefault(s => s.Moleculeid == moleculeid);

            if (molecule != null)
            {
                _context.Molecules.Remove(molecule);
                _context.SaveChanges();
                return RedirectToAction("Index");
            }
            return NotFound();
        }
        #endregion




    }
}