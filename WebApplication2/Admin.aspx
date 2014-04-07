<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Admin.aspx.vb" Inherits="WebApplication2.Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">                      
            <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="100%" Width="100%" />                        
    </div>
    <h2 id="h2style"> ADMIN LOGIN FORM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h2>
    <p>All fields markded <font color="red">*</font>are <b>manadatory</b>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Hi"></asp:Label>
        ,&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="admin"></asp:Label>
    </p>
    <div>        
        <table class="style1">
            <tr>
                <td class="style2">
                    Username<font color="red">*</font></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True">admin</asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Username required" ControlToValidate="TextBox1" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password<font color="red">*</font></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btn" runat="server" BorderColor="Black" BorderStyle="Solid" 
                        Text="Login" Width="68px" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#666666" BorderColor="Black" 
                        BorderStyle="Solid" BorderWidth="2px" ForeColor="Black" 
                        Text="Change Password" />
                </td>
            </tr>
        </table>        
        <br />        
    </div>
    <div>
        
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Old Password<font color="red">*</font></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBox3" ErrorMessage="password is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        New Password<font color="red">*</font></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="TextBox4" EnableViewState="False" 
                            ErrorMessage="password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Re-Type New Password<font color="red">*</font></td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                            ControlToValidate="TextBox5" ErrorMessage="password is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                            ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                            ErrorMessage="password must be same" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="buttonChange" runat="server" Text="Change" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        
    </div>
    <div id="footer">
            <p align="center"><font color="silver">Internship | SMVDU,Jammu </font></p>
            <p align="center"><font color="silver">Shri Mata Vaishno Devi University Campus |&nbsp;Sub-Post Office, Katra, &nbsp;| </font>
            <font color="silver">Jammu and Kashmir - 182320 </font><br />
            <font color="silver">Phone: </font><font color="silver">01991-285535 //  285524 |&nbsp;Email: <a href="mailto:info@smvdu.ac.in">info@smvdu.ac.in</a> </font></p>
    </div>
    </form>
</body>
</html>
