using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("<script> alert('"+Request.Cookies["id"].Value +"'); </script>");
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }

    }
}