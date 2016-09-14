using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using AncientMinotaurs.Models;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;

// For more information on enabling MVC for empty projects, visit http://go.microsoft.com/fwlink/?LinkID=397860

namespace AncientMinotaurs.Controllers
{
    [Authorize]
    public class GameController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly UserManager<ApplicationUser> _userManager;

        public GameController(UserManager<ApplicationUser> userManager, ApplicationDbContext db)
        {
            _userManager = userManager;
            _db = db;
        }
        // GET: /<controller>/
        public async Task<IActionResult> Index()
        {
            try
            {
                var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
                var currentUser = await _userManager.FindByIdAsync(userId);
                Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
                ViewBag.Character = currentCharacter;
                Room currentRoom = _db.Rooms.FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
                ViewBag.Room = currentRoom;
                int abc = currentCharacter.RoomId;
                Pathway xyz = new Pathway();
                //List<Pathway> PathChoices = _db.Pathways.Where(p => p.StartId == abc).ToList();
                List<Pathway> PathChoices = _db.Pathways.ToList();

                ViewBag.Paths = PathChoices;
                ViewBag.Paths = new List<Pathway>();
                return View();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                return View();
            }
        }

        public async Task<IActionResult> Move(int id)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            currentCharacter.RoomId = id;
            _db.SaveChanges();
            return RedirectToAction("index");
        } 
    }
}
