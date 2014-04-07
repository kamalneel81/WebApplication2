<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="UploadRL.aspx.vb" Inherits="WebApplication2.UploadRL" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 227px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">
            <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="100%" Width="100%" />
    </div>
    <h3 id="h2style">Recommendation Letter</h3>
    <br /><br />
    <div style="height:300px">
                        
        <table class="style1">
            <tr>
                <td style="text-align: right">
                    Username<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    username of student given at your email</td>
            </tr>
            <tr>
                <td style="text-align: right">
                    E-mail<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td>
                    your email<asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                        runat="server" ControlToValidate="TextBox2" ErrorMessage="enter a valid email" 
                        ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    File Upload<asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                        runat="server" ControlToValidate="FileUpload1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>
                    recommendation letter</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2" style="text-align: center">
                    <asp:Button ID="btn" runat="server" Text="upload" BorderColor="Black" 
                        BorderStyle="Solid" />
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
