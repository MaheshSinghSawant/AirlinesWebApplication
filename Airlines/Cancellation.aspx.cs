using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Cancellation : System.Web.UI.Page
{
    int ID1;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //HttpCookie ccc = Request.Cookies["AC"];
        //HttpCookie aa = Request.Cookies["ABC"];
        //string ID = aa.Values["ID"];
        //ID1 = Convert.ToInt32(ID);
        string ovr;
        //string clas = ccc.Values["class1"];

        SqlConnection con;        
        SqlCommand cmd;
        SqlCommand cmd1;
        SqlCommand cmd2;
        SqlDataReader dr;
        int PNR = Convert.ToInt32(TextBox1.Text);
        string str = "delete from Ticket_info where PNR=" + PNR;
        string st = "select Id,Type_seat from Ticket_info where PNR=" + PNR;
        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        con.Open();
        
        cmd1 = new SqlCommand(st, con);
        cmd1.ExecuteNonQuery();
        dr=cmd1.ExecuteReader();
        string ID=" ";
        string clas=" ";
        while (dr.Read())
        {
            ID = dr["Id"].ToString();
            clas = dr["Type_seat"].ToString();
        }

        int ID1 = Convert.ToInt32(ID);
        dr.Close();
        if (clas == "First")
        {
            ovr = "update Flight_details set A_Fclass = A_Fclass+1 where ID=" + ID1;
        }
        else if (clas == "Economy")
        {
            ovr = "update Flight_details set A_Eclass = A_Eclass+1 where ID=" + ID1;
        }
        else
        {
            ovr = "update Flight_details set A_Bclass = A_Bclass+1 where ID=" + ID1;
        }
        cmd2 = new SqlCommand(ovr, con);
        cmd2.ExecuteNonQuery();
        cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
    }
}