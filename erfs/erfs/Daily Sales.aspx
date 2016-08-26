<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Daily Sales.aspx.cs" Inherits="erfs.Daily_Sales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div style="height:211px; background-image: url('img.png');border-image:stretch; background-repeat:no-repeat;background-position-x:right">
        <table align="center">
            <tr>
                <br />
                <br />
                <br />
                <td align="center" colspan="1" style="line-height:2px">
                    <h1>Eswara Reddy Filling Station</h1>
                    <h3>SH-54,Junction,Bestavaripeta</h3>
                    <h3>Prakasam-523334</h3>
                 </td>
                   </tr>
            <tr>
                <td></td>
            </tr>
        </table>    

        </div>
        <br />
        <br />
        <br />
        <table>
            <tr colspan="1" height="68%" width="80%">
                
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" RenderingMode="Table" align="right" >
            <Items>
                <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/login.aspx" Text="Login" Value="Login"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/About Us.aspx" Text="About Us" Value="About Us"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
            </tr>
        </table>
    <div>
    
        <br />
        <br />
        <strong>Daily Sales</strong><br />
        <br />
        <strong>Date</strong>
        <asp:TextBox ID="TextBox7" runat="server" TextMode="Date">Select Date</asp:TextBox>        <br />        <br />
        <strong>Motor Spirit (MS)<br />
        <br />
        </strong><br />
        <table class="auto-style1">
            <tr>
                <th>Pump Number</th>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">Pump 1</asp:ListItem>
                        <asp:ListItem Value="2">Pump 2</asp:ListItem>
                        
                    </asp:DropDownList></td>
                <th>Enter the Current Day Reading</th>
                <td>

                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                <th>Previous Reading</th>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                <th> Sales (Lt)</th>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged" AutoPostBack="True"></asp:TextBox></td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" /></td>
            </tr>
        </table>
        <br />
                <br />
        <strong>Diesel (HSD)<br />
        <br />
        </strong><br />
        <table class="auto-style1">
            <tr>
                <th>Pump Number</th>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">Pump 1</asp:ListItem>
                        <asp:ListItem Value="2">Pump 2</asp:ListItem>
                        <asp:ListItem Value="3">Pump 3</asp:ListItem>
                        <asp:ListItem Value="4">Pump 4</asp:ListItem>
                        
                    </asp:DropDownList></td>
                <th>Enter the Current Day Reading</th>
                <td>

                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                <th>Previous Reading</th>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                <th> Sales (Lt)</th>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox></td>
               <td>
                   <asp:Button ID="Button2" runat="server" Text="Save" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
