<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LogBill.aspx.cs" Inherits="LogBill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left">
        <asp:Label ID="Label7" runat="server" Text="Fare"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label1" runat="server" Text="Total Cost Of Adults"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        INR&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label3" runat="server" Text="Total Cost of Children"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        INR&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
    </p>
    <p align="left">
        &nbsp;</p>
    <p align="left">
        <asp:Label ID="Label8" runat="server" Text="Tax"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label9" runat="server" Text="Service Tax"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        :&nbsp;&nbsp;&nbsp;&nbsp; INR&nbsp;&nbsp;
        <asp:Label ID="Label12" runat="server" Text="1891"></asp:Label>
    </p>
    <p align="left">
        &nbsp;</p>
    <p align="left">
        <asp:Label ID="Label10" runat="server" Text="Fees"></asp:Label>
&nbsp;&nbsp;&nbsp;
    </p>
    <p align="left">
        <asp:Label ID="Label11" runat="server" Text="Passenger Serice Fees"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp; 
        INR&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label13" runat="server" Text="588"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label14" runat="server" Text="User Developmet Fee"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; 
        INR&nbsp;&nbsp;
        <asp:Label ID="Label15" runat="server" Text="2650"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label16" runat="server" Text="Other Charges and Taxes"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp; INR&nbsp;&nbsp;
        <asp:Label ID="Label17" runat="server" Text="552"></asp:Label>
    </p>
    <p align="left">
&nbsp;&nbsp;&nbsp;</p>
    <p align="left">
        <asp:Label ID="Label5" runat="server" Text="Total  Trip Cost"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; INR&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    </p>
    <p align="left">
        <asp:Label ID="Label18" runat="server" Text="(including Fare,Tax and Fees)"></asp:Label>
    </p>
    <p align="left">
        &nbsp;</p>
    <p align="left">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Make Payment" BackColor="#000066" ForeColor="Aqua" />
    </p>
</asp:Content>



