using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Treasure
    {
        [Key]
        public int TreasureId { get; set; }

        public int RoomId { get; set; }
        public virtual Room Room { get; set; }

        public int ItemId { get; set; }
        public virtual Item Item { get; set; }
    }
}
