using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Admin.aspx?" + Request.QueryString.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
        Con.Open();
        string user = TxtUserName.Text;
        string checkUser = "select count(*) from LoginTable where UserName = '" + user + "' ";
        SqlCommand com = new SqlCommand(checkUser, Con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        Con.Close();
        if (temp ==1)
        {
            LblResult.ForeColor = System.Drawing.Color.Red;
            LblResult.Text = "User with User Name '" + user + "' already exits";
        }
        else
        {
            if(TxtPass.Text==TxtConPass.Text)
            {
                Con.Open();
                string norQuery = "SELECT MAX(ID) FROM LoginTable";
                SqlCommand norCmd = new SqlCommand(norQuery, Con);
                int num = Convert.ToInt32(norCmd.ExecuteScalar().ToString());
                num = num + 1;
                string insertQuery = "INSERT INTO LoginTable(ID,Name,UserName,Email,Password) VALUES('"+ num +"','" + TxtName.Text + "','" + TxtUserName.Text + "','" + TxtEmail.Text + "','" + TxtPass.Text + "')";
                SqlCommand insertCmd = new SqlCommand(insertQuery, Con);
                int result = insertCmd.ExecuteNonQuery();
                if (result == 1)
                {
                    LblResult.ForeColor = System.Drawing.Color.Green;
                    TxtConPass.Text = " ";
                    TxtName.Text = " ";
                    TxtPass.Text = " ";
                    TxtEmail.Text = " ";
                    TxtUserName.Text = " ";
                    LblResult.Text = " ";
                    LblResult.Text = "Registration Successful";
                }
                else
                {
                    LblResult.ForeColor = System.Drawing.Color.Red;
                    TxtConPass.Text = " ";
                    TxtName.Text = " ";
                    TxtPass.Text = " ";
                    TxtEmail.Text = " ";
                    TxtUserName.Text = " ";
                    LblResult.Text = " ";
                    LblResult.Text = "Registration Unsuccessful";
                }
            }
            else
            {
                LblResult.ForeColor = System.Drawing.Color.Red;
                LblResult.Text = "Paswords Do Not Match";
            }
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TxtConPass.Text = " ";
        TxtName.Text = " ";
        TxtPass.Text = " ";
        TxtEmail.Text = " ";
        TxtUserName.Text = " ";
        LblResult.Text = " ";
    }
}