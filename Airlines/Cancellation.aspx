<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cancellation.aspx.cs" Inherits="Cancellation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <asp:Label ID="Label2" runat="server" 
            Text="Enter Your PNR Number For Cancellation of Ticket" 
            Font-Size="X-Large" ForeColor="Blue"></asp:Label>
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        <asp:Label ID="Label1" runat="server" Text="Enter Your PNR Number" 
            Font-Size="X-Large" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p align="center">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="JScript.js" />
            </Scripts>
        </asp:ScriptManager>
    </p>
    <p align="center">
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Cancel Ticket" 
            onclientclick="show();" BackColor="#000066" ForeColor="Aqua" />
    </p>
</asp:Content>

