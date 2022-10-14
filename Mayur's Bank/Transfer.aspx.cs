using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Transfer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["otp"] = null;
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string email = "";
        int otp = 0;
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string getmail = "select Email from UsersDetails where Id='" + Session["id"] + "'";
        SqlCommand cmdmail = new SqlCommand(getmail, con);
        SqlDataReader datamail = cmdmail.ExecuteReader();
        if (datamail.Read())
        {
            email = datamail[0].ToString();
        }
        con.Close();
        if (Session["otp"] == null)
        {
            Random r = new Random();
            otp = r.Next(111111, 999999);
            Session["otp"] = otp;
            try
            {
                SmtpClient Smtp_Server = new SmtpClient();
                MailMessage e_mail = new MailMessage();
                Smtp_Server.UseDefaultCredentials = false;
                Smtp_Server.Port = 587;
                Smtp_Server.EnableSsl = true;
                Smtp_Server.Host = "smtp.gmail.com";
                Smtp_Server.Credentials =
                new System.Net.NetworkCredential("mayursbank@gmail.com", "Mayur@01001000@."); // Textbox3 = Password.
                e_mail = new MailMessage();
                e_mail.From = new MailAddress("mayursbank@gmail.com");
                e_mail.To.Add(email);
                e_mail.Subject = "Enter One Time Password for Transaction";
                e_mail.IsBodyHtml = true;
                e_mail.Body = "Your One time password is \n <h1>'" + otp + "' </h1>";
                Smtp_Server.Send(e_mail);
                Response.Write("<script> window.location.href='OTPVerification.aspx'; </script>");
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }

        }
        con.Open();
        string getbal = "select AccountBalance from AccountDetails where AccountUserId='" + Session["id"] + "'";
        SqlCommand cmdbal = new SqlCommand(getbal, con);
        SqlDataReader data = cmdbal.ExecuteReader();
        if (data.Read())
        {
            if (Convert.ToInt32(TextBox4.Text) > Convert.ToInt32(data[0]))
            {
                Response.Write("<script> alert('Insufficient Balance.');window.location.href='Transfer.aspx'; </script>");
            }
            else
            {
                con.Close();
                con.Open();
                string query = "insert into Transactions(Accountid, Name,Amount,TransactionType)values('" + Session["id"] + "','" + DropDownList1.SelectedValue + "','" + TextBox4.Text + "','" + "Debit" + "') ";
                string query2 = "update AccountDetails set AccountBalance = AccountBalance- '" + TextBox4.Text + "' where AccountUserId='" + Session["id"] + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                Response.Write("<script> alert('Money sent Successfully');window.location.href='Home.aspx';</script>");
            }
            con.Close();
        }

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string cs = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Mbank.mdf;Integrated Security=True";
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string query = "select * from Payees where AccountHolderName='" + DropDownList1.SelectedValue + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader data = cmd.ExecuteReader();
        Response.Write("0");
        if (data.Read())
        {
            Response.Write("1");
            TextBox2.Text = data[3].ToString();
            TextBox3.Text = data[4].ToString();
        }
        con.Close();
    }
}