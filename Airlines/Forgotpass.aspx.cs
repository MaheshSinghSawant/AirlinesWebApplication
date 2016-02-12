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
    SqlConnection con;
    SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        
        con.Open();
        cmd = new SqlCommand("Select UserName,Email from Registration where UserName ='" + TextBox1.Text + "' AND Email='" + TextBox2.Text + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label2.Text = "An Email has been sent to your email-id informing about the procedure to reset password";
        }
        else
        {
            Label1.Text = "* Username and password do not match";
        }
       
    }
}