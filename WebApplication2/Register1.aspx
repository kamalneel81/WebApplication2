<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register1.aspx.vb" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="_javascript/JScript1.js" type="text/javascript"></script>
    <title>Application2 page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style9
        {
            text-align: right;
        }
        .style10
        {
            text-align: right;
            width: 256px;
        }
        .style11
        {
            width: 256px;
        }
        .style12
        {
            width: 212px;
        }
        .style13
        {
            width: 215px;
        }
        .style14
        {
            width: 199px;
        }
        .style15
        {
            width: 207px;
        }
        </style>
</head>
<body onload="disableBackButton()">
    <form id="form1" runat="server">
    <div id="header">
        <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="101%" Width="100%" 
            style="margin-top: 0px" />     
    </div>
    <h2 id="h2style">APPLICATION FORM</h2>
    <p>All fields markded <font color="red">*</font>are <b>manadatory</b>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Hi"></asp:Label>
        ,&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="Blue"></asp:Label>
    </p>
    <h3>References</h3>
    <div>
        <h4 style="text-align:center">Refree One</h4>
        <div>
            <table class="style1">
                <tr>
                    <td class="style9" width="300px"  >
                        Name<font color="red">*</font></td>
                    <td class="style15" >
                        <asp:TextBox ID="TextBoxRname1" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                            ControlToValidate="TextBoxRname1" ErrorMessage="Name is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"  >
                        Designation<font color="red">*</font></td>
                    <td class="style15" >
                        <asp:TextBox ID="TextBoxRdesignation1" runat="server" Height="22px" 
                            Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRdesignation1" 
                            runat="server" ControlToValidate="TextBoxRdesignation1" 
                            ErrorMessage="Designation is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"   >
                        Email<font color="red">*</font></td>
                    <td class="style15" >
                        <asp:TextBox ID="TextBoxRemail1" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRemail1" runat="server" 
                            ControlToValidate="TextBoxRemail1" ErrorMessage="Email is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorRemail1" 
                            runat="server" ControlToValidate="TextBoxRemail1" 
                            ErrorMessage="email id is not valid" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"  >
                        Institution/Organization<font color="red">*</font></td>
                    <td class="style15" >
                        <asp:TextBox ID="TextBoxRInstitute1" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRInstitute1" 
                            runat="server" ControlToValidate="TextBoxRInstitute1" 
                            ErrorMessage="Designation required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
        <h4 style="text-align:center">Refree second</h4>
        <div>
            <table class="style1">
                <tr>
                    <td class="style9" width="300px"  >
                        Name<font color="red">*</font></td>
                    <td class="style14" >
                        <asp:TextBox ID="TextBoxRname2" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRname2" runat="server" 
                            ControlToValidate="TextBoxRname2" ErrorMessage="Name is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"  >
                        Designation<font color="red">*</font></td>
                    <td class="style14" >
                        <asp:TextBox ID="TextBoxRdesignation2" runat="server" Height="22px" 
                            Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRdesignation2" 
                            runat="server" ControlToValidate="TextBoxRdesignation2" 
                            ErrorMessage="Designation is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"  >
                        Email<font color="red">*</font></td>
                    <td class="style14" >
                        <asp:TextBox ID="TextBoxRemail2" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRemail2" runat="server" 
                            ControlToValidate="TextBoxRemail2" ErrorMessage="Email is required" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorRemail2" 
                            runat="server" ControlToValidate="TextBoxRemail2" 
                            ErrorMessage="email id is not valid" ForeColor="Red" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style9" width="300px"  >
                        Institution/Organization<font color="red">*</font></td>
                    <td class="style14" >
                        <asp:TextBox ID="TextBoxRInstitute2" runat="server" Height="22px" Width="200px"></asp:TextBox>
                    </td>
                    <td >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorRInstitute2" 
                            runat="server" ControlToValidate="TextBoxRInstitute2" 
                            ErrorMessage="Designation required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <h3>Photo</h3>
    <div>
        <p><font color="green">File Uploading ( Only jpg and png format : Maximun size 1MB)</font></p>
        <table class="style1">
            <tr>
                <td  style="text-align: right" class="style10">
                    Filename<font color="red">*</font></td>
                <td class="style12" >
                    <asp:FileUpload ID="FileUploadphoto" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Upload your photo" ForeColor="Red" 
                        ControlToValidate="FileUploadphoto"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
    </div>
    <h3>Resume</h3>
    <div>
        <p><font color="green">File Uploading ( doc, docx, pdf format : Maximun size 2MB)</font></p>
        <table class="style1">
            <tr>
                <td  style="text-align: right" class="style11">
                    Filename<font color="red">*</font></td>
                <td class="style13" >
                    <asp:FileUpload ID="FileUploadResume" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Upload your resume/CV" ControlToValidate="FileUploadResume" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <h3>Marksheet</h3>
    <div>
        <p><font color="green">File Uploading ( doc, docx, pdf format : Maximun size 2MB )</font></p>
        <table class="style1">
            <tr>
                <td  style="text-align: right" class="style11">
                    Filename<font color="red">*</font></td>
                <td class="style13" >
                    <asp:FileUpload ID="FileUploadMarksheet" runat="server" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMarksheet" runat="server" 
                        ErrorMessage="Upload your current transcript/marksheet" 
                        ControlToValidate="FileUploadMarksheet" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <h3>  &nbsp;&nbsp;</h3>
    <div>
        
        <table class="style1">
            <tr>
                <td align="center">
                    <asp:Button ID="btn" runat="server" Text="Submit" BorderColor="Black" 
                        BorderStyle="Solid" />
                </td>
            </tr>
            </table>
        
    </div>
    </form>
    <div id="footer">
            <p align="center"><font color="silver">Internship | SMVDU,Jammu </font></p>
            <p align="center"><font color="silver">Shri Mata Vaishno Devi University Campus |&nbsp;Sub-Post Office, Katra, &nbsp;| </font>
            <font color="silver">Jammu and Kashmir - 182320 </font><br />
            <font color="silver">Phone: </font><font color="silver">01991-285535 //  285524 |&nbsp;Email: <a href="mailto:info@smvdu.ac.in">info@smvdu.ac.in</a> </font></p>
    </div>
</body>
</html>
