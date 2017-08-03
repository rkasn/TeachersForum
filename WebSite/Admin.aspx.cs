using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx?" + Request.QueryString);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditAdmin.aspx?" + Request.QueryString);
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("ViewAdmin.aspx?" + Request.QueryString);
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Change Admin Password.aspx?" + Request.QueryString);
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.RemoveAll();
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }
}