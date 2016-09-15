using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Room
    {
        [Key]
        public int RoomId { get; set; }
        public string Image { get; set; }
        public string Description { get; set; }
        public virtual ICollection<Character> Characters { get; set; }
        public virtual ICollection<Monster> Monsters { get; set; }
        public virtual ICollection<Treasure> Treasures { get; set; }
        
    }
}
