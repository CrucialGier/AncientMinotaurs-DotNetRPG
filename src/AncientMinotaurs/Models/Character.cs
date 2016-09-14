using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace AncientMinotaurs.Models
{
    public class Character
    {
        [Key]
        public int CharacterId { get; set; }
        public string Name { get; set; }
        public int Health { get; set; }
        public int Experience { get; set; }
        public int Damage { get; set; }
        public string Avatar { get; set; }
        public virtual ApplicationUser User { get; set; }
        public int RoomId { get; set; }
        public virtual Room Room { get; set; }
        public virtual ICollection<Loot> Loots { get; set; }
    }
}
