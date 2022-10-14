using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class BankMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        //SqlConnection con = new SqlConnection(cs);
        //con.Open();
        //string query = "select  Firstname,Lastname from UsersDetails where Id='" + Session["id"] + "'";
        //string query2 = "select  AccountBalance from AccountDetails where AccountUserId='" + Session["id"] + "'";
        //SqlCommand cmd = new SqlCommand(query, con);
        //SqlDataReader data = cmd.ExecuteReader();
        //if (data.Read())
        //{
        //    Response.Write("<script> alert('Login succesful.');window.location.href='NewAccount.aspx'; </script>");
        //    lblnamedata.Text = data[0].ToString() + " " + data[1].ToString();
        //    con.Close();
        //}
        //con.Open();
        //SqlCommand cmd2 = new SqlCommand(query2, con);
        //SqlDataReader data2 = cmd2.ExecuteReader();
        //if (data2.Read())
        //{
        //    lblbaldata.Text = data2[0].ToString();
        //    con.Close();
        //}
    }
}
