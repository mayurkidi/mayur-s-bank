using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class Withdraw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["otp"] = null;
        if (Session["id"] == null)
        {
            Response.Write("<script> alert('Please login first.');window.location.href='Loginpage.aspx'; </script>");
        }
    }

    protected void btnWithdraw_Click(object sender, EventArgs e)
    {
        string email = "";
        int otp = 0;
        Session["amount"] = tbAmount.Text;
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
                Session["otpfor"] = "withdraw";
                Response.Write("<script> window.location.href='OTPVerification.aspx'; </script>");
            }
            catch (Exception ee)
            {
                Response.Write(ee);
            }

        }
    }
}