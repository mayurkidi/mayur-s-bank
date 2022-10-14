using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class OTPVarification : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write(Session["otp"]);
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }
    }



    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        //HtmlMeta meta = new HtmlMeta();
        //meta.HttpEquiv = "Refresh";
        //meta.Content = "59;url=Home.aspx";
        //this.Page.Controls.Add(meta);
        if (Convert.ToUInt32(tbOtp.Text) == Convert.ToInt32(Session["otp"]))
        {
            if (Session["otpfor"] == "withdraw")
            {
                string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string getbal = "select AccountBalance from AccountDetails where AccountUserId='" + Session["id"] + "'";
                SqlCommand cmdbal = new SqlCommand(getbal, con);
                SqlDataReader data = cmdbal.ExecuteReader();
                if (data.Read())
                {
                    if (Convert.ToInt32(Session["amount"]) > Convert.ToInt32(data[0]))
                    {
                        Response.Write("<script> alert('Insufficient Balance.');window.location.href='Withdraw.aspx'; </script>");
                    }
                    else
                    {
                        con.Close();
                        con.Open();
                        string query = "insert into Transactions(Accountid, Name,Amount,TransactionType)values('" + Session["id"] + "','" + "Cash Withdrawl" + "','" + Session["amount"] + "','" + "Debit" + "') ";
                        string query2 = "update AccountDetails set AccountBalance = AccountBalance- '" + Session["amount"] + "' where AccountUserId='" + Session["id"] + "'";
                        SqlCommand cmd = new SqlCommand(query, con);
                        SqlCommand cmd2 = new SqlCommand(query2, con);
                        cmd.ExecuteNonQuery();
                        cmd2.ExecuteNonQuery();
                        Response.Write("<script> alert('Money Debited Successfully');window.location.href='Home.aspx';</script>");
                    }
                    con.Close();
                    Session["otp"] = null;
                    Session["otpfor"] = null;
                    Session["amount"] = null; 
                }
            }
            else
            {
                        Response.Write("<script> alert('Transaction  Successful');window.location.href='Home.aspx';</script>");

            }
        }
        else
        {
            Response.Write("Invalid Otp..");
        }
    }
}