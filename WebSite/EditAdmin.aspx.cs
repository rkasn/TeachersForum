using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class EditAdmin : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDetails();
        }
        HyperLink1.NavigateUrl= "~/Admin.aspx?" + Request.QueryString.ToString();
    }

    protected void BindDetails()
    {
        Con.Open();
        string SelectQuery = "SELECT * FROM LoginTable";
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
        SqlDataAdapter SelectDA = new SqlDataAdapter(SelectCmd);
        DataSet SelectDS = new DataSet();
        SelectDA.Fill(SelectDS);
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

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        LblResult.Text = "";
        GridView1.EditIndex = -1;
        BindDetails();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        LblResult.Text = "";
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
        Con.Open();
        string DeleteQuery = "DELETE FROM LoginTable WHERE ID=" + ID;
        SqlCommand DeleteCmd = new SqlCommand(DeleteQuery, Con);
        int result = DeleteCmd.ExecuteNonQuery();
        Con.Close();
        if (result == 1)
        {
            BindDetails();
            LblResult.Text = "Details Deleted Successfully";
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        LblResult.Text = "";
        GridView1.EditIndex = e.NewEditIndex;
        BindDetails();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        LblResult.Text = "";
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
        TextBox TxtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtName");
        TextBox TxtUserName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtUserName");
        TextBox TxtEmail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEmail");
        Con.Open();

        string user = TxtUserName.Text;
        string checkUser = "select count(*) from LoginTable where UserName = '" + user + "' AND ID <>'"+ ID +"'";
        SqlCommand com = new SqlCommand(checkUser, Con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        
        if (temp == 1)
        {
            LblResult.Text = "User with User Name '" + user + "' already exits";
        }
        else
        {
            string UpdateQuery = "UPDATE LoginTable SET Name='" + TxtName.Text + "',UserName='" + TxtUserName.Text + "',Email='" + TxtEmail.Text + "' WHERE ID=" + ID;
            SqlCommand UpdateCmd = new SqlCommand(UpdateQuery, Con);
            UpdateCmd.ExecuteNonQuery();
            Con.Close();
            LblResult.Text = "Details Updated Successfully";
            GridView1.EditIndex = -1;
            BindDetails();
        }
        Con.Close();
    }
}