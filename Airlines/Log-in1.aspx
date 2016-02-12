<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Log-in1.aspx.cs" Inherits="Log_in1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" style="font-size: x-large">
        Welcome&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        ,</p>
    <p align="left" style="font-size: x-large">
        &nbsp;</p>
    <p align="left" style="font-size: x-large">
        Book Your Ticket Here and Enjoy our Special Rates for the Registered 
        Members.....</p>
    <p align="left" style="font-size: x-large">
        &nbsp;</p>
    <p align="center" style="font-size: x-large">
        <asp:Button ID="Button1" runat="server" BackColor="#000066" ForeColor="Aqua" 
            onclick="Button1_Click" Text="Click Here To Book Ticket" />
    </p>
    <p align="left" style="font-size: x-large">
        &nbsp;</p>
    <p align="left" style="font-size: large; color: #FF0000;">
        *Your will be Logged out automatically on closing this page.....</p>
</asp:Content>

