using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Change_Password : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
        conn.Open();
        string checkPassword = "select Password from LoginTable where UserName = '" + Request.QueryString.ToString() + "'";
        SqlCommand passCom = new SqlCommand(checkPassword, conn);
        string password = passCom.ExecuteScalar().ToString();
        conn.Close();

        if (password == TextBoxOP.Text)
        {
            if (TextBoxNP.Text == TextBoxCNP.Text)
            {
                conn.Open();
                string changePassword = "UPDATE LoginTable SET Password = '" + TextBoxNP.Text + "' where UserName = '" + Request.QueryString.ToString() + "'";
                SqlCommand Cpass = new SqlCommand(changePassword, conn);
                Cpass.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password Successfully Changed');</script>");
                conn.Close();
                Session.RemoveAll();
                Response.Redirect("Login.aspx");
            }
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Old Password Donot Match');</script>");
        }
    }
}