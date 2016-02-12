<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About_Us.aspx.cs" Inherits="About_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-weight: bold; font-style: normal; font-variant: normal; text-transform: none; color: #000000; line-height: normal">
        &nbsp;Welcome to FlyDirect Airlines, where you are made to feel like a guest and not just a 
        passenger. As our esteemed guest you can experience our Airlines in three unique 
        classes of service - First class, Business class and Economy class.</p>
    <p align="left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Chairmanmsg.aspx" 
            BorderColor="White" Font-Size="X-Large" 
            ForeColor="Black">Chairman’s Message</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Vision.aspx" 
            Font-Size="X-Large" ForeColor="Black">Vision and Values</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Charter.aspx" 
            Font-Size="X-Large" ForeColor="Black" 
            BorderColor="White"> Citizen&#39;s Charter</asp:HyperLink>
    </p>
    <p>
&nbsp;</p>
</asp:Content>

