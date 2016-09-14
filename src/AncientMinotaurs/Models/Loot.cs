using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Loot
    {
        [Key]
        public int LootId { get; set; }

        public int ItemId { get; set; }
        public virtual Item Item { get; set; }

        public int CharacterId { get; set; }
        public virtual Character Character { get; set; }

    }
}
