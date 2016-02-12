<%@ Page Title="" Language="C#" MasterPageFile="~/Home.master" AutoEventWireup="true" CodeFile="Book1.aspx.cs" Inherits="Book1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="style1">
    <tr>
        <td style="width: 435px; color: #FF0000;" align="left">
            *Please Enter the Date in yyyymmdd format without any space<br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" 
            style="border: thin double #000080; width: 500px; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;" 
            bgcolor="#000066" rowspan="5">
            Departure Location&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Bengaluru</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Kolkata</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
            </asp:DropDownList>
&nbsp;<br />
            <br />
            Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;
            <br />
            <br />
            Arrival Location&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Bangaluru</asp:ListItem>
                <asp:ListItem>Ahmedabad</asp:ListItem>
                <asp:ListItem>Delhi</asp:ListItem>
                <asp:ListItem>Kolkata</asp:ListItem>
                <asp:ListItem>Mumbai</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
&nbsp;Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server">
                <asp:ListItem>First</asp:ListItem>
                <asp:ListItem>Business</asp:ListItem>
                <asp:ListItem>Economy</asp:ListItem>
            </asp:DropDownList>
            </td>
        <td align="left" bgcolor="#000066" 
            
            style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;">
            Adult&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left" bgcolor="#000066" 
            
            style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" bgcolor="#000066" 
            
            style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;">
            Child&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList5" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td align="left" bgcolor="#000066" 
            
            style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" bgcolor="#000066" 
            
            style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide;">
            Infant&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList6" runat="server">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td style="border: thin double #000080; color: #00FFFF; font-size: x-large; border-collapse: collapse; empty-cells: hide; height: 78px;" 
            align="center" bgcolor="#000066" colspan="2" width="500">
            <asp:Button ID="Book" runat="server" Text="Book" onclick="Book_Click" 
                BackColor="Aqua" ForeColor="#000066" Height="26px" Width="53px" />
        </td>
    </tr>
    </table>
</asp:Content>

