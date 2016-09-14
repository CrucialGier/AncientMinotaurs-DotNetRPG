using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Item
    {
        [Key]
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public virtual ICollection<Treasure> Treasures { get; set; }
        public virtual ICollection<Loot> Loots { get; set; }


    }
}
