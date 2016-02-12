<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule.aspx.cs" Inherits="Schedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="color: #000080">
        Flights available for your Schedule are:</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#000066" 
            Font-Size="X-Large" ForeColor="Aqua">
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p align="left" style="color: #FF0000">
        *1234567 indicates the Weekdays i.e. 1 will represent Monday and so on......</p>
    <p>
        &nbsp;</p>
</asp:Content>

