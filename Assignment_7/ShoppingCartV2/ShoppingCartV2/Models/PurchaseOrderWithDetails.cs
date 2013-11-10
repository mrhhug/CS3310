using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ShoppingCartV2.Models
{
    public class PurchaseOrderWithDetails
    {
        public int OrderID { get; set; }

        public int CustomerID { get; set; }

        public DateTime Date { get; set; }

        public decimal SubTotal { get; set; }

        public decimal Tax { get; set; }

        public decimal Total { get; set; }

        public string Details { get; set; }
    }
}