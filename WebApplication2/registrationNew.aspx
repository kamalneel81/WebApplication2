<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="registrationNew.aspx.vb" Inherits="WebApplication2.registrationNew" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="cc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="_javascript/JScript1.js" type="text/javascript"></script>
    <title>Registration</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
        }
        .style3
        {
            height: 44px;
        }
        .style4
        {
            width: 179px;
        }
        .style5
        {
            height: 44px;
            width: 179px;
        }
    </style>
</head>
<body onload="disableBackButton()">
    <form id="form1" runat="server">
    <div id="header">
                <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="100%" Width="100%" />
        </div>
    <h3>CREATE NEW ACCOUNT</h3>
    <div style= "clear:both"> 
        <p>All fields markded <font color="red">*</font>are <b>manadatory</b>.</p>
        <table class="style1">
            <tr>
                <td class="style2">
                    Name<font color="red">*</font></td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBoxName" ErrorMessage="Name required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Username<font color="red">*</font></td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxUsr" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBoxUsr" ErrorMessage="Username required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                        Password<font color="red">*</font></td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPwd" runat="server" TextMode="Password"></asp:TextBox>&nbsp;<asp:ToolkitScriptManager
                        ID="ToolkitScriptManager1" runat="server">
                    </asp:ToolkitScriptManager>
                    <asp:PasswordStrength ID="TextBoxPwd_PasswordStrength" runat="server" 
                        Enabled="True" TargetControlID="TextBoxPwd">
                    </asp:PasswordStrength>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBoxPwd" ErrorMessage="Password required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                        Re-Type Password<font color="red">*</font></td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Re-Type password required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBoxPwd" ControlToValidate="TextBox3" 
                        ErrorMessage="Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                        Email<font color="red">*</font></td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxMail" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBoxMail" ErrorMessage="Email required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="E-mail is not Valid" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ControlToValidate="TextBoxMail"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    </td>
                <td class="style5">
                    <cc1:CaptchaControl ID="Captcha1" runat="server"
                         CaptchaBackgroundNoise="Low" CaptchaLength="5"
                         CaptchaHeight="60" CaptchaWidth="200"
                         CaptchaLineNoise="None" CaptchaMinTimeout="5"
                         CaptchaMaxTimeout="240" FontColor = "#529E00" /></td>
                <td class="style3">
                    </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    <asp:TextBox ID="txtCaptcha" runat="server"></asp:TextBox>
                    </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Please enter the characters in the image."></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style4">
                    <asp:Button ID="btn" runat="server" Text="Register" BorderColor="Black" 
                        BorderStyle="Solid" />
                </td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <h3>&nbsp;</h3>    
    </form>
    <div id="footer">
        <p align="center"><font color="silver">Internship | SMVDU,Jammu </font></p>
        <p align="center"><font color="silver">Shri Mata Vaishno Devi University Campus |&nbsp;Sub-Post Office, Katra, &nbsp;| </font>
        <font color="silver">Jammu and Kashmir - 182320 </font><br />
        <font color="silver">Phone: </font><font color="silver">01991-285535 //  285524 |&nbsp;Email: <a href="mailto:info@smvdu.ac.in">info@smvdu.ac.in</a> </font></p>
    </div>
</body>
</html>
