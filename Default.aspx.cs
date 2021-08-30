using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection db;
    SqlCommand cmd;
    string st = "";
    string con = "";
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "";
        Label1.Visible = false;
    }
    protected void Button_Login_Click(object sender, EventArgs e)
    {
        con=@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Vikas\Documents\Visual Studio 2010\WebSites\WebSite1\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        db = new SqlConnection(con);
        db.ConnectionString = con;
        db.Open();
        st="select * from Login where username = '" +TextBoxUsername.Text+"'and password = '"+TextBoxPassword.Text+"'";
            cmd = new SqlCommand(st,db);
        dr=cmd.ExecuteReader();    
        if (dr.HasRows) 
        {  
            Response.Redirect("Homepage.aspx");  
        } 
        else 
        {
            Label1.Visible = true;
            Label1.Text = "Your username and word is incorrect";  
            Label1.ForeColor = System.Drawing.Color.Red;  
        }  
  
  
    }  
}
