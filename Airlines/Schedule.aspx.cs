using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Schedule : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie cc = Request.Cookies["AC"];
        string origin1 = cc.Values["origin"];
        string destination1 = cc.Values["destination"];

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString); ;
        string str;
        
            str = "select f.Fl_no, fd.Date, f.D_time, f.A_time, f.Origin,f.Destn,f.Days,f.P_Fclass,f.P_Bclass,f.P_Eclass from Flights as f,Flight_details as fd where f.origin = '" + origin1 + "' and f.Destn = '" + destination1 + "' and f.Fl_no=fd.Fl_no";
            con.Open();
        
        SqlCommand cmd = new SqlCommand(str, con);
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
}