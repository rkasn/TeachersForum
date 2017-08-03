using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ViewAdmin : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Admin.aspx?" + Request.QueryString.ToString();
        if (!IsPostBack)
        {
            BindDetails();
        }
    }

    protected void BindDetails()
    {
        Con.Open();
        string SelectQuery = "SELECT * FROM LoginTable";
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
        SqlDataAdapter selectDA = new SqlDataAdapter(SelectCmd);
        DataSet SelectDS = new DataSet();
        selectDA.Fill(SelectDS);
        Con.Close();
        if (SelectDS.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = SelectDS;
            GridView1.DataBind();
        }
        else
        {
            SelectDS.Tables[0].Rows.Add(SelectDS.Tables[0].NewRow());
            GridView1.DataSource = SelectDS;
            GridView1.DataBind();
            int ColumnCount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = ColumnCount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }


    /*protected void Button1_Click(object sender, EventArgs e)
    {
        /*GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        //int ID = gvRow.RowIndex;
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
        Con.Open();
        string SelectQuery = "SELECT UserName FROM LoginTable WHERE ID=" + ID;
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
        string UN = SelectCmd.ExecuteScalar().ToString();
        Con.Close();
        Response.Redirect("View.aspx?"+UN);
    }*/

    protected void GridView1_OnRowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "View")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            //int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
            Con.Open();
            string SelectQuery = "SELECT UserName FROM LoginTable WHERE ID=" + ID;
            SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
            string UN = SelectCmd.ExecuteScalar().ToString();
            Con.Close();
            Response.Redirect("View.aspx?" + UN);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }
}