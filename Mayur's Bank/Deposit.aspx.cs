using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Deposit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }
    }

    protected void btnWithdraw_Click(object sender, EventArgs e)
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        if (Convert.ToInt32(tbAmount.Text)>50000)
        {
            Response.Write("<script> alert('Canoot deposit more than 50000 Rs.');window.location.href='Deposit.aspx';</script>");
        }
        else
        {
            string query = "insert into Transactions(Accountid, Name,Amount,TransactionType)values('" + Session["id"] + "','" + "Cash Deposit" + "','" + tbAmount.Text + "','" + "Credit" + "') ";
            string query2 = "update AccountDetails set AccountBalance = AccountBalance+ '" + tbAmount.Text + "' where AccountUserId='" + Session["id"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlCommand cmd2 = new SqlCommand(query2, con);
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            Response.Write("<script> alert('Money Credited Successfully');window.location.href='Home.aspx';</script>");
            con.Close();
        }
    }
}