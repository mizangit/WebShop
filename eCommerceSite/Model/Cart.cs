using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace eCommerceSite.Model
{
    public class Cart
    {
        public int Id { get; set; }
        public string ClientId { get; set; }
        public int ProductId { get; set; }
        public int Amount { get; set; }
        public DateTime DatePurchased { get; set; }
        public bool IsInCart { get; set; }


    }
}