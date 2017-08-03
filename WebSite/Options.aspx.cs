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
        
        if (Session["Username"] != null)
        {
            string un = Request.QueryString.ToString();
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
            conn.Open();
            string checkName = "select Name from LoginTable where UserName = '" + un + "' ";
            SqlCommand com = new SqlCommand(checkName, conn);
            string name = com.ExecuteScalar().ToString();
            conn.Close();
            welcomeNote.Text = "Welcome " + name;
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PaperPublished.aspx?" + Request.QueryString.ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("WorkshopConducted.aspx?" + Request.QueryString.ToString());
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("WorkshopAttended.aspx?" + Request.QueryString.ToString());
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("IndustrialVisit.aspx?" + Request.QueryString.ToString());
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Patent.aspx?" + Request.QueryString.ToString());
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Change Password.aspx?" + Request.QueryString.ToString());
    }

    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Change Password.aspx?" + Request.QueryString.ToString());
    }

    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Redirect("Change Password.aspx?" + Request.QueryString.ToString());
    }
}
