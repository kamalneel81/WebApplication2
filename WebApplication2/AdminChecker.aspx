<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminChecker.aspx.vb" Inherits="WebApplication2.AdminChecker" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    <script src="_javascript/JScript1.js" type="text/javascript"></script>
    <title>Student Selection</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 328px;
            text-align: right;
        }
        .style3
        {
            width: 296px;
        }
    </style>
</head>
<body onload="disableBackButton()">
    <form id="form1" runat="server">
    <div id="header">
            <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="99%" Width="100%" />
    </div>
    <br />
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
                    Branch<asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" 
                        ErrorMessage="*" ForeColor="Red" InitialValue="------Select------"></asp:RequiredFieldValidator>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="------Select------">------Select------</asp:ListItem>			
                        <asp:ListItem>Biochemical Engineering</asp:ListItem>
			            <asp:ListItem>Biomedical Engineering</asp:ListItem>
			            <asp:ListItem>Biotechnology</asp:ListItem>
			            <asp:ListItem>Chemical Engineering</asp:ListItem>
			            <asp:ListItem>Civil Engineering</asp:ListItem>
			            <asp:ListItem>Computer Science &amp; Engineering</asp:ListItem>
			            <asp:ListItem>Electrical and Electronics</asp:ListItem>
			            <asp:ListItem>Electrical Engineering</asp:ListItem>
			            <asp:ListItem>Electrical Engineering (Power)</asp:ListItem>
			            <asp:ListItem>Electronics and Communication</asp:ListItem>
			            <asp:ListItem>Engineering Physics</asp:ListItem>
			            <asp:ListItem>Information Technology</asp:ListItem>
			            <asp:ListItem>Instrumentation</asp:ListItem>
			            <asp:ListItem>Mathematics &amp; Computing</asp:ListItem>
			            <asp:ListItem>Mechanical Engineering</asp:ListItem>
			            <asp:ListItem>Production and Industrial Engineering</asp:ListItem>
			            <asp:ListItem>Textile Technology</asp:ListItem>
			            <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btn" runat="server" Text="Search" BorderColor="Black" 
                        BorderStyle="Solid" />
                </td>
            </tr>
        </table>  
    </div>
    <br />
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" style="text-align: center" 
                Width="944px">
        </asp:GridView>
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
