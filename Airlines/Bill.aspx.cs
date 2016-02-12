using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Bill : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand cmd;

        HttpCookie ca = Request.Cookies["AC"];       
        string a = ca.Values["adult"];
        string b = ca.Values["child"];
        string clas = ca.Values["class1"];
        string origin1 = ca.Values["origin"];
        string destination1 = ca.Values["destination"];

        int ad = Convert.ToInt32(a);
        int ch = Convert.ToInt32(b);
        string str,price=" ";
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        con.Open();
        str = "select * from Flights where origin = '" + origin1 + "' and Destn = '" + destination1 + "'";
             
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            if (clas == "First")
            {
                price = dr["P_Fclass"].ToString();
            }
            else if (clas == "Business")
            {
                price = dr["P_Bclass"].ToString();
            }
            else
            {
                price = dr["P_Eclass"].ToString();
            }
        }
        int p = Convert.ToInt32(price);
        int adult = ad * p;
        int child = ch * p;
        Label2.Text = adult.ToString();
        Label4.Text = child.ToString();

        int res = Convert.ToInt32(Label2.Text) + Convert.ToInt32(Label4.Text) + Convert.ToInt32(Label12.Text) + Convert.ToInt32(Label13.Text) + Convert.ToInt32(Label15.Text) + Convert.ToInt32(Label17.Text);
        Label6.Text = res.ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    }
}