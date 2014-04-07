<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="WebApplication2.Register" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="_css/StyleSheet1.css" rel="stylesheet" type="text/css" />   
    <title>Application1 page</title>   
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            width: 40%;
            font-size:medium
        }
        .style5
        {
            color: black;
        }
        .style6
        {
            font-size: small;
            color: #FF0000;
        }
        .style10
        {
            width: 165px;
        }
        .style11
        {
            width: 207px;
        }
        .style12
        {
            width: 290px;
        }
        .style13
        {
            width: 206px;
        }
        .style14
        {
            width: 205px;
        }
        .style15
        {
            font-size: small;
        }        
        .style16
        {
            text-align: right;
            width: 40%;
            font-size: medium;
            height: 25px;
        }
        .style17
        {
            width: 205px;
            height: 25px;
        }
        .style18
        {
            height: 25px;
        }
        .style19
        {
            text-align: center;
        }
        </style>        
</head>
<body>
    <form id="form1" runat="server">
    <div id="header">                      
            <asp:Image src="images/finaleno1.jpg" 
                  ID="Image1" runat="server" Height="100%" Width="100%" />                        
    </div>
    <h2 id="h2style">APPLICATION FORM</h2>
    <p>All fields markded <font color="red">*</font>are <b>manadatory</b>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Hi"></asp:Label>
        ,&nbsp;
        <asp:Label ID="Label2" runat="server" ForeColor="Blue"></asp:Label>
    </p>
    <h3>Personal Information</h3>    
    <div id="one">
        <table class="style1">
            <tr>
                <td class="style16">
                    Name<font color="red">*</font></td>
                <td class="style17">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="200px" Height="25px" 
                        ReadOnly="True"></asp:TextBox>
                    
                </td>
                <td class="style18">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" 
                        ControlToValidate="TextBoxName" ErrorMessage="Name is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date of Birth<font color="red">*</font><br />
                    <span class="style6">(mm/dd/yyyy)</span></td>
                <td class="style14">
                    <asp:TextBox ID="datepicker" runat="server" Height="25px"></asp:TextBox>
                    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
                    <ajaxToolkit:CalendarExtender ID="datepicker_CalendarExtender" runat="server" TargetControlID="datepicker"></ajaxToolkit:CalendarExtender>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDOB" runat="server" 
                        ControlToValidate="datepicker" ErrorMessage="DOB is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Gender<font color="red">*</font></td>
                <td class="style14">
                    <asp:DropDownList ID="DropDownListGender" runat="server" Height="25px" 
                        Width="100px">
                        <asp:ListItem Value="--select--">--select--</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGender" runat="server" 
                        ErrorMessage="Gender required" ForeColor="Red" InitialValue="--select--" 
                        ControlToValidate="DropDownListGender" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <h3 class="style5">Current Mailing Information</h3>
    <div id="two">
        <table class="style1">
            <tr>
                <td class="style2">
                    Address<font color="red">*</font></td>
                <td class="style10">
                    <asp:TextBox ID="TextBoxAddress" runat="server" Height="55px" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" 
                        ControlToValidate="TextBoxAddress" ErrorMessage="Address required " 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Tel No.</td>
                <td class="style10">
                    <asp:TextBox ID="TextBoxTel" runat="server" TextMode="Phone" Width="160px" 
                        Height="25px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Mobile No.<font color="red">*</font></td>
                <td class="style10">
                    <asp:TextBox ID="TextBoxMobile" runat="server" TextMode="Phone" Width="160px" 
                        Height="25px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorMobile" runat="server" 
                        ControlToValidate="TextBoxMobile" ErrorMessage="Mobile number is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorMobile" runat="server" 
                        ControlToValidate="TextBoxMobile" 
                        ErrorMessage="Enter Valid Mobile Number (e.g. 91-98xxxxxxxx/98xxxxxxxx) " ForeColor="Red" 
                        ValidationExpression="(\d*-)?\d{10}" CssClass="style15"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    </div>
    <h3 class="style5">College Education Information</h3>
    <div id="three">
        <table class="style1">
            <tr>
                <td class="style2">
                    Name of Institution<font color="red">*</font></td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownListInstitute" runat="server" Height="25px" 
                        Width="324px" onselectedindexchanged="DL1_IndexChanged">

                        <asp:ListItem Value="------Select------">------Select------</asp:ListItem>			
                        <asp:ListItem>Amity School of Engineering &amp; Technology, New Delhi</asp:ListItem>
			            <asp:ListItem>Amrita School of Engineering, Coimbatore</asp:ListItem>
			            <asp:ListItem>Army Institute of Technology, Pune</asp:ListItem>
			            <asp:ListItem>B. S. Abdur Rahman University, Chennai</asp:ListItem>
			            <asp:ListItem>Bannari Amman Institute of Technology, Sathyamangalam</asp:ListItem>
			            <asp:ListItem>Bharati Vidyapeeth Deemed University College of Engineering, Pune, Pune</asp:ListItem>
			            <asp:ListItem>Birla Institute of Technology and Science, Pilani, Pilani</asp:ListItem>
			            <asp:ListItem>Birla Institute of Technology, Mesra, Ranchi</asp:ListItem>
			            <asp:ListItem>Birsa Institute of Technology Sindri, Dhanbad</asp:ListItem>
			            <asp:ListItem>Chaitanya Bharathi Institute of Technology, Hyderabad</asp:ListItem>
			            <asp:ListItem>College of Engineering, Guindy, Chennai</asp:ListItem>
			            <asp:ListItem>College of Engineering, Pune, Pune</asp:ListItem>
			            <asp:ListItem>Dehradun Institute of Technology, Dehradun</asp:ListItem>			            
			            <asp:ListItem>Dhirubhai Ambani Institute of Information and Communication Technology, Gandhinagar</asp:ListItem>
			            <asp:ListItem>Dr. B. R. Ambedkar National Institute of Technology, Jalandhar</asp:ListItem>
			            <asp:ListItem>Dwarkadas J. Sanghvi College of Engineering, Mumbai</asp:ListItem>
			            <asp:ListItem>Faculty of Engineering &amp; Technology . Jamia Millia Islamia, New Delhi</asp:ListItem>
			            <asp:ListItem>Galgotia's College of Engineering and Technology, Greater Noida</asp:ListItem>
			            <asp:ListItem>Ganeshi Lal Bajaj Institute of Technology and Management, Greater Noida</asp:ListItem>
			            <asp:ListItem>GMR Institute of Technology, Rajam</asp:ListItem>
			            <asp:ListItem>Government College of Engineering, Amravati, Amravati</asp:ListItem>
			            <asp:ListItem>GSS Institute of Technology, Bangalore</asp:ListItem>
			            <asp:ListItem>Guru Nanak Dev Engineering College, Ludhiana, Ludhiana</asp:ListItem>
			            <asp:ListItem>Harcourt Butler Technological Institute, Kanpur</asp:ListItem>
			            <asp:ListItem>Indian Institute of Information Technology, Allahabad, Allahabad</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Bhubaneswar, Bhubaneswar</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Gandhinagar, Gandhinagar</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Hyderabad, Hyderabad</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Indore, Indore</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Jodhpur, Jodhpur</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Mandi, Mandi</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Patna, Patna</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology Ropar, Rupnagar</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Banaras Hindu University, Varanasi</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Bombay, Mumbai</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Delhi, New Delhi</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Guwahati, Guwahati</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Kanpur, Kanpur</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Kharagpur, Kharagpur</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Madras, Chennai</asp:ListItem>
			            <asp:ListItem>Indian Institute of Technology, Roorkee, Roorkee</asp:ListItem>
			            <asp:ListItem>Indian School of Mines, Dhanbad</asp:ListItem>
			            <asp:ListItem>Indrapastha institute of Information technology, Hyderabad</asp:ListItem>
			            <asp:ListItem>Indraprastha institute of information Technology, Okhla</asp:ListItem>
			            <asp:ListItem>Institute of Technology, Nirma University, Ahmedabad</asp:ListItem>
			            <asp:ListItem>International Institute of Information Technology, Hyderabad, Hyderabad</asp:ListItem>
			            <asp:ListItem>K. J. Somaiya Institute of Engineering and Information Technology, Mumbai</asp:ListItem>
			            <asp:ListItem>Maharaja Agrasen Institute of Technology, New Delhi</asp:ListItem>
			            <asp:ListItem>Maharaja Surajmal Institute of Technology, New Delhi</asp:ListItem>
			            <asp:ListItem>Maharashtra Institute of Technology, Pune</asp:ListItem>
			            <asp:ListItem>Malaviya National Institute of Technology, Jaipur</asp:ListItem>
			            <asp:ListItem>Manipal Institute of Technology, Manipal</asp:ListItem>
			            <asp:ListItem>Maulana Azad National Institute of Technology, Bhopal</asp:ListItem>
			            <asp:ListItem>Mepco Schlenk Engineering College, Sivakasi</asp:ListItem>
			            <asp:ListItem>Model Engineering College, Kochi</asp:ListItem>
			            <asp:ListItem>Motilal Nehru National Institute of Technology, Allahabad, Allahabad</asp:ListItem>
			            <asp:ListItem>National Institute of Engineering, Mysore</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Arunachal Pradesh</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Calicut</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Delhi</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Karnataka</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Karnataka, Surathkal</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Manipur</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Meghalaya</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Mizoram</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Nagaland</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Sikkim</asp:ListItem>
			            <asp:ListItem>National Institute of Technology Uttarakhand</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Agartala</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Durgapur</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Goa</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Hamirpur</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Jamshedpur</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Kurukshetra</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Patna</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Puducherry</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Raipur</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Rourkela</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Silchar</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Srinagar</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Tiruchirappalli</asp:ListItem>
			            <asp:ListItem>National Institute of Technology, Warangal</asp:ListItem>
			            <asp:ListItem>Netaji Subhas Institute of Technology, New Delhi</asp:ListItem>
			            <asp:ListItem>Oriental Institute of Science and Technology, Bhopal</asp:ListItem>
			            <asp:ListItem>P.E.S. College of Engineering, Mandya</asp:ListItem>
			            <asp:ListItem>P.E.S. Institute of Technology, Bangalore</asp:ListItem>
			            <asp:ListItem>P.S.G. College of Technology, Coimbatore</asp:ListItem>
			            <asp:ListItem>"PEC University of Technology, Chandigarh">PEC University of Technology, Chandigarh</asp:ListItem>
			            <asp:ListItem>R.V. College of Engineering, Bangalore</asp:ListItem>
			            <asp:ListItem>Rajagiri School of Engineering and Technology, Kochi</asp:ListItem>
			            <asp:ListItem>S V National Institute of Technology, Surat</asp:ListItem>
			            <asp:ListItem>Sardar Patel College of Engineering, Mumbai</asp:ListItem>
			            <asp:ListItem>Sardar Vallabhbhai National Institute of Technology, Surat</asp:ListItem>
			            <asp:ListItem>Shri Govindram Seksaria Institute of Technology and Science, Indore</asp:ListItem>
			            <asp:ListItem>Shri Mata Vaishno Devi University, Jammu &amp; Kashmir</asp:ListItem>
			            <asp:ListItem>Sir M. Visvesvaraya Institute of Technology, Bangalore</asp:ListItem>
			            <asp:ListItem>"Thapar University, Patiala">Thapar University, Patiala</asp:ListItem>
			            <asp:ListItem>Thiagarajar College of Engineering, Madurai</asp:ListItem>
			            <asp:ListItem>University College of Engineering, Osmania University, Hyderabad</asp:ListItem>
			            <asp:ListItem>University Institute of Engineering and Technology, Panjab University, Chandigarh</asp:ListItem>
			            <asp:ListItem>Veermata Jijabai Technological Institute, Mumbai</asp:ListItem>
			            <asp:ListItem>Vellore Institute of Technology, Vellore</asp:ListItem>
			            <asp:ListItem>Visvesvaraya National Institute of Technology, Nagpur</asp:ListItem>
			            <asp:ListItem>West Bengal University of Technology, Kolkata</asp:ListItem>
			            <asp:ListItem>Others</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorInstitute" runat="server" 
                        ControlToValidate="DropDownListInstitute" 
                        ErrorMessage="Institute name is required" ForeColor="Red" 
                        InitialValue="------Select------" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style12">
                    <asp:TextBox ID="TextBoxHide" runat="server" Width="313px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Degree Programme<font color="red">*</font></td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownListDegree" runat="server" Height="25px" 
                        Width="160px" onselectedindexchanged="DL2_IndexChanged">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>B.tech</asp:ListItem>
                        <asp:ListItem>B.E.</asp:ListItem>
                        <asp:ListItem>Dual Degree</asp:ListItem>
                        <asp:ListItem>Integrated M.Tech</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDegree" runat="server" 
                        ControlToValidate="DropDownListDegree" 
                        ErrorMessage="Degree programme is required" ForeColor="Red" 
                        InitialValue="--select--" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style12">
                    <asp:TextBox ID="TextBox1" runat="server" Width="151px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Discipline(Specialization)<font color="red">*</font></td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownListDiscipline" runat="server" Height="25px" 
                        Width="230px">
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
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDiscipline" runat="server" 
                        ControlToValidate="DropDownListDiscipline" 
                        ErrorMessage="Discipline is required" ForeColor="Red" 
                        InitialValue="------Select------" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Performance at the end of 3rd /5th semester<br />
                    Grading Type<font color="red">*</font></td>
                <td class="style12">
                    <asp:DropDownList ID="DropDownListGradingT" runat="server" Height="25px" 
                        Width="160px">
                        <asp:ListItem Value="--select--">--Select--</asp:ListItem>
                        <asp:ListItem>Percentage</asp:ListItem>
                        <asp:ListItem Value="4">CGPA out of 4</asp:ListItem>
                        <asp:ListItem Value="6">CGPA out of 6</asp:ListItem>
                        <asp:ListItem Value="9">CGPA out of 9</asp:ListItem>
                        <asp:ListItem Value="10">CGPA out of 10</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorGrading" runat="server" 
                        ControlToValidate="DropDownListGradingT" 
                        ErrorMessage="Grading Type is required" ForeColor="Red" 
                        InitialValue="--select--" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    CGPA/Marks(%)<font color="red">*</font></td>
                <td class="style12">
                    <asp:TextBox ID="TextBoxCGPA" runat="server" Height="25px" 
                        Width="100px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCGPA" runat="server" 
                        ControlToValidate="TextBoxCGPA" ErrorMessage="CGPA/Marks is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            </table>
    </div>
    <h3>Research Interest</h3>
    <div id="four">
        <table class="style1">
            <tr>
                <td class="style2">
                    Area of Interest<font color="red">*</font><br />
                    <span class="style6">(max char 100)</span></td>
                <td class="style11">
                    <asp:TextBox ID="TextBoxInterest" runat="server" Height="60px" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorInterest" runat="server" 
                        ControlToValidate="TextBoxInterest" ErrorMessage="Area of Interest is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Statement of Interest<br />
                    <span class="style6">(max char 500)</span></td>
                <td class="style11">
                    <asp:TextBox ID="TextBoxStatement" runat="server" Height="70px" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <h3>Other Academic Achievment</h3>
    <div id="five">
        <table class="style1">
            <tr>
                <td class="style2">
                    Achievements<font color="red">*</font><br />
                    <span class="style6">(max char 300)</span></td>
                <td class="style13">
                    <asp:TextBox ID="TextBoxAchievement" runat="server" Height="65px" TextMode="MultiLine" 
                        Width="200px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAchievement" runat="server" 
                        ControlToValidate="TextBoxAchievement" ErrorMessage="Achievements is required" 
                        ForeColor="Red" CssClass="style15"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </div>
    <h3>&nbsp;</h3>
    <div >
        <table class="style1">
            <tr>
                <td class="style19">
                    <asp:Button id="btn" runat="server" BorderStyle="Solid" Height="30px" 
                        Text="Next" Width="75px" />
                &nbsp;</td>
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
