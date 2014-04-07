<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="WebApplication2.Login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <title>LoginNew</title>
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
    <p style="text-align: right">
            <asp:Button ID="btn" runat="server" align="center" Text="Administrator" 
            Width="89px" />
        </p>
    <h2 id="h2style">LOGIN FORM</h2>
    <div id="left">
        <p id="Intro">Welcome to SMVDU Portal for prospective<br />student at Shri Mata Vaishno Devi University at<br />Jammu and Kashmir, India</p>
        <div>
            <table class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <div id="right">
        <div>
            <p style="font-size: medium; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold">&nbsp;Already have an account</p>
            <p style="font-size: medium; font-family: Arial, Helvetica, sans-serif; font-style: normal; font-weight: bold">&nbsp;Login below.</p>
            <div>
                <table class="style1">
                    <tr>
                        <td class="style2">
                            Username</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Password</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="ButtonLogin" runat="server" Text="Login" />
                        </td>
                    </tr>
                </table>
            </div>
            
        <p style="font-family: Arial, Helvetica, sans-serif;">&nbsp;Forgot your&nbsp;<a href="verifyUsr.aspx">username or password?</a></p>
        <br />
        <p style="font-family: Arial, Helvetica, sans-serif;" align="left"><span style="font-weight: bold">&nbsp;New User?</span><br />&nbsp;If you do not have an account you can create one below.<br />&nbsp;</p>
            <asp:Button ID="Button2" runat="server" Text="Create New Account" />
        </div>
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
