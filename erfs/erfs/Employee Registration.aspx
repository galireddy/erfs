<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee Registration.aspx.cs" Inherits="erfs.example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table style="border:dashed">
                    <tr>
                        <td colspan="2"><h2>Personal Details</h2></td>
                        
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                        </th>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Button1_Click" /></td>
                            
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table style="border:dashed">
                    <tr>
                        <td colspan="2"><h2>Contact Details</h2></td>
                        
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label4" runat="server" Text="E-Mail"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            <asp:Label ID="Label5" runat="server" Text="Phone No"></asp:Label>
                        </th>
                        <td>
                            <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Previous" OnClick="Button2_Click" /></td>
                         <td>
                            <asp:Button ID="Button3" runat="server" Text="Next" OnClick="Button3_Click" style="margin-top: 0px" /></td>   
                    </tr>
                   
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table style="border:dashed">
                    <tr>
                        <td colspan="2"><h2>Personal Details</h2></td>
                        
                    </tr>
                    <caption>
                        <br />
                        <tr>
                            <th>
                                <asp:Label ID="Label6" runat="server" Text="First Name"></asp:Label>
                            </th>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Label ID="Label8" runat="server" Text="Lastname"></asp:Label>
                            </th>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <th>
                                <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
                            </th>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <caption>
                            <br />
                            <tr>
                                <td colspan="2">
                                    <h2>Contact Details</h2>
                                </td>
                            </tr>
                            <caption>
                                <br />
                                <tr>
                                    <th>
                                        <asp:Label ID="Label12" runat="server" Text="E-Mail"></asp:Label>
                                    </th>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        <asp:Label ID="Label14" runat="server" Text="Phone No"></asp:Label>
                                    </th>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Previous" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Submit" />
                                    </td>
                                </tr>
                            </caption>
                        </caption>
                    </caption>
                </table>
            </asp:View>
        </asp:MultiView>
    <div>
    
    </div>
    </form>
</body>

</html>
