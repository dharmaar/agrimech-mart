using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agrimech_mart.index
{
    public partial class Home : System.Web.UI.Page
    {
        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/product.aspx");


        }
    }
}