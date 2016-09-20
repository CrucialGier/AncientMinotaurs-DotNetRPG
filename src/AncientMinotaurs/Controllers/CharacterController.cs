using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using AncientMinotaurs.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using Microsoft.EntityFrameworkCore;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace AncientMinotaurs.Controllers
{
    [Authorize]
    public class CharacterController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;

        public CharacterController(UserManager<ApplicationUser> userManager, ApplicationDbContext db)
        {
            _userManager = userManager;
            _db = db;
        }
        // GET: /<controller>/
        public async Task<IActionResult> Index()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            return View(_db.Characters.Where(x => x.User.Id == currentUser.Id));
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> Create(Character character)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            character.User = currentUser;
            _db.Characters.Add(character);
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public  IActionResult Details(int id)
        {
            var currentCharacter = _db.Characters.Include(l => l.Loots).FirstOrDefault(c => c.CharacterId == id);
            List<Loot> CharacterLoot = currentCharacter.Loots.ToList();
            List<Item> CharacterItems = new List<Item> ();
            foreach(Loot lootItem in CharacterLoot)
            {
                var temp = _db.Items.Where(i => i.ItemId == lootItem.ItemId).ToList();
                CharacterItems.Add(temp[0]);
            }
            ViewBag.Items = CharacterItems;

            return View(currentCharacter);
        }
    }
}
