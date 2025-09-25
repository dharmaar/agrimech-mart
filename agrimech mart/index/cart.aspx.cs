using System;
using System.Collections.Generic;

namespace agrimech_mart.index
{
    public partial class cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCart();
            }
        }

        private void BindCart()
        {
            var cart = Session["Cart"] as List<CartItem> ?? new List<CartItem>();
            gvCart.DataSource = cart;
            gvCart.DataBind();

            decimal grandTotal = 0;
            foreach (var item in cart)
            {
                grandTotal += item.TotalPrice;
            }
            lblGrandTotal.Text = grandTotal.ToString("₹0.00");
        }

        protected void gvCart_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var cart = Session["Cart"] as List<CartItem>;

            if (cart == null || index >= cart.Count) return;

            if (e.CommandName == "RemoveItem")
            {
                cart.RemoveAt(index);
            }
            else if (e.CommandName == "UpdateQty")
            {
                var row = gvCart.Rows[index];
                var txtQty = row.FindControl("txtQty") as System.Web.UI.WebControls.TextBox;
                int qty;
                if (txtQty != null && int.TryParse(txtQty.Text, out qty))
                {
                    if (qty < 1) qty = 1;
                    cart[index].Quantity = qty;
                }
            }

            Session["Cart"] = cart;
            BindCart();
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Redirect to checkout page
            Response.Redirect("checkout.aspx");
        }
    }

    // CartItem and Product classes
    [Serializable]
    public class CartItem
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }
        public decimal TotalPrice { get { return Product.Price * Quantity; } }
    }

    [Serializable]
    public class Product
    {
        public string Name { get; set; }
        public decimal Price { get; set; }
        public string ImageUrl { get; set; }
    }
}
