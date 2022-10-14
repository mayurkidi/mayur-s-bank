using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Addpayee : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query="insert into Payees(UserId,AccountHolderName,AccountNumber,AccountIFSC) values('"+Session["id"]+"','"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
        SqlCommand cmd = new SqlCommand(query, con);
        cmd.ExecuteNonQuery();
        Response.Write("<script> alert('Payee Added.');window.location.href='Transfer.aspx'; </script>");
        con.Close();
    }
}