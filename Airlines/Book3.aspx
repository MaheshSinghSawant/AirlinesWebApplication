<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Book3.aspx.cs" Inherits="Book3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="center">
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Click to Enter Details Of Each Person And Proceed" 
            onclientclick="msg();" BackColor="#000066" ForeColor="Aqua" />
    </p>
    <p align="center">
        &nbsp;</p>
    <p align="center">
        &nbsp;</p>
    <p align="left">
        <asp:Label ID="Label1" runat="server" Text="Your PNR Number  :  " 
            Font-Size="X-Large" ForeColor="Blue"></asp:Label>
&nbsp;
        <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
<p align="left">
        <asp:Label ID="Label3" runat="server" Text="Please Make a Note Of This Number" 
            Font-Size="X-Large" ForeColor="Blue"></asp:Label>
</p>
    <p align="left" style="color: #FF0000">
        * If PNR Number is Lost do Contact Us</p>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Path="JScript2.js" />
            </Scripts>
        </asp:ScriptManager>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

