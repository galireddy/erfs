<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Pay Slip.aspx.cs" Inherits="erfs.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

    <br />
    <br />

    <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>
</asp:Content>
