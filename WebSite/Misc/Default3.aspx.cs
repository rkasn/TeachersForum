using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

 

    protected void Button1_Click(object sender, EventArgs e)
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("bmsce46@gmail.com");
        msg.To.Add("bmsce46@gmail.com");
        msg.Body = "helo!";
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
            Lbl.Text = "Email Sent";
        }
        catch (Exception ex)
        {
            Lbl.Text = ex.ToString();
        }
    }
}