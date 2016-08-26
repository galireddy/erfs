<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Employee Login.aspx.cs" Inherits="erfs.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin Login.aspx">Admin Login</asp:HyperLink>     &nbsp;&nbsp;&nbsp;     
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Employee Login.aspx">Employee Login</asp:HyperLink>
<br /><br /><br />
    <table style="align-content:center;" border="1">
    <tr>
        <td>User Name</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td style="height: 26px">
            Password
        </td>
        <td style="height: 26px">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></td>
    </tr>
</table>
</asp:Content>
