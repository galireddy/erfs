<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Admin Reg Page.aspx.cs" Inherits="erfs.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="float:left">
        <tr>
            <td>
                <asp:Menu ID="Menu4" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" RenderingMode="Table" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem Text="Pay Slips Insertion" Value="Pay Slips Insertion"></asp:MenuItem>
            <asp:MenuItem Text="Pay Slips" Value="Pay Slips"></asp:MenuItem>
            <asp:MenuItem Text="Daily Sales" Value="Daily Sales"></asp:MenuItem>
            <asp:MenuItem Text="Daily Schedule" Value="Daily Schedule"></asp:MenuItem>
            <asp:MenuItem Text="Admin Registration" Value="Admin Registration"></asp:MenuItem>
            <asp:MenuItem Text="Employee Registration" Value="Employee Registration"></asp:MenuItem>
        </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
            </td></tr>
    

        </table>
    <table style="float:right">
        <tr>
            <td>
                <asp:Menu ID="Menu5" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" RenderingMode="Table" StaticSubMenuIndent="10px">
                    <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
                    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <DynamicMenuStyle BackColor="#E3EAEB" />
                    <DynamicSelectedStyle BackColor="#1C5E55" />
                    <Items>
                        <asp:MenuItem Text="Delivery Details" Value="Delivery Details"></asp:MenuItem>
                        <asp:MenuItem Text="Month Sales Book" Value="Month Sales Book"></asp:MenuItem>
                        <asp:MenuItem Text="Daily Book" Value="Daily Book"></asp:MenuItem>
                        <asp:MenuItem Text="Lubes" Value="Lubes"></asp:MenuItem>
                        <asp:MenuItem Text="Bank Deposit" Value="Bank Deposit"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="#666666" ForeColor="White" />
                    <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticSelectedStyle BackColor="#1C5E55" />
                </asp:Menu>
            </td>
        </tr>
    </table>
            
            
        
 </asp:Content>
