<%@ Page Title="" Language="C#" MasterPageFile="~/Back Page.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="erfs.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <strong>Daily Sales</strong><br />
<br /><strong>Motor Spirit (MS)<br />
<br /></strong>
<br />
<table class="auto-style1">
    <tr>
        <th>Pump Number</th>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
            </asp:DropDownList>
        </td>
        <th>Enter the Current Day Reading</th>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <th>Previous Reading</th>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <th>Sales (Lt)</th>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="Insert" />
        </td>
    </tr>
</table>

</asp:Content>
