using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("Hello"+Session["id"]);
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        try
        {
            con.Open();
            string query = "select * from UsersDetails where Email='" + tbUsername.Text + "' and Password='" + tbPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader data = cmd.ExecuteReader();
            if (data.Read())
            {
                Response.Write("<script> alert('Login succesful.');window.location.href='NewAccount.aspx'; </script>");
                HttpCookie cokkie = new HttpCookie("cookie");
                cokkie["id"] = data[0].ToString();
                cokkie["username"] = data[4].ToString();
                cokkie["password"] = data[5].ToString();
                cokkie.Expires.Add(new TimeSpan(0,1,0));
                Response.Cookies.Add(cokkie);
                Session["id"] = data[0].ToString();
            }
            else
                Response.Write("<script> alert('Invalid username or password.');window.location.href='Loginpage.aspx'; </script>");
            con.Close();
            reset();
        }
        catch (Exception ee)
        {
            Response.Write("<script> alert('Somthing went wrong.');window.location.href='RegistrationPage.aspx'; </script>");

        }
    }
    public void reset()
    {
        tbUsername.Text = "";
        tbPassword.Text = "";
    }
}