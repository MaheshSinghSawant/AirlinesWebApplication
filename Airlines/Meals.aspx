<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Meals.aspx.cs" Inherits="Meals" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" style="font-size: x-large">
        <b>Meals: </b>
    </p>
    <p align="left" style="font-size: x-large">
        FlyDirect&nbsp; Airlines does not guarantee food free of peanuts or seafood products, 
        or that allergens won&#39;t be present in the food or snacks served on board. While 
        some of our menus contain almonds, green peas’ etc. additionally, other guests 
        may bring peanuts on board and therefore we cannot guarantee that our guests 
        will not be exposed to peanuts during their flight. Our Airlines strongly 
        encourages guests to take all necessary medical precautions to prepare for the 
        possibility of exposure.
    </p>
    <p align="left">
        &nbsp;</p>
    <p align="left" style="font-size: x-large">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Assistance.aspx">Go Back</asp:HyperLink>
    </p>
</asp:Content>

