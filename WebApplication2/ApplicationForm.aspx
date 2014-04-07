<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ApplicationForm.aspx.vb" Inherits="WebApplication2.ApplicationForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="../_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="_javascript/JScript1.js" type="text/javascript"></script>
    <title>Application Form</title>
    <style type="text/css">
    
        .style1
        {
            width: 100%;
        }
    
        .style2
        {
            width: 217px;
        }
        .style3
        {
            width: 160px;
        }
        .style4
        {
            width: 285px;
        }
    
        .style5
        {
            width: 116px;
        }
        .style6
        {
            width: 154px;
        }
        .style7
        {
            width: 152px;
        }
        .style8
        {
           width: 116px;
        }
        .style9
        {
            width: 300px;
        }
    
        .style10
        {
            width: 299px;
        }
    
    </style>
</head>
<body onload="disableBackButton()">
    <form id="form1" runat="server">
    <div id="header">
        <asp:Image src="images/finaleno1.jpg" ID="Image1" runat="server" Height="100%" Width="100%" style="margin-top: 0px" />     
    </div>
    <h1 style="text-align: center">Student</h1>
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Name</td>
                <td class="style4">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    Email</td>
                <td>
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date of birth</td>
                <td class="style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    Gender</td>
                <td>
                    <asp:Label ID="Label12" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address</td>
                <td class="style4">
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Telephone</td>
                <td class="style4">
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    Mobile</td>
                <td>
                    <asp:Label ID="Label13" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Institute/University</td>
                <td class="style4">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Programme</td>
                <td class="style4">
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    Discipline</td>
                <td>
                    <asp:Label ID="Label14" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Grade Procedure</td>
                <td class="style4">
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    Cgpa</td>
                <td>
                    <asp:Label ID="Label15" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Interest</td>
                <td class="style4">
                    <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Statement Interest</td>
                <td class="style4">
                    <asp:Label ID="Label9" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Achievements</td>
                <td class="style4">
                    <asp:Label ID="Label10" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>            
        </table>    
    </div>
    <h1 style="text-align: center">Refree</h1>
    <div>
        <h4>Refree1</h4>
        <table class="style1">
            <tr>
                <td class="style6">
                    Name</td>
                <td class="style10">
                    <asp:Label ID="Label16" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    Email</td>
                <td>
                    <asp:Label ID="Label18" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    Designation</td>
                <td class="style10">
                    <asp:Label ID="Label17" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    Institute</td>
                <td>
                    <asp:Label ID="Label19" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <h4>Refree2</h4>
        <table class="style1">
            <tr>
                <td class="style7">
                    Name</td>
                <td class="style9">
                    <asp:Label ID="Label20" runat="server"></asp:Label>
                </td>
                <td class="style8">
                    Email</td>
                <td>
                    <asp:Label ID="Label22" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Designation</td>
                <td class="style9">
                    <asp:Label ID="Label21" runat="server"></asp:Label>
                </td>
                <td class="style8">
                    Institute</td>
                <td>
                    <asp:Label ID="Label23" runat="server"></asp:Label>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>
