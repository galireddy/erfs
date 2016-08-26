<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pay Slip Insertion.aspx.cs" Inherits="erfs.Pay_Slip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }
        .auto-style3 {
            width: 145px;
        }
        .auto-style4 {
            height: 103px;
        }
        .auto-style5 {
            height: 34px;
        }
    </style>

    </head>
<body style="height: 858px">
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
        <div style="margin-left:200px">
            <asp:Label ID="Label1" runat="server" Text="Label">Select the Employye</asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" BorderStyle="None" UseSubmitBehavior="False" />
            <br />
        <br />
        </div>
        <table style="margin-left:195px">
            <tr>
                <td colspan="2" class="auto-style1" style="align-content:center">Dates Worked</td>
            </tr>
            <tr>
                <td class="auto-style1">From</td>
                
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Date" ToolTip="Enter the Start Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox8" ErrorMessage="Enter the From Date" ForeColor="Red" ValidationGroup="TextBox8">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>To</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" TextMode="Date" ToolTip="Enter the End Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="Enter the To Date" ForeColor="Red" ValidationGroup="TextBox9">*</asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="Calculate" OnClick="Button2_Click" UseSubmitBehavior="False" /></td>
            </tr>
            
        </table>
        <br />
        <div style="margin-left:195px">
            <table   style="float:left;">
                <tr>
                    <td class="auto-style3">Employee ID  </td><td>           
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Basic Pay per Day</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Allowances</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ToolTip="Enter the Allowances to the Employee"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter the Allowances" ForeColor="Red" ValidationGroup="TextBox3">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Number Of Days Work</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                        <td class="auto-style3">Cash In Advance</td>
                        <td>
                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter the Cash In Advances" ForeColor="Red" ValidationGroup="TextBox10">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">Gross Pay</td>
                        <td>
                            <asp:TextBox ID="TextBox11" runat="server" AutoPostBack="True" ReadOnly="True"></asp:TextBox>
                        &nbsp;&nbsp;
                            <asp:Button ID="Button3" runat="server" Text="Gross Pay" OnClick="Button3_Click" UseSubmitBehavior="False" />
                        </td>
                        </tr>
                <tr>
                    <td class="auto-style5">Net Pay</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;
                        <asp:Button ID="Button5" runat="server" Text="Net Pay" OnClick="Button5_Click" UseSubmitBehavior="False" />
                    </td>
                </tr>
                
                <tr>
                    <td colspan="1" style="align-content:center" class="auto-style4">
                        <asp:Button ID="Button4" runat="server" Text="Save" OnClick="Button4_Click" UseSubmitBehavior="False" />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
            </table>
            
            <table style="float:left; margin-left: 80px;">
                <tr>
                    <td>Employee Name</td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Father/Mother Name</td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Payment Type</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Cash</asp:ListItem>
                            <asp:ListItem>Cheque</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Enter the Payment Mode" ForeColor="Red" ValidationGroup="DropDownList1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Cheque/Cash Voucher No</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter the Cheque/Cash Voucher NO" ForeColor="Red" ValidationGroup="TextBox7">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            
        </div>
         
    </form>
</body>
</html>
