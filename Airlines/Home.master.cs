using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Menu2_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        con.Open();
        cmd = new SqlCommand("Select UserName,Password from Registration where UserName ='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Response.Redirect("Log-in1.aspx?username="+TextBox1.Text);
        }
        else
        {
            Label1.Text = "* Username and password do not match";
        }
       
        con.Close();
    }
}
