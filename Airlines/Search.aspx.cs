using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie c1 = new HttpCookie("AC");
        c1.Values.Add("origin", DropDownList1.Text);
        c1.Values.Add("destination", DropDownList2.Text);

        Response.Cookies.Add(c1);


        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Schedule.aspx");
    }
}