<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book22.aspx.cs" Inherits="Book22" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left">
        Your Selected Information:</p>
    <table class="style1">
        <tr>
            <td bgcolor="#000066" 
                style="color: #00FFFF; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                Adult</td>
            <td bgcolor="#000066" 
                style="color: #00FFFF; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                Child</td>
            <td bgcolor="#000066" 
                style="color: #00FFFF; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                Infant</td>
        </tr>
        <tr>
            <td bgcolor="Aqua" 
                
                style="color: #000080; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#000066"></asp:Label>
            </td>
            <td bgcolor="Aqua" 
                
                style="color: #000080; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td bgcolor="Aqua" 
                
                style="color: #000080; font-size: x-large; font-family: 'Times New Roman', Times, serif">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Size="X-Large" ForeColor="Red" 
        Text="Label"></asp:Label>
    <br />
    <p align="left">
        <asp:GridView ID="GridView1" runat="server" BackColor="#000066" 
            Font-Size="X-Large" ForeColor="Aqua">

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
     </p>
<p align="left">
    &nbsp;</p>
<p align="left" style="color: #FF0000">
    *1234567 indicates the Weekdays i.e. 1 will represent Monday and so on......</p>
    <p align="left">
        &nbsp;</p>
<p align="right">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Continue" 
        onclick="Button1_Click" BackColor="#000066" ForeColor="Aqua" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p align="left">
    &nbsp;</p>
</asp:Content>


