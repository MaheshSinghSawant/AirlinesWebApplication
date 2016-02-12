<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 472px; width: 105%; margin-left: 0px">
        <tr>
            <td colspan="3">
                <span style="font-size: x-large">Sign Up!</span></td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                User Name:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Username Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*Minimum 5 characters" 
                    ForeColor="#66FF33" onservervalidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                Password:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="* Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                Confirm Password:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="* Passwords Do not Match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                E-Mail</td>
            <td class="style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="* Enter Valid Email-id" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                Security Question:</td>
            <td class="style3">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="* Required Question" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="font-size: x-large;" class="style2">
                Security Answer</td>
            <td class="style3">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" 
                    ErrorMessage="* Enter Valid Answer(no special characters)" ForeColor="Red" 
                    ValidationExpression="[a-z A-Z]*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="font-size: large" Text="Register" BackColor="#000066" 
                    ForeColor="Aqua" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Size="X-Large" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style2
        {
            width: 219px;
        }
        .style3
        {
            width: 186px;
        }
    </style>
</asp:Content>


