
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Book11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Book_Click(object sender, EventArgs e)
    {
        HttpCookie c = new HttpCookie("AC");
        c.Values.Add("origin", DropDownList1.Text);
        c.Values.Add("destination", DropDownList2.Text);
        c.Values.Add("date1", TextBox3.Text);

        c.Values.Add("class1", DropDownList3.Text);
        c.Values.Add("adult", DropDownList4.Text);
        c.Values.Add("child", DropDownList5.Text);
        c.Values.Add("infant", DropDownList6.Text);

        Response.Cookies.Add(c);
        Response.Redirect("Book22.aspx");
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
