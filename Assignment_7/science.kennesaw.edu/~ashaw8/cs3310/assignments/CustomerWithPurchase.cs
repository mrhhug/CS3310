using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCart.Models
{
    public class CustomerWithPurchase
    {
        public int ID { get; set; }

        public string Firstname { get; set; }

        public string Lastname { get; set; }

        public decimal TotalPrice { get; set; }

        public int OrderID { get; set; }
    }
}