using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Drawing;
using System.Data.SqlClient;

public partial class Payment : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (Calendar1.SelectedDate > DateTime.Now)
        {
            Txtdate.Enabled = true;
            Txtdate.Text = Calendar1.SelectedDate.ToLongDateString();
        }
        else
        {
            Txtdate.Text = "";
        }
    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date < DateTime.Now.Date)
        {
            e.Cell.Enabled = false;
            e.Cell.BackColor = Color.White;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "You Have successfully Booked Your ticket(s)";          
        Response.Redirect("Book3.aspx");
    }
}