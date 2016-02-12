<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            font-family: "Showcard Gothic";
            font-size: x-large;
            color: #0000FF;
        }
        .style3
        {
            height: 23px;
        }
        .style4
        {
            text-align: right;
        }
        .style5
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="style2">
        Payment Method</p>
    <table class="style1">
        <tr>
            <td class="style4">
                Select Debit/Credit Card</td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>&lt;Select Card&gt;</asp:ListItem>
                    <asp:ListItem>Mastercard</asp:ListItem>
                    <asp:ListItem>American Express</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                Card Number:<br />
                (Enter 16 digit Card number)</td>
            <td class="style5">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="*Enter 16 digit Card Number" ControlToValidate="TextBox1" 
                    ForeColor="Red" ValidationExpression="\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d\d"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Cvv Password:<br />
                (Enter 4 digit Password)</td>
            <td class="style5">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ErrorMessage="*Enter 4 digit CVV Number" ControlToValidate="TextBox2" 
                    ForeColor="Red" ValidationExpression="\d\d\d\d"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Expiry Date:</td>
            <td class="style5">
                <asp:TextBox ID="Txtdate" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                                    &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                                    <asp:Calendar ID="Calendar1" runat="server" 
                    BackColor="White" BorderColor="#999999"
                                        Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                    Height="180px" Style="position: relative;
                                        top: 0px;" Width="200px"  
                                        CellPadding="4" DayNameFormat="Shortest" 
                                        onselectionchanged="Calendar1_SelectionChanged" 
                                        OnDayRender="Calendar1_DayRender">
                                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                    </asp:Calendar>
                                </td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Book Your Ticket!" BackColor="#000066" ForeColor="Aqua" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                    Font-Names="Showcard Gothic" Font-Underline="True" ForeColor="Blue" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

