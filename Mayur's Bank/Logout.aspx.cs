using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //HttpCookie cokkie = new HttpCookie("cookie");
        //cokkie.Expires = DateTime.Now.AddSeconds(0);
        Session.Contents.RemoveAll();
        Response.Write("<script>window.location.href='LoginPage.aspx'; </script>");
    }
}