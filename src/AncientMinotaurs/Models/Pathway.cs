using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace AncientMinotaurs.Models
{
    public class Pathway
    {
        
        public int PathwayId { get; set; }
        public int StartId { get; set; }  
        public int EndId { get; set; }


    }
}
