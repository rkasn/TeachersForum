using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class View : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Admin.aspx?" + Request.QueryString.ToString();

        string un = Request.QueryString.ToString();
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
        conn.Open();
        string checkName = "select Name from LoginTable where UserName = '" + un + "' ";
        SqlCommand com = new SqlCommand(checkName, conn);
        string name = com.ExecuteScalar().ToString();
        conn.Close();
        LblName.Text = name.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PPView.aspx?" + Request.QueryString.ToString());
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("WCView.aspx?" + Request.QueryString.ToString());
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("WAView.aspx?" + Request.QueryString.ToString());
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("IVView.aspx?" + Request.QueryString.ToString());
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("PatView.aspx?" + Request.QueryString.ToString());
    }
}