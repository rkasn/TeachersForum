using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/ForgotPassword.aspx";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
        conn.Open();
        string user = TextBoxUN.Text;
        string checkUser = "select count(*) from LoginTable where UserName = '"+user+"' ";
        SqlCommand com = new SqlCommand(checkUser,conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if(temp == 1)
        {
            conn.Open();
            string checkPassword = "select Password from LoginTable where UserName = '" + TextBoxUN.Text + "'";
            SqlCommand passCom = new SqlCommand(checkPassword, conn);
            string password = passCom.ExecuteScalar().ToString();
            conn.Close();
            if (password == TextBoxPass.Text)
            {
                //Session["New"] = TextBoxUN.Text;
                //Response.Write("Login Successful");
                Session["Username"] = TextBoxUN.Text;
                Response.Redirect("Options.aspx?" + TextBoxUN.Text);
            }
            else
            {
                //Response.Write("Incorrect Password");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password');</script>");
            }
        }
        else
        {
            user = user.ToLower();
            if(user=="admin")
            {
                conn.Open();
                string checkAdminPass = "SELECT Password FROM AdminTable where UserName='" + TextBoxUN.Text + "'";
                SqlCommand adminCom = new SqlCommand(checkAdminPass, conn);
                string adminpass = adminCom.ExecuteScalar().ToString();
                conn.Close();
                if(adminpass==TextBoxPass.Text)
                {
                    Session["Username"] = TextBoxUN.Text;
                    Response.Redirect("Admin.aspx?" + TextBoxUN.Text);
                }
                else
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Incorrect Password');</script>");
                }
            }
            //Response.Write("User Name is Invalid");
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid User Name');</script>");
        }


    }
}