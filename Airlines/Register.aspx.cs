using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataReader dr;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string insertString = "Insert into Registration values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox6.Text + "','"+TextBox5.Text+"','" + TextBox4.Text + "')";
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        con.Open();
        cmd = new SqlCommand(insertString, con);
        cmd.ExecuteNonQuery();
        Label2.Text = "Registered!";
         }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length>=6)
        {
            args.IsValid=true;
        }
    }
}