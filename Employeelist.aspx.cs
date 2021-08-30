using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Employeelist : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cmd;
    string st = "";
    string con = "";
    SqlCommandBuilder cmdb;
    DataTable dt;
    DataRow drw;
    SqlDataAdapter sqlda;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Vikas\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        db = new SqlConnection(con);
        db.ConnectionString = con;
        db.Open();
        Label2.Text = "";
        st = "select * from Employee";
        cmd = new SqlCommand(st, db);
        sqlda = new SqlDataAdapter(cmd);
        cmdb = new SqlCommandBuilder(sqlda);
        sqlda.Fill(ds, "Employee");
        if (Page.IsPostBack == false)
        {
            GridView1.DataSource = ds;
            GridView1.DataMember = "Employee";
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int no;
        dt = ds.Tables["Employee"];
        no = e.RowIndex;
        drw = dt.Rows[no];
        drw.Delete();
        sqlda.Update(ds, "Employee");
        GridView1.DataSource = ds;
        GridView1.DataMember = "Employee";
        GridView1.DataBind();
        Label2.Text = "Record Deleted";
        Label2.ForeColor = Color.Green;

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow grw;
        grw = GridView1.Rows[e.RowIndex];
        dt = ds.Tables["Employee"];
        drw = dt.Rows[e.RowIndex];
        drw.BeginEdit();
        drw[1] = (((TextBox)(grw.Cells[3].Controls[0])).Text);
        drw[1] = (((TextBox)(grw.Cells[3].Controls[0])).Text);
        drw[1] = (((TextBox)(grw.Cells[3].Controls[0])).Text);
        drw.EndEdit();
        GridView1.EditIndex = -1;
        sqlda.Update(ds, "Employee");
        GridView1.DataSource = ds;
        GridView1.DataMember = "Employee";
        GridView1.DataBind();
        Label2.Text = "Record Updated";
        Label2.ForeColor = Color.Green;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = ds;
        GridView1.DataMember = "Employee";
        GridView1.DataBind();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GridView1.DataSource = ds;
        GridView1.DataMember = "Employee";
        GridView1.DataBind();
    }
}