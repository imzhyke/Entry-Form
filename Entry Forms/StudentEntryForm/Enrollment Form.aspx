<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enrollment Form.aspx.cs" Inherits="StudentEntryForm.Enrollment_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Enrollment Form</title>
    <style>

        body{
              margin:0;
              padding:0;
              background-image:url('https://i.pinimg.com/originals/98/61/c6/9861c6602fdbd823b392aeda2425823e.jpg');
              background-size: cover;
              height: 100vh;
              width:auto;
              font-family:Verdana;
        }

        .enrollentForm{
              position:absolute;
              top:50%;
              left:50%;
              transform: translate(-50%,-50%);
              width:600px;
              height:800px;
              padding:40px;
              border-radius: 10px;
              background:rgb(255, 255, 255);
              margin: 20px 10px;
              box-shadow: 0 0 30px #0e3134;

        }
        .btnsbmt{
            height: 50px;
            margin: 30px 0 10px 0;
            padding: 10px 0;
            text-align:center;
            width:100%;
            background: #212634;
            border:none;
            color:white;
            font-size: large;
        }
         .btnsbmt:hover{
             background: #141624;
             color:#E90039;
         }
         .logo{
              width:100px;
              height: 100px;
              overflow: hidden;
              top: calc(-100px/2);
              left: calc(50% - 50px);
              position:absolute;
              
          }
         

        .input-details{
            padding:0;
            margin:0;

        }
        .txtBox,.txtBox2{
            height:30px;
            width: 46%;
        }
        .ddlPH{
            height:36px;
        }
     
        h4{
            margin-bottom: 0px;   
        }
        h3{
            margin-top: 20px;
        }
        h2{
            text-align:center;
        }
        h2::after{
            display:inline-block;
            content:'';
            height:5px;
            width: 100%;
            background: #212634;
            padding:0;
        }
        .tittle{
            margin-bottom:40px;
        }
        .name-input .txtBox, .father .txtBox, .mother .txtBox, .gurdians .txtBox {
            justify-content:center;
            width: calc(93.8%/3);
            margin:auto;
        }
        .nameValidator div{
            width: calc(93.8%/3);
            display:inline-block;
            padding-left:9px;
        }
        .nameValidator{

        }

        .txtContact{
             width: 38.5%;
             height:30px;
        }
        .address .txtBox{
            width: calc(92%/4);
        }
        .validators{
            font-size: x-small;
            color: #f56d6d;
        }
        .contactValidator{
            margin-left:60px;
        }




    </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <div class="enrollentForm">
             <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />

                  <!-- Container of title -->
                <div class="tittle">
                <h2 >Enrollment Form</h2>
                </div>
                
                <!-- Student's Info Container -->
                <div class="studentInfo">
                       <h3>Personal Information</h3>
                        <!-- Container for name -->
                        <div class="input-details ">
                            <h4>Complete Name</h4>
                            <div class="nameValidator">
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="validatorlast" runat="server" ErrorMessage="Required" ControlToValidate="txtlastName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtlastName" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                      <asp:RequiredFieldValidator CssClass="validators" ID="validatorfirst" runat="server" ErrorMessage="Required" ControlToValidate="txtfirstName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtfirstName" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="validatormiddle" runat="server" ErrorMessage="Required" ControlToValidate="txtmiddleName" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtmiddleName" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                            </div>
                            <div class="name-input">
                            <asp:TextBox Cssclass="txtBox" ID="txtlastName" placeholder="Last Name" runat="server" ClientIDMode="Static"></asp:TextBox>
                            <asp:TextBox Cssclass="txtBox" ID="txtfirstName" placeholder="First Name" runat="server"></asp:TextBox>   
                            <asp:TextBox Cssclass="txtBox" ID="txtmiddleName" placeholder="Middle Name" runat="server"></asp:TextBox>
                            </div>
                        </div>

                       <!-- Container for Email-->
                        <div class="input-details dob"> 
                            <h4>Email</h4>
                            <div class="nameValidator">
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" SetFocusOnError="True">Invalid Email Address</asp:RegularExpressionValidator> 
                                </div>

                            </div>
                            <asp:TextBox Cssclass="txtBox" ID="txtEmail" placeholder="example@website.com" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>

                       <!-- Container for Contact-->
                        <div class="input-details contact"> 
                            <h4>Contact Number</h4>
                            <div class="contactValidator">
                                   <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail">*</asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtContact" ValidationExpression="\d{10}" Display="Dynamic" SetFocusOnError="True">Invalid Phone Number</asp:RegularExpressionValidator> 
                             </div>
                            <asp:DropDownList  Cssclass="ddlPH " ID="ddlPH" runat="server">
                                <asp:ListItem>+63</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox Cssclass="txtContact" ID="txtContact" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>

                        <!--Container for gender-->
                        <div class="input-details gender"> 
                        <h4>Gender</h4>
                            <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator14" runat="server" ErrorMessage="Required" ControlToValidate="radLstGender">*</asp:RequiredFieldValidator>
                        <asp:RadioButtonList ID="radLstGender" runat="server" Width="201px" RepeatDirection="Horizontal" Height="17px">
                            <asp:ListItem> Male</asp:ListItem>
                            <asp:ListItem> Female</asp:ListItem>
                        </asp:RadioButtonList>
                        </div>

                        <!-- Container for DOB-->
                        <div class="input-details dob"> 
                            <h4>Date of Birth</h4>
                            <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator15" runat="server" ErrorMessage="Required" ControlToValidate="txtDOB">*</asp:RequiredFieldValidator> <br>
                            <asp:TextBox Cssclass="txtBox" ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                        </div>

                        <!-- Container for Address-->
                        <div class="input-details address"> 
                                <h4>Address</h4>
                                <asp:TextBox Cssclass="txtBox" ID="txtStreet" placeholder="Street" runat="server" TextMode="SingleLine"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtBrngy"  placeholder="Barangay" runat="server" TextMode="SingleLine"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtMunicpal"  placeholder="Municipality" runat="server" TextMode="SingleLine"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtProvince"  placeholder="Province" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </div>
                 </div>
                
                <div class="parentInfo">

                        <h3>Parent's Information</h3>

                         <!-- Container for Father's details-->
                        <div class="iput-details father">
                                <h4>Father's Name</h4>
                            <div class="nameValidator">
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtFatherLast" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtFatherFirst" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                      <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtFatherFirst" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator7" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtFatherFirst" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="txtFatherMiddle" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator8" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtFatherMiddle" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                            </div>
                                <asp:TextBox Cssclass="txtBox" ID="txtFatherLast" placeholder="Last Name" runat="server"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtFatherFirst" placeholder="First Name" runat="server"></asp:TextBox>   
                                <asp:TextBox Cssclass="txtBox" ID="txtFatherMiddle" placeholder="Middle Name" runat="server"></asp:TextBox>

                                <h4>Occupation</h4>
                                <asp:TextBox Cssclass="txtBox2" ID="txtFatherOcc" placeholder="Occupation" runat="server"></asp:TextBox>

                                <h4>Contact Number</h4>
                             <div class="contactValidator">
                                   <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator12" runat="server" ErrorMessage="Required" ControlToValidate="txtFatherContact">*</asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator15" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtFatherContact" ValidationExpression="\d{10}" Display="Dynamic" SetFocusOnError="True">Invalid Phone Number</asp:RegularExpressionValidator> 
                             </div>
                                <asp:DropDownList  Cssclass="ddlPH " ID="DropDownList3" runat="server">
                                 <asp:ListItem>+63</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox Cssclass="txtContact" ID="txtFatherContact"  runat="server"></asp:TextBox>
                        </div>

                        <!-- Container for Mother's details-->
                        <div class="iput-details mother">
                                <h4>Mother's Name</h4>
                            <div class="nameValidator">
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="txtMotherLast" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator9" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtMotherLast" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                      <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required" ControlToValidate="txtMotherFirst" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator10" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtMotherFirst" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Required" ControlToValidate="txtMotherMiddle" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator11" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtMotherMiddle" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                            </div>
                                <asp:TextBox Cssclass="txtBox" ID="txtMotherLast" placeholder="Last Name" runat="server"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtMotherFirst" placeholder="First Name" runat="server"></asp:TextBox>   
                                <asp:TextBox Cssclass="txtBox" ID="txtMotherMiddle" placeholder="Middle Name" runat="server"></asp:TextBox>

                                 <h4>Occupation</h4>
                                <asp:TextBox Cssclass="txtBox2" ID="txtMotherOcc" placeholder="Occupation" runat="server"></asp:TextBox>

                                 <h4>Contact Number</h4>
                             <div class="contactValidator">
                                   <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator13" runat="server" ErrorMessage="Required" ControlToValidate="txtContact">*</asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator16" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtContact" ValidationExpression="\d{10}" Display="Dynamic" SetFocusOnError="True">Invalid Phone Number</asp:RegularExpressionValidator> 
                             </div>
                                <asp:DropDownList  Cssclass="ddlPH " ID="DropDownList2" runat="server">
                                <asp:ListItem>+63</asp:ListItem>
                                 </asp:DropDownList>
                                <asp:TextBox Cssclass="txtContact" ID="txtMotherContact"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                

                    <div class="emergencyinfo">

                        <h3>Incase of Emergency</h3>

                        <div class="iput-details gurdians">
                                <h4>Guardians's Name</h4>
                            <div class="nameValidator">
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Required" ControlToValidate="txtGuardianLast" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator12" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtGuardianLast" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                      <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Required" ControlToValidate="txtGuardianFirst" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                         <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator13" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtGuardianFirst" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                                <div>
                                     <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator11" runat="server" ErrorMessage="Required" ControlToValidate="txtGuardianMiddle" Display="Dynamic" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator  CssClass="validators" ID="RegularExpressionValidator14" runat="server" ErrorMessage="Invalid Input" ControlToValidate="txtGuardianMiddle" ValidationExpression="^[a-zA-Z ]*$" Display="Dynamic" SetFocusOnError="True">Contains Invalid Character</asp:RegularExpressionValidator> 
                                </div>
                            </div>
                                <asp:TextBox Cssclass="txtBox" ID="txtGuardianLast" placeholder="Last Name" runat="server"></asp:TextBox>
                                <asp:TextBox Cssclass="txtBox" ID="txtGuardianFirst" placeholder="First Name" runat="server"></asp:TextBox>   
                                <asp:TextBox Cssclass="txtBox" ID="txtGuardianMiddle" placeholder="Middle Name" runat="server"></asp:TextBox>

                                <h4>Relationship</h4>
                                <asp:TextBox Cssclass="txtBox2" ID="txtGuardianRelation" placeholder="Relationship" runat="server"></asp:TextBox>

                                <h4>Contact Number</h4>
                                <asp:DropDownList  Cssclass="ddlPH " ID="DropDownList1" runat="server">
                                    <asp:ListItem>+63</asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox Cssclass="txtContact" ID="txtGuardianContact"  runat="server"></asp:TextBox>
                        </div>
                    </div>
                  <asp:Button CssClass="btnsbmt" ID="btnSubmit" runat="server" Text="Submit" />
              </div>
     </form>

</body>
</html>
