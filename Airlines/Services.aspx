<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" style="font-size: x-large">
        Planning your journey has never been so easy. Go through our travel assistance 
        section to get all your queries answered.</p>
    <p align="left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Baggage.aspx">Baggage</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Tracer.aspx">Baggage Tracer</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Assistance.aspx">Special Assistance</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Meals.aspx">Special Meals</asp:HyperLink>
    </p>
</asp:Content>

