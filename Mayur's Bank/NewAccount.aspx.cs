using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class NewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }
        //Response.Write(Session["id"]);
        string cs = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Mbank.mdf; Integrated Security = True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query = "select * from UsersDetails where Id='"+Session["id"]+ "' and AccountStatus='" + 1 + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader data = cmd.ExecuteReader();
        if (data.Read())
        {
            Response.Write("<script> window.location.href='Home.aspx'; </script>");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=|DataDirectory|\Mbank.mdf; Integrated Security = True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        Random acno = new Random();
        int  accno = acno.Next(111111111,999999999);
        string query = "insert into AccountDetails(AccountNumber,AccountUserId,AccountType,AccountBalance) values('"+accno+"','"+Session["id"]+"','"+DropDownList1.SelectedValue+"','"+tbAmount.Text+"')";
        string uquery = "update UsersDetails set AccountStatus='" + 1 + "' where Id='"+Session["id"]+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlCommand cmd2= new SqlCommand(uquery, con);
        cmd.ExecuteNonQuery();
        cmd2.ExecuteNonQuery();
        con.Close();
        Response.Write("<script> window.location.href='Home.aspx'; </script>");
    }
}