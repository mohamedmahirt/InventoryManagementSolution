using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace InventoryManagement.Models
{
    [Table("ItemMaster")]
    public class Item : BaseDMO
    {
        public string Code { get; set; } = "";
        public string Name { get; set; } = "";
        public int Status { get; set; }
    }
}
