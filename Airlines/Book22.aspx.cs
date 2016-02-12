using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Book22 : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie xt = new HttpCookie("ABC");
        HttpCookie cc = Request.Cookies["AC"];
        
        string origin1 = cc.Values["origin"];
        string destination1 = cc.Values["destination"];
        string date3 = cc.Values["date1"];
        
        string clas = cc.Values["class1"];
        int sts=(Convert.ToInt32(cc.Values["adult"])+Convert.ToInt32(cc.Values["child"]));
        Label1.Text = cc.Values["adult"];
        Label2.Text = cc.Values["child"];
        Label3.Text = cc.Values["infant"];


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        string str;
        if(clas=="First")
        {
        str = "select f.Fl_no, fd.Date, f.D_time, f.A_time, f.Origin,f.Destn,f.Days,f.P_Fclass from Flights as f,Flight_details as fd where fd.A_Fclass >= "+sts+" and f.origin = '" + origin1 + "' and f.Destn = '" + destination1 + "' and fd.Date = '"+ date3 +"' and f.Fl_no=fd.Fl_no";
        con.Open();
        }
        else if (clas=="Business")
        {
            str = "select f.Fl_no, fd.Date, f.D_time, f.A_time, f.Origin,f.Destn,f.Days,f.P_Bclass from Flights as f,Flight_details as fd where fd.A_Bclass >= " + sts + " and f.origin = '" + origin1 + "' and f.Destn = '" + destination1 + "' and fd.Date = '" + date3 + "' and f.Fl_no=fd.Fl_no";
        con.Open();
        }
        else
        {
            str = "select f.Fl_no, fd.Date, f.D_time, f.A_time, f.Origin,f.Destn,f.Days,f.P_Eclass from Flights as f,Flight_details as fd where fd.A_Eclass >= " + sts + " and f.origin = '" + origin1 + "' and f.Destn = '" + destination1 + "' and fd.Date = '" + date3 + "' and f.Fl_no=fd.Fl_no";
            con.Open();
        }

        SqlDataReader dr;
        SqlCommand cmd = new SqlCommand(str, con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        
        cmd.ExecuteNonQuery();
            dr = cmd.ExecuteReader();
         if (dr.Read())
        {
            dr.Close();
             da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
            con.Open();

            string ID = " ";
            string over = "select fd.ID from Flight_details fd, Flights f where f.Origin='" + origin1 + "' and f.Destn='" + destination1 + "' and f.Fl_no=fd.Fl_no and fd.Date='" + date3 + "'";
            cmd = new SqlCommand(over, con);
            cmd.ExecuteNonQuery();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                ID = (dr["ID"]).ToString();
            }

            xt.Values.Add("ID", ID);
            Response.Cookies.Add(xt);
        }
        else
        {
            Label4.Text = "Sorry no flight available";
           
        }
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("LogBill.aspx");

    }
   
}