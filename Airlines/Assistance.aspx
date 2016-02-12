<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Assistance.aspx.cs" Inherits="Assistance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            font-family: "Times New Roman", Times, serif;
            font-size: x-large;
            color: #000000;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" class="style3">
        Special Assistance :</p>
    <p align="left" 
        
        style="font-family: 'Times New Roman', Times, serif; font-size: x-large; font-style: normal; font-variant: normal; color: #000000">
        We, at FlyDirect Airlines Ltd. are committed to providing a seamless travel 
        experience to our guests who require special assistance. This commitment is 
        clearly established by the fact that our personnel at various functional areas 
        are well trained to handle your special needs. Special care is taken even while 
        assigning a seat on board the flight. Guests with special needs are assigned 
        seats closer to the exits and lavatories so that they can board, use facilities 
        and disembark in comfort. We will be better able to serve you if you inform us 
        about your special needs within a reasonable time before travel and preferably 
        at the time of booking.</p>
    <p align="left">
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Disabilities.aspx" 
            Font-Size="X-Large" ForeColor="Black">Guest with Disabilities and/or Reduced Mobility</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Infants.aspx" 
            Font-Size="X-Large" ForeColor="Black">Travel with Infants</asp:HyperLink>
    </p>
    <p align="left">
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Needs.aspx" 
            Font-Size="X-Large" ForeColor="Black">Other Special Needs - Wheel Chair / Stretcher</asp:HyperLink>
    </p>
    <p align="left">
        &nbsp;</p>
</asp:Content>

