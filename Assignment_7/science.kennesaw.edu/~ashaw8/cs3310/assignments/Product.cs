using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ShoppingCart.Models
{
    [MetadataType(typeof(ProductMetadata))]
    public partial class Product
    {
        public class ProductMetadata
        {
            public int ProductID { get; set; }

            [Required(ErrorMessage = "The Product type is required")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [StringLength(30, ErrorMessage = "The Product type cannot be more than 30 characters")]
            public string ProductType { get; set; }

            [StringLength(50, ErrorMessage = "The Product name cannot be more than 50 characters")]
            public string ProductName { get; set; }

            [StringLength(30, ErrorMessage = "The Image file name cannot be more than 30 characters")]
            public string ImageFile { get; set; }

            [Required(ErrorMessage = "The Unit Price is required")]
            public decimal UnitPrice { get; set; }

            [Required(ErrorMessage = "The Maximum Amount is required")]
            public int MaxAmount { get; set; }

            [Required(ErrorMessage = "The Default Amount is required")]
            public int DefaultAmount { get; set; }
        }
    }
}