using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using AncientMinotaurs.Models;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;
using Microsoft.EntityFrameworkCore;

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

            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            if (currentUser.UserName == "MasterBlaster5000")
            {
                ViewBag.Admin = true;
            }
            else
            {
                ViewBag.Admin = false;
            }
            Character currentCharacter = _db.Characters.Include(l => l.Loots).FirstOrDefault(x => x.User.Id == currentUser.Id);
            ViewBag.Character = currentCharacter;

            Room currentRoom = _db.Rooms.Include(t => t.Treasures).FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            ViewBag.Room = currentRoom;

            List<Pathway> pathIds = _db.Pathways.Where(p => p.StartId == currentCharacter.RoomId).ToList();
            List<Room> pathChoices = new List<Room>();
            foreach(var path in pathIds)
            {
               pathChoices.Add(_db.Rooms.FirstOrDefault(r => r.RoomId == path.EndId));
            }
            ViewBag.Paths = pathChoices;

            List<Monster> monsters = _db.Monsters.Where(r => r.RoomId == currentCharacter.RoomId).ToList();
            ViewBag.Monsters = monsters;

            List<Loot> CharacterLoot = currentCharacter.Loots.ToList();
            List<Item> CharacterItems = new List<Item>();
            foreach (Loot lootItem in CharacterLoot)
            {
                CharacterItems.Add(_db.Items.FirstOrDefault(i => i.ItemId == lootItem.ItemId));
            }
            ViewBag.Items = CharacterItems;

            List<Treasure> roomTreasures = currentRoom.Treasures.ToList();
            List<Item> treasures = new List<Item>();
            foreach (Treasure treasure in roomTreasures)
            {
                treasures.Add(_db.Items.FirstOrDefault(i => i.ItemId == treasure.ItemId));
            }
            ViewBag.Treasures = treasures;

            List<Room> allRooms = _db.Rooms.ToList();
            List<Room> newPaths = new List<Room>();

            foreach (Room room in allRooms)
            {
                bool addThis = true;
                foreach (Room linkedRoom in pathChoices)
                {

                    if (room.RoomId == linkedRoom.RoomId || room.RoomId == currentRoom.RoomId)
                    {
                        addThis = false;
                    }
                }
                if (addThis)
                {
                    newPaths.Add(room);
                }

            }
            ViewBag.NewPaths = newPaths;

            return View();

        }

        public async Task<IActionResult> AdminRoom()
        {

            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            if (currentUser.UserName == "MasterBlaster5000")
            {
                ViewBag.Admin = true;
            }
            else
            {
                ViewBag.Admin = false;
            }
            Character currentCharacter = _db.Characters.Include(l => l.Loots).FirstOrDefault(x => x.User.Id == currentUser.Id);
            ViewBag.Character = currentCharacter;

            Room currentRoom = _db.Rooms.Include(t => t.Treasures).FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            ViewBag.Room = currentRoom;

            List<Pathway> pathIds = _db.Pathways.Where(p => p.StartId == currentCharacter.RoomId).ToList();
            List<Room> pathChoices = new List<Room>();
            foreach (var path in pathIds)
            {
                pathChoices.Add(_db.Rooms.FirstOrDefault(r => r.RoomId == path.EndId));
            }
            ViewBag.Paths = pathChoices;

            List<Monster> monsters = _db.Monsters.Where(r => r.RoomId == currentCharacter.RoomId).ToList();
            ViewBag.Monsters = monsters;

            List<Loot> CharacterLoot = currentCharacter.Loots.ToList();
            List<Item> CharacterItems = new List<Item>();
            foreach (Loot lootItem in CharacterLoot)
            {
                CharacterItems.Add(_db.Items.FirstOrDefault(i => i.ItemId == lootItem.ItemId));
            }
            ViewBag.Items = CharacterItems;

            List<Treasure> roomTreasures = currentRoom.Treasures.ToList();
            List<Item> treasures = new List<Item>();
            foreach (Treasure treasure in roomTreasures)
            {
                treasures.Add(_db.Items.FirstOrDefault(i => i.ItemId == treasure.ItemId));
            }
            ViewBag.Treasures = treasures;
            List<Room> allRooms = _db.Rooms.ToList();
            List<Room> newPaths = new List<Room>();

            foreach (Room room in allRooms)
            {
                bool addThis = true;
                foreach (Room linkedRoom in pathChoices)
                {

                    if (room.RoomId == linkedRoom.RoomId || room.RoomId == currentRoom.RoomId)
                    {
                        addThis = false;
                    }
                }
                if (addThis)
                {
                    newPaths.Add(room);
                }

            }
            ViewBag.NewPaths = newPaths;

            return View();

        }

        public async Task<IActionResult> AdminPathways()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            if (currentUser.UserName == "MasterBlaster5000")
            {
                ViewBag.Admin = true;
            }
            else
            {
                ViewBag.Admin = false;
            }
            Character currentCharacter = _db.Characters.Include(l => l.Loots).FirstOrDefault(x => x.User.Id == currentUser.Id);
            ViewBag.Character = currentCharacter;

            Room currentRoom = _db.Rooms.Include(t => t.Treasures).FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            ViewBag.Room = currentRoom;

            List<Pathway> pathIds = _db.Pathways.Where(p => p.StartId == currentCharacter.RoomId).ToList();
            List<Room> pathChoices = new List<Room>();
            foreach (var path in pathIds)
            {
                pathChoices.Add(_db.Rooms.FirstOrDefault(r => r.RoomId == path.EndId));
            }
            ViewBag.Paths = pathChoices;

            List<Monster> monsters = _db.Monsters.Where(r => r.RoomId == currentCharacter.RoomId).ToList();
            ViewBag.Monsters = monsters;

            List<Loot> CharacterLoot = currentCharacter.Loots.ToList();
            List<Item> CharacterItems = new List<Item>();
            foreach (Loot lootItem in CharacterLoot)
            {
                CharacterItems.Add(_db.Items.FirstOrDefault(i => i.ItemId == lootItem.ItemId));
            }
            ViewBag.Items = CharacterItems;

            List<Treasure> roomTreasures = currentRoom.Treasures.ToList();
            List<Item> treasures = new List<Item>();
            foreach (Treasure treasure in roomTreasures)
            {
                treasures.Add(_db.Items.FirstOrDefault(i => i.ItemId == treasure.ItemId));
            }
            ViewBag.Treasures = treasures;

            List<Room> allRooms = _db.Rooms.ToList();
            List<Room> newPaths = new List<Room>();

            foreach(Room room in allRooms)
            {
                bool addThis = true;
                foreach(Room linkedRoom in pathChoices)
                {
                    
                    if(room.RoomId == linkedRoom.RoomId || room.RoomId == currentRoom.RoomId)
                    {
                        addThis = false;
                    }
                }
                if(addThis)
                {
                     newPaths.Add(room);
                }

            }
            ViewBag.NewPaths = newPaths;

            return View();

        }

        // id stands for RoomId of destination.
        public async Task<IActionResult> Move(int RoomId)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            currentCharacter.RoomId = RoomId;
            _db.SaveChanges();
            return RedirectToAction("Index");
        }

        public async Task<IActionResult> AjaxRooms()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Room currentRoom = _db.Rooms.FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            ViewBag.Room = currentRoom;
            List<Pathway> pathIds = _db.Pathways.Where(p => p.StartId == currentCharacter.RoomId).ToList();
            List<Room> pathChoices = new List<Room>();
            foreach (var path in pathIds)
            {
                pathChoices.Add(_db.Rooms.FirstOrDefault(r => r.RoomId == path.EndId));
            }
            ViewBag.Paths = pathChoices;
            return View();
        }

        public async Task<IActionResult> AjaxItems()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.Include(l => l.Loots).FirstOrDefault(x => x.User.Id == currentUser.Id);

            List<Loot> CharacterLoot = currentCharacter.Loots.ToList();
            List<Item> CharacterItems = new List<Item>();
            foreach (Loot lootItem in CharacterLoot)
            {
                CharacterItems.Add(_db.Items.FirstOrDefault(i => i.ItemId == lootItem.ItemId));
            }
            ViewBag.Items = CharacterItems;
            Room currentRoom = _db.Rooms.Include(t => t.Treasures).FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            List<Treasure> roomTreasures = currentRoom.Treasures.ToList();
            List<Item> treasures = new List<Item>();
            foreach (Treasure treasure in roomTreasures)
            {
                treasures.Add(_db.Items.FirstOrDefault(i => i.ItemId == treasure.ItemId));
            }
            ViewBag.Treasures = treasures;
            return View();
        }

        public async Task<IActionResult> AjaxMonsters()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            List<Monster> monsters = _db.Monsters.Where(r => r.RoomId == currentCharacter.RoomId).ToList();
            ViewBag.Monsters = monsters;
            return View();
        }

        public async Task<IActionResult> AjaxAdmin()
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Room currentRoom = _db.Rooms.FirstOrDefault(x => x.RoomId == currentCharacter.RoomId);
            ViewBag.Room = currentRoom;

            List<Pathway> pathIds = _db.Pathways.Where(p => p.StartId == currentCharacter.RoomId).ToList();
            List<Room> pathChoices = new List<Room>();
            foreach (var path in pathIds)
            {
                pathChoices.Add(_db.Rooms.FirstOrDefault(r => r.RoomId == path.EndId));
            }

            List<Room> allRooms = _db.Rooms.ToList();
            List<Room> newPaths = new List<Room>();
            foreach (Room room in allRooms)
            {
                bool addThis = true;
                foreach (Room linkedRoom in pathChoices)
                {

                    if (room.RoomId == linkedRoom.RoomId || room.RoomId == currentRoom.RoomId)
                    {
                        addThis = false;
                    }
                }
                if (addThis)
                {
                    newPaths.Add(room);
                }
            }
            ViewBag.NewPaths = newPaths;

            return View();
        }

        // id stands for ItemId of item to be retrieved.
        public async Task<IActionResult> PickUp(int ItemId)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Treasure claimedItem = _db.Treasures.FirstOrDefault(t => t.RoomId == currentCharacter.RoomId && t.ItemId == ItemId);
            Loot newLoot = new Loot();
            newLoot.ItemId = claimedItem.ItemId;
            newLoot.CharacterId = currentCharacter.CharacterId;
            _db.Loots.Add(newLoot);
            _db.Treasures.Remove(claimedItem);
            _db.SaveChanges();
            return RedirectToAction("AjaxItems");
        }

     

        public async Task<IActionResult> Drop(int ItemId)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Loot droppedLoot = _db.Loots.FirstOrDefault(l => l.ItemId == ItemId && l.CharacterId == currentCharacter.CharacterId);
            Treasure newTreasure = new Treasure();
            newTreasure.RoomId = currentCharacter.RoomId;
            newTreasure.ItemId = droppedLoot.ItemId;
            _db.Treasures.Add(newTreasure);
            _db.Loots.Remove(droppedLoot);
            _db.SaveChanges();
            return RedirectToAction("AjaxItems");
        }

    

        public async Task<IActionResult> Fight(int id)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Monster currentOpponent = _db.Monsters.FirstOrDefault(m => m.MonsterId == id);
            ViewBag.Character = currentCharacter;
            ViewBag.Monster = currentOpponent;
            return View();
        }

        public async Task<IActionResult> Battle(int id)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Monster currentOpponent = _db.Monsters.FirstOrDefault(m => m.MonsterId == id);
            currentOpponent.Health -= currentCharacter.Damage;
            if (currentOpponent.Health <= 0)
            {
                _db.Monsters.Remove(currentOpponent);
                _db.SaveChanges();
                return RedirectToAction("Index");
            }
            _db.Entry(currentOpponent).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            _db.SaveChanges();
            return RedirectToAction("MonsterBattle", new { id = currentOpponent.MonsterId });
        }

        public async Task<IActionResult> MonsterBattle(int id)
        {
            var userId = this.User.FindFirst(ClaimTypes.NameIdentifier)?.Value;
            var currentUser = await _userManager.FindByIdAsync(userId);
            Character currentCharacter = _db.Characters.FirstOrDefault(x => x.User.Id == currentUser.Id);
            Monster currentOpponent = _db.Monsters.FirstOrDefault(m => m.MonsterId == id);
            currentCharacter.Health -= currentOpponent.Damage;
            if (currentCharacter.Health <= 0 && currentCharacter.CharacterId != 1)
            {
                _db.Characters.Remove(currentCharacter);
                _db.SaveChanges();
                return RedirectToAction("Index", "Character");
            }
            _db.Entry(currentCharacter).State = Microsoft.EntityFrameworkCore.EntityState.Modified;
            _db.SaveChanges();
            return RedirectToAction("Fight", new { id = currentOpponent.MonsterId });
        }

        [HttpPost]
        public IActionResult RoomCreate(Room room)
        {
            _db.Rooms.Add(room);
            _db.SaveChanges();
            return RedirectToAction("AjaxAdmin");
        }

        [HttpPost]
        public IActionResult PathwayCreate(Pathway pathway)
        {
            List<Pathway> allPaths = _db.Pathways.ToList();
            pathway.PathwayId = allPaths.Count() + 1;
            _db.Pathways.Add(pathway);
            _db.SaveChanges();
            return RedirectToAction("AjaxRooms");
        }

        [HttpPost]
        public IActionResult MonsterCreate(Monster monster)
        {
            _db.Monsters.Add(monster);
            _db.SaveChanges();
            return RedirectToAction("AjaxMonsters");
        }

        // id is the currentRoom id
        public IActionResult Spider(int id)
        {
            Monster spider = new Monster("Pete", "http://rs237.pbsrc.com/albums/ff27/maipen/jumping-spider-eyes-9.jpg~c200", 200, 2, id);
            _db.Monsters.Add(spider);
            _db.SaveChanges();
            return RedirectToAction("AjaxMonsters");
        }
        public IActionResult BabyFace(int id)
        {
            Monster babyFace = new Monster("Sami", "http://images.frightprops.com/media/catalog/product/cache/1/small_image/200x200/9df78eab33525d08d6e5fb8d27136e95/c/r/cry-baby-mask.jpg", 40, 20, id);
            _db.Monsters.Add(babyFace);
            _db.SaveChanges();
            return RedirectToAction("AjaxMonsters");
        }
        public IActionResult ScaryFace(int id)
        {
            Monster scaryFace = new Monster("Kevin", "http://ourcommunityroots.com/wp-content/uploads/2010/03/0135.jpg", 50, 20, id);
            scaryFace.Avatar = "http://ourcommunityroots.com/wp-content/uploads/2010/03/0135.jpg";
            _db.Monsters.Add(scaryFace);
            _db.SaveChanges();
            return RedirectToAction("AjaxMonsters");
        }


    }
}
