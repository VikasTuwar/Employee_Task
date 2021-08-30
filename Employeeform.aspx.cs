using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;

public partial class Employeeform : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cmd;
    string st = "";
    string con = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
        Label2.Visible = false;
        if (Page.IsPostBack == false)
        {
            DropDownList1.Items.Add("Department");
            DropDownList1.Items.Add("Developing");
            DropDownList1.Items.Add("Testing");
            DropDownList1.Items.Add("Account");
            DropDownList2.Items.Add("Role");
            DropDownList2.Items.Add("Hr");
            DropDownList2.Items.Add("Teamlead");
            DropDownList2.Items.Add("Projectmanager");
            DropDownList3.Items.Add("Supervisor");
            DropDownList3.Items.Add("Ruchi");
            DropDownList3.Items.Add("Pushpa");
            DropDownList3.Items.Add("Nidhin");
        }
        DropDownList1.AutoPostBack = true;
        DropDownList2.AutoPostBack = true;
        DropDownList3.AutoPostBack = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            con = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Vikas\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
            db = new SqlConnection(con);
            db.ConnectionString = con;
            db.Open();
            st = "insert into Employee values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "','" + TextBox7.Text + "','" + TextBox9.Text + "','" + DropDownList1.SelectedItem + "','" + DropDownList2.SelectedItem + "','" + TextBox6.Text + "','" + TextBox8.Text + "','" + DropDownList3.SelectedItem + "','"+ TextBox10.Text + "') ";
            cmd = new SqlCommand(st, db);
            cmd.ExecuteNonQuery();
            Label2.Visible = true;
            Label2.Text = "Successfully Saved";
            Label2.ForeColor = Color.Blue;

        }
        catch (Exception ex)
        {
            Label2.Visible = true;
            Label2.Text = ex.Message;
            Label2.ForeColor = Color.Red;
        }
    }
  




    protected void Button2_Click1(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox5.Text = "";
        TextBox7.Text = "";
        TextBox9.Text = "";
        TextBox6.Text = "";
        TextBox8.Text = "";
        TextBox10.Text = "";
        DropDownList1.ClearSelection();
        DropDownList2.ClearSelection();
        DropDownList3.ClearSelection();
    }
}