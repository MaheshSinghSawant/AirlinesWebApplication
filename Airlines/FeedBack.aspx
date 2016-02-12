<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            height: 120px;
            width: 309px;
        }
        .style6
        {
            width: 309px;
            height: 42px;
        }
        .style7
        {
            height: 42px;
        }
        .style12
        {
            height: 120px;
        }
        .style13
        {
            height: 52px;
        }
        .style14
        {
            height: 52px;
        }
        .table-style
        {
            height: 194px;
            width: 83%;
            margin-left: 59px;
        }
        .style15
        {
            height: 1px;
        }
        .style16
        {
            height: 1px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="left" style="color: #000000"><font color="Blue" size="8">
        FeedBack:</font>
        </p>
    <p align="left"><font color="Blue" 
            style="font-size: x-large; font-family: 'Times New Roman', Times, serif">
        Please feel free to give us your feedback to better meet your expectations or 
        just express your satisfaction.
        </font>
    </p>
    
        <table border="0" cellpadding="0" cellspacing="0" class="table-style">
            <tr>
                <td class="style6" bgcolor="#000066" style="color: #00FFFF; font-size: x-large">
                  <font color="Aqua" size="4">  Name:</font></td>
                <td class="style7" bgcolor="#000066" style="color: #00FFFF; font-size: x-large">
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="264px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large">
                  </td>
                <td class="style16" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large">
                </td>
            </tr>
            <tr>
                <td class="style3" valign="top" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large"><font color="Aqua" size="4"> 
                    Comments &amp; Suggestions:</font></td>
                <td class="style12" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large">
                    &nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="101px" Width="260px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style15" valign="top" bgcolor="Aqua" 
                    style="color: #00FFFF; font-size: x-large" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="White" 
                        Text=" "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style13" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large">
                    &nbsp;</td>
                <td class="style14" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                        BackColor="Aqua" ForeColor="#000066" />
                </td>
            </tr>
            <tr>
                <td class="style13" bgcolor="#000066" 
                    style="color: #00FFFF; font-size: x-large" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    <p align="left">
        &nbsp;</p>
</asp:Content>

