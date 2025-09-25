using System;
using System.Collections.Generic;
using System.Linq;
using agrimech_mart.App_Code; // Make sure to include your Models namespace

namespace agrimech_mart.index
{
    public partial class product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nothing needed here yet for static products
        }

        // This will handle all Add to Cart buttons
        protected void AddToCart_Command(object sender, System.Web.UI.WebControls.CommandEventArgs e)
        {
            // CommandArgument format: "p1|Air Filter Element|500|imageURL"
            string[] args = e.CommandArgument.ToString().Split('|');
            string id = args[0];
            string name = args[1];
            decimal price = decimal.Parse(args[2]);
            string imageUrl = args[3];

            // Retrieve existing cart from Session or create a new one
            List<CartItem> cart = Session["Cart"] as List<CartItem>;
            if (cart == null)
            {
                cart = new List<CartItem>();
            }

            // Check if the product already exists in the cart
            CartItem existingItem = cart.FirstOrDefault(x => x.Product.Id == id);
            if (existingItem != null)
            {
                existingItem.Quantity++; // Increase quantity if already in cart
            }
            else
            {
                // Add new product to cart
                CartItem newItem = new CartItem
                {
                    Product = new Product
                    {
                        Id = id,
                        Name = name,
                        Price = price,
                        ImageUrl = imageUrl
                    },
                    Quantity = 1
                };
                cart.Add(newItem);
            }

            // Save cart back to Session
            Session["Cart"] = cart;

            // Optional: Show confirmation
            Response.Write("<script>alert('Product added to cart');</script>");
        }
    }
}
