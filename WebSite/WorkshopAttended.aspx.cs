using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class WorkshopAttended : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\MainDatabase.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Options.aspx?" + Request.QueryString.ToString();
        if (!IsPostBack)
        {
            BindDetails();
        }
    }

    protected void BindDetails()
    {
        Con.Open();
        string SelectQuery = "SELECT * FROM WorkAttd WHERE UserName='" + Request.QueryString.ToString() + "'";
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
        GridView1.EditIndex = -1;
        BindDetails();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
        Con.Open();
        string DeleteQuery = "DELETE FROM WorkAttd WHERE ID=" + ID;
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
        GridView1.EditIndex = e.NewEditIndex;
        BindDetails();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int ID = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["ID"].ToString());
        TextBox TxtName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtName");
        TextBox TxtDomain = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtDomain");
        TextBox TxtVenue = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtVenue");
        TextBox TxtNOD = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtNOD");
        TextBox TxtStartDate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtStartDate");
        TextBox TxtEndDate = (TextBox)GridView1.Rows[e.RowIndex].FindControl("TxtEndDate");
        Con.Open();
        string UpdateQuery = "UPDATE WorkAttd SET Name='" + TxtName.Text + "',Domain='" + TxtDomain.Text + "',Venue='" + TxtVenue.Text + "',NOD='" + TxtNOD.Text + "',StartDate='" + TxtStartDate.Text + "',EndDate='" + TxtEndDate.Text + "' WHERE ID=" + ID;
        SqlCommand UpdateCmd = new SqlCommand(UpdateQuery, Con);
        UpdateCmd.ExecuteNonQuery();
        Con.Close();
        LblResult.Text = "Details Updated Successfully";
        GridView1.EditIndex = -1;
        BindDetails();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("AddNew"))
        {
            TextBox TxtName = (TextBox)GridView1.FooterRow.FindControl("TxtFtrName");
            TextBox TxtDomain = (TextBox)GridView1.FooterRow.FindControl("TxtFtrDomain");
            TextBox TxtVenue = (TextBox)GridView1.FooterRow.FindControl("TxtFtrVenue");
            TextBox TxtNOD = (TextBox)GridView1.FooterRow.FindControl("TxtFtrNOD");
            TextBox TxtStartDate = (TextBox)GridView1.FooterRow.FindControl("TxtFtrStartDate");
            TextBox TxtEndDate = (TextBox)GridView1.FooterRow.FindControl("TxtFtrEndDate");
            Con.Open();
            string InsertQuerry = "INSERT INTO WorkAttd(UserName,Name,Domain,Venue,NOD,StartDate,EndDate) VALUES('" + Request.QueryString.ToString() + "','" + TxtName.Text + "','" + TxtDomain.Text + "','" + TxtVenue.Text + "','" + TxtNOD.Text + "','" + TxtStartDate.Text + "','" + TxtEndDate.Text + "')";
            SqlCommand InsertCmd = new SqlCommand(InsertQuerry, Con);
            int result = InsertCmd.ExecuteNonQuery();
            Con.Close();
            if (result == 1)
            {
                BindDetails();
                LblResult.Text = "Details Inserted Successfully";
            }
            else
            {
                LblResult.Text = "Details Not Inserted";
            }
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}