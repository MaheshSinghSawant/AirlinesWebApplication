<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Chairmanmsg.aspx.cs" Inherits="Chairmanmsg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" style="font-size: x-large">
        Dear Guest,
    </p>
    <p class="style2" style="font-size: x-large">
        FlyDirect Airlines continues to offer multiple frequencies across major metros and 
        also connects some unique destinations not served by any other airline.
        I would like to take this opportunity to thank you for your continued support 
        and for staying with us and helping us to improve. If you have a thought to 
        share do write to me directly at <a href="mailto:chairman@indianair.com">
        chairman@FlyDirect com</a>.
    </p>
    <p align="left" style="font-size: x-large">
        Warm personal regards,
    </p>
    <p align="left" style="font-size: x-large">
        M.Das, 
    </p>
    <p align="left" style="font-size: x-large">
        Chairman
    </p>
    <p align="left" style="font-size: x-large">
        FlyDirect Airlines Limited
    </p>
    <p align="left">
        &nbsp;</p>
    <p align="left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/About_Us.aspx">Go Back</asp:HyperLink>
    </p>
</asp:Content>

