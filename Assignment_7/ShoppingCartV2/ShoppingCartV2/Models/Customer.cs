using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace ShoppingCartV2.Models
{
    [MetadataType(typeof(CustomerMetadata))]
    public partial class Customer
    {
        public class CustomerMetadata
        {
            public int ID { get; set; }

            [Required(ErrorMessage = "The First name field is required")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [StringLength(30, ErrorMessage = "The First name cannot be more than 30 characters")]
            public string Firstname { get; set; }

            [Required(ErrorMessage = "The Last name field is required")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [StringLength(30, ErrorMessage = "The Last name cannot be more than 30 characters")]
            public string Lastname { get; set; }

            [StringLength(50, ErrorMessage = "The Street address cannot be more than 50 characters")]
            public string StreetAddress { get; set; }

            [StringLength(30, ErrorMessage = "The City name cannot be more than 30 characters")]
            public string City { get; set; }

            [StringLength(20, ErrorMessage = "The State name cannot be more than 20 characters")]
            public string State { get; set; }

            [StringLength(10, ErrorMessage = "The Zip code cannot be more than 10 characters")]
            public string Zip { get; set; }

            [StringLength(15, ErrorMessage = "The Phone number cannot be more than 15 characters")]
            public string Phone { get; set; }

            [Required(ErrorMessage = "The Email address is required")]
            [DisplayFormat(ConvertEmptyStringToNull = false)]
            [StringLength(30, ErrorMessage = "The Email address cannot be more than 30 characters")]
            [RegularExpression(@"^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|" +
                           @"([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+" +
                           @"@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$",
                           ErrorMessage = "Bad Email address.")]
            public string Email { get; set; }

        }
    }
}