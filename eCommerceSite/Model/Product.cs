using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eCommerceSite.Model
{
    public class Product
    {
        public int Id { get; set; }
        public int TypeId { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
    
    
    }
}