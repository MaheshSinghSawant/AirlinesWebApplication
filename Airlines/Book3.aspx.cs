using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Book3 : System.Web.UI.Page
{
    string clas;
    int ID1;
    string insertString,ovr;
    TextBox txt = new TextBox();
    TextBox txt2 = new TextBox();

    Label tp = new Label();
    Label l = new Label();
    Label l2 = new Label();

    Label l3 = new Label();
    Label l4 = new Label();
    
    SqlConnection con;
    SqlCommand cmd;
    SqlCommand cmd1;
    SqlCommand cmd2;
    SqlDataReader dr;
    
    int res;  
    
    public int N
    {
        get
        {
            if (ViewState["N"] == null)
                ViewState["N"] = res;
            return (int)ViewState["N"];
        }
        set { ViewState["N"] = value; }
    }

    public void decelerate()
    {
        this.N = this.N - 1;
    }


    protected void Page_Load(object sender, EventArgs e)
    {           
        HttpCookie ccc = Request.Cookies["AC"];
        HttpCookie aa = Request.Cookies["ABC"];
        string origin1 = ccc.Values["origin"];
        string destination1 = ccc.Values["destination"];
        string ad = ccc.Values["adult"];
        string ch = ccc.Values["child"];
        string date3 = ccc.Values["date1"];
        clas = ccc.Values["class1"];
        string ID = aa.Values["ID"];
        ID1 = Convert.ToInt32(ID);

        int adt = Convert.ToInt32(ad);
        int chd = Convert.ToInt32(ch);
        res = adt + chd;

        con = new SqlConnection(ConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
        con.Open();          
               
        tp.Width = 100;
        tp.Height = 5;

        l4.Width = 290;
        l4.Height = 10;
        l4.Text = "Enter Your Details Here";
        Form.Controls.Add(l4);       

        Form.Controls.Add(tp);

        txt.Width = 100;
        txt.Height = 10;
        l.Width = 100;
        l.Height = 10;
        l.Text = "FName";
        Form.Controls.Add(l);
        Form.Controls.Add(txt);
        Form.Controls.Add(tp);

        txt2.Width = 100;
        txt2.Height = 10;
        l2.Width = 100;
        l2.Height = 10;
        l2.Text = "LName";
        Form.Controls.Add(l2);
        Form.Controls.Add(txt2);
        Form.Controls.Add(tp);
        l3.Width = 1300;
        l3.Height = 10;

        Form.Controls.Add(l3);
     }   

   

    protected void Button1_Click(object sender, EventArgs e)
    {
           
        if (N <= 0)
        {
            Response.Redirect("Home.aspx");           
                        
        }
        else
        {
        this.decelerate();
        insertString = "insert into Ticket_info(Id,Type_seat,FName,LName) values ("+ID1+",'"+clas+"','" + txt.Text + "','" + txt2.Text + "')";
        cmd1 = new SqlCommand(insertString, con);
        cmd1.ExecuteNonQuery();
        
        if (clas == "First")
        {
            ovr = "update Flight_details set A_Fclass = A_Fclass-1 where ID=" + ID1;
        }
        else if (clas == "Economy")
        {
            ovr = "update Flight_details set A_Eclass = A_Eclass-1 where ID=" + ID1;
        }
        else
        {
            ovr = "update Flight_details set A_Bclass = A_Bclass-1 where ID=" + ID1;
        }
            string PNR=" ";
            string o="select PNR from Ticket_info where Id="+ID1;
            cmd = new SqlCommand(o, con);
            cmd.ExecuteNonQuery();
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                PNR = dr["PNR"].ToString();
            }            
            
            Label2.Text = PNR;
            dr.Close();
        cmd2 = new SqlCommand(ovr, con);
        cmd2.ExecuteNonQuery();
        txt.Text = " ";
        txt2.Text = " ";
       
            
        }
        
    }

   
    }
