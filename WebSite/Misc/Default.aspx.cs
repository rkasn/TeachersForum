using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\MainDatabase.mdf;Integrated Security = True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            BindDetails();
        }
    }

    protected void BindDetails()
    {
        Con.Open();
        string SelectQuery = "SELECT * FROM Employ";
        SqlCommand SelectCmd = new SqlCommand(SelectQuery, Con);
        SqlDataAdapter SelectDA = new SqlDataAdapter(SelectCmd);
        DataSet SelectDS = new DataSet();
        SelectDA.Fill(SelectDS);
        Con.Close();
        if(SelectDS.Tables[0].Rows.Count > 0)
        {
            GvDetails.DataSource = SelectDS;
            GvDetails.DataBind();
        }
        else
        {
            SelectDS.Tables[0].Rows.Add(SelectDS.Tables[0].NewRow());
            GvDetails.DataSource = SelectDS;
            GvDetails.DataBind();
            int ColumnCount = GvDetails.Rows[0].Cells.Count;
            GvDetails.Rows[0].Cells.Clear();
            GvDetails.Rows[0].Cells.Add(new TableCell());
            GvDetails.Rows[0].Cells[0].ColumnSpan = ColumnCount;
            GvDetails.Rows[0].Cells[0].Text = "No Records Found";
        }
    }

    protected void GvDetails_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GvDetails.EditIndex = -1;
        BindDetails();
    }

    protected void GvDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int UserId = Convert.ToInt32(GvDetails.DataKeys[e.RowIndex].Values["UserId"].ToString());
        //string UserName = GvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();
        Con.Open();
        string DeleteQuery = "DELETE FROM Employ WHERE UserId =" + UserId;
        SqlCommand DeleteCmd = new SqlCommand(DeleteQuery, Con);
        int result =DeleteCmd.ExecuteNonQuery();
        Con.Close();
        if(result == 1)
        {
            BindDetails();
            LblResult.Text = "Details Deleted Successfully";
        }
    }

    protected void GvDetails_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GvDetails.EditIndex = e.NewEditIndex;
        BindDetails();
    }

    protected void GvDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int UserId = Convert.ToInt32(GvDetails.DataKeys[e.RowIndex].Values["UserId"].ToString());
        string UserName = GvDetails.DataKeys[e.RowIndex].Values["UserName"].ToString();
        TextBox TxtCity = (TextBox)GvDetails.Rows[e.RowIndex].FindControl("TxtCity");
        TextBox TxtDesignation = (TextBox)GvDetails.Rows[e.RowIndex].FindControl("TxtDesignation");
        Con.Open();
        string UpdateQuerry = "UPDATE Employ SET City='" + TxtCity.Text + "',Designation='" + TxtDesignation.Text + "' WHERE UserId="+UserId;
        SqlCommand UpdateCmd = new SqlCommand(UpdateQuerry, Con);
        UpdateCmd.ExecuteNonQuery();
        Con.Close();
        LblResult.Text = "Details Updated Successfuly";
        GvDetails.EditIndex = -1;
        BindDetails();
    }

    protected void GvDetails_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("AddNew")) 
        {
            TextBox TxtUserName = (TextBox)GvDetails.FooterRow.FindControl("TxtFtrUserName");
            TextBox TxtCity = (TextBox)GvDetails.FooterRow.FindControl("TxtFtrCity");
            TextBox TxtDesignation = (TextBox)GvDetails.FooterRow.FindControl("TxtFtrDesignation");
            Con.Open();
            string InsertQuerry = "INSERT INTO Employ(UserName,City,Designation) VALUES('" + TxtUserName.Text + "','" + TxtCity.Text + "','" + TxtDesignation.Text + "')";
            SqlCommand InsertCmd = new SqlCommand(InsertQuerry, Con);
            int result = InsertCmd.ExecuteNonQuery();
            Con.Close();
            if(result == 1)
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
}