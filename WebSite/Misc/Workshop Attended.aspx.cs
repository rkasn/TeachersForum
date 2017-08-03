using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*String n;
        n = TextBox4.Text;
        int x;
        x = Convert.ToInt16(n);

        if (x > 1)
        {
            Label5.Visible = true;
            TextBox5.Visible = true;
            Label6.Visible = true;
            TextBox6.Visible = true;
            Label7.Visible = false;
            TextBox7.Visible = false;
        }*/

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
        {
            Label7.Text = "All Fields Are Compulsory";
        }
        else
        {
            Label7.Text = "";
        }
    }
}