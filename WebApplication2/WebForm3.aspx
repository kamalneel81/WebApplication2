<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm3.aspx.vb" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="_javascript/JScript1.js" type="text/javascript"></script>
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 213px;
        }
        .style3
        {
            text-align: right;
        }
    </style>
</head>
<body onload="disableBackButton()">
    <form id="form1" runat="server">
    <div id="header">
            <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="100%" Width="100%" />
    </div>
    <h3 id="h2style">New Password</h3>
    <br /><br />
    <div style="height:300px">             
        <table class="style1">
            <tr>
                <td class="style3">
                    New Password</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="148px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Re-type New Password</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="18px" Width="148px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="enter re-type password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox1" ControlToValidate="TextBox2" 
                        ErrorMessage="password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" style="text-align: left">
                    <asp:Button ID="btn" runat="server" Text="change password" Width="137px" 
                        BorderColor="Black" BorderStyle="Solid" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
             
    </div>
    <h3 id="h3">&nbsp;</h3>
    </form>
    <div id="footer">
        <p align="center"><font color="silver">Internship | SMVDU,Jammu </font></p>
        <p align="center"><font color="silver">Shri Mata Vaishno Devi University Campus |&nbsp;Sub-Post Office, Katra, &nbsp;| </font>
        <font color="silver">Jammu and Kashmir - 182320 </font><br />
        <font color="silver">Phone: </font><font color="silver">01991-285535 //  285524 |&nbsp;Email: <a href="mailto:info@smvdu.ac.in">info@smvdu.ac.in</a> </font></p>
    </div>
</body>
</html>
