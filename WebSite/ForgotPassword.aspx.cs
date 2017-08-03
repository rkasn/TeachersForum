using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Login.aspx?" + Request.QueryString.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
        conn.Open();
        string user = TxtUserName.Text;
        string checkUser = "select count(*) from LoginTable where UserName = '" + user + "' ";
        SqlCommand com = new SqlCommand(checkUser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkEmail = "select Email from LoginTable where UserName = '" + TxtUserName.Text + "'";
            SqlCommand emailCom = new SqlCommand(checkEmail, conn);
            string email = emailCom.ExecuteScalar().ToString();
            conn.Close();
            if (email == TxtEmail.Text)
            {
                //Send Mail
                Random random = new Random();
                const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
                string newpass = new string(Enumerable.Repeat(chars, 8).Select(s => s[random.Next(s.Length)]).ToArray());

                conn.Open();
                string changePassword = "UPDATE LoginTable SET Password = '" + newpass + "' where UserName = '" + user + "'";
                SqlCommand Cpass = new SqlCommand(changePassword, conn);
                Cpass.ExecuteNonQuery();
                conn.Close();

                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("bmsce46@gmail.com");
                msg.To.Add(email);
                msg.Subject = "Password changed";
                msg.Body = "Your Password has been changed\n User Name: " + user + "\n Password: " + newpass;
                msg.IsBodyHtml = true;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                NetworkCredential cred = new NetworkCredential();
                cred.UserName = "bmsce46@gmail.com";
                cred.Password = "sherlockholmes";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = cred;
                smtp.Port = 587;
                smtp.EnableSsl = true;
                try
                {
                    smtp.Send(msg);
                    LblResult.ForeColor = System.Drawing.Color.Green;
                    LblResult.Text = "Email Sent";
                }
                catch (Exception ex)
                {
                    LblResult.Text = ex.ToString();
                }
            }
            else
            {
                LblResult.ForeColor = System.Drawing.Color.Red;
                LblResult.Text = "Wrong Email";
            }
        }
        else
        {
            LblResult.ForeColor = System.Drawing.Color.Red;
            LblResult.Text = "Wrong User Name";
        }
    }
}