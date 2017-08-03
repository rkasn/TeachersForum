using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;

public partial class WAView : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\MainDatabase.mdf;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/Admin.aspx?" + Request.QueryString.ToString();

        if (!IsPostBack)
        {
            string un = Request.QueryString.ToString();
            SqlConnection Con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Rohan\Desktop\WebSite\App_Data\LoginDatabase.mdf;Integrated Security=True;");
            Con.Open();
            string checkName = "select Name from LoginTable where UserName = '" + un + "' ";
            SqlCommand com = new SqlCommand(checkName, Con);
            string name = com.ExecuteScalar().ToString();
            Con.Close();
            //LblName.Text = name.ToString();
            LblName.Text = "Workshop Attended By " + name.ToString();
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.ClearContent();
        Response.AppendHeader("content-disposition", "attachment; filename=WorkShpAttd.xls");
        Response.ContentType = "aplication/excel";

        StringWriter stringWriter = new StringWriter();
        HtmlTextWriter htmlTextWriter = new HtmlTextWriter(stringWriter);

        GridView1.HeaderRow.BackColor = Color.White;
        GridView1.HeaderRow.ForeColor = Color.Black;

        foreach (TableCell cell in GridView1.HeaderRow.Cells)
        {
            cell.BackColor = Color.White;
        }
        foreach (GridViewRow row in GridView1.Rows)
        {
            row.BackColor = Color.White;
            foreach (TableCell cell in row.Cells)
            {
                if (row.RowIndex % 2 == 0)
                {
                    cell.BackColor = Color.White;
                }
                else
                {
                    cell.BackColor = Color.White;
                }
                cell.CssClass = "textmode";
            }
        }

        GridView1.RenderControl(htmlTextWriter);
        Response.Write(stringWriter.ToString());
        Response.End();
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
    }
}