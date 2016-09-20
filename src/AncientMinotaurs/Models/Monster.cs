using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Monster
    {
        [Key]
        public int MonsterId { get; set; }
        public string Name { get; set; }
        public int Health { get; set; }
        public int Damage { get; set; }
        public string Avatar { get; set; }
        public int RoomId { get; set; }
        public virtual Room Room { get; set; }

        public Monster(string name, string avatar, int health, int damage, int roomId, int id = 0)
        {
            Name = name;
            Avatar = avatar;
            Health = health;
            Damage = damage;
            roomId = RoomId;
            id = MonsterId;
        }

        public Monster() { }
    }
}
