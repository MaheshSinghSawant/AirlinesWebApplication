<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgotpass.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-family: "Showcard Gothic";
            color: #0000FF;
        }
        .style2
        {
            width: 55%;
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
            height: 23px;
        }
        .style5
        {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style1">
        Forgot Password?</p>
    <table class="style2">
        <tr>
            <td class="style5" bgcolor="#000066" style="font-size: x-large; color: #00FFFF">
                Enter Username:</td>
            <td style="text-align: left; font-size: x-large; color: #00FFFF;" 
                bgcolor="#000066">
                <asp:TextBox ID="TextBox1" runat="server" 
                    style="text-align: left; margin-left: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" bgcolor="#000066" style="font-size: x-large; color: #00FFFF">
                Enter Email-ID:</td>
            <td style="text-align: left; font-size: x-large; color: #00FFFF;" 
                bgcolor="#000066">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4" colspan="2" bgcolor="#66FFFF" 
                style="font-size: x-large; color: #00FFFF">
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2" bgcolor="#000066" 
                style="font-size: x-large; color: #00FFFF">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    BackColor="Aqua" ForeColor="#000066" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2" bgcolor="#66FFFF" 
                style="font-size: x-large; color: #00FFFF">
                <asp:Label ID="Label2" runat="server" Text=" " ForeColor="White"></asp:Label>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
</asp:Content>

