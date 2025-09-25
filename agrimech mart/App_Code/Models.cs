using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace agrimech_mart.App_Code
{
    public class Models
    {
        public class Product
        {
            public string Id { get; set; }
            public string Name { get; set; }
            public decimal Price { get; set; }
            public string ImageUrl { get; set; }   // ✅ Add this property
        }

        public class CartItem
        {
            public Product Product { get; set; }
            public int Quantity { get; set; }

            public decimal TotalPrice
            {
                get { return Product.Price * Quantity; }
            }
        }
    }
}