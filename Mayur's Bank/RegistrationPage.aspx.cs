using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class RegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        try
        {
            con.Open();
            string query = "insert into UsersDetails(Firstname,Lastname,Gender,Email,Password,Address,Mobile,AccountStatus)values('" + tbFirstname.Text + "','" + tbLastname.Text + "','" + rbGender.SelectedValue + "','" + tbEmail.Text + "','" + tbPassword.Text + "','" + tbAddress.Text + "','" + tbMobile.Text + "','0')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Registration succesful.');window.location.href='Loginpage.aspx'; </script>");
            reset();
        }
        catch(Exception ee)
        {
            Response.Write("<script> alert('Something went wrong.');window.location.href='RegistrationPage.aspx'; </script>");

        }
    }
    public void reset()
    {
        tbFirstname.Text = "";
        tbLastname.Text = "";
        rbGender.Items[0].Selected = false;
        rbGender.Items[1].Selected = false;
        tbEmail.Text = "";
        tbPassword.Text = "";
        tbCPassword.Text = "";
        tbAddress.Text = "";
        tbMobile.Text = "";
    }
}