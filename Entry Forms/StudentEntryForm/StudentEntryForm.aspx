<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentEntryForm.aspx.cs" Inherits="StudentEntryForm.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Entry Form</title>
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
          .entryForm{
                
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
          .logo{
              width:100px;
              height: 100px;
              overflow: hidden;
              top: calc(-100px/2);
              left: calc(50% - 50px);
              position:absolute;
              
          }
           h2{
              color:#424642;
              display:block;

          }
          h2::after{
            display:inline-block;
            content:'';
            height:5px;
            width: 100%;
            background: #212634;
            padding:0;
        }
            
          .headerContainer{
              text-align: center;
          }
          .lblFName,.lblLName,.lblGender,.lblMName,.lblCurAdd,.lblPerAdd,.lblSchool{
              font-weight:bold;
              color: #424642;
          }

          .content{
              padding: 0 60px;
          }
         .items{
             margin:10px 15px;
         }
          .TxtField{
              height:29px;
              width:100%;
              border-radius: 5px;
              font-family:Verdana;
          }

          .btnSubmit{
              text-align: center;
              padding: 15px 20px ;
              margin-left: 20px;
          
               
          }
          .btnSbmt{
              width:100%;
              height: 50px;
              border:none;
              outline: none;
              border-radius: 5px;
              background-image:linear-gradient(to right, #99ADE7,#88EDD5);
              font-size: medium;
              color:snow;
     
          }
         .btnSbmt:hover {
             background-image:linear-gradient(to left, #99ADE7,#99ADE7);
           }
         .validators{
             color:#d85656;
             font-size:small;
             margin-left:4px;
             float:right;

         }
          h3{
            color:#424642;
            margin-bottom : 10px;
            margin-left:-10px;
          }






      </style>
</head>
<body>
<form  runat="server">

    <div class="entryForm">
         <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />
        <div class="headerContainer">
            <h2>Student Entry Form</h2>
        </div>


        <div class="content">

        <h3>Personal Information</h3>
         <div class="items">

        <asp:Label Text="Last Name " CssClass="lblLName" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtLname" Display="Dynamic" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br /> <asp:TextBox CssClass="TxtField" placeholder="First Name" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtLname"></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Fist Name " CssClass="lblFName" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtFname" Display="Dynamic" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="First Name" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtFname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Middle Name " CssClass="lblMName" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtMname" Display="Dynamic" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="Middle Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtMname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Gender " CssClass="lblGender" runat="server" ></asp:Label>
               <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator3" runat="server" ControlToValidate="radlGender" Display="Dynamic" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
         <asp:RadioButtonList CssClass="radBtnGender" ID="radlGender" runat="server" RepeatDirection="Horizontal" Width="160px">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
        </div>
        <h3>Address</h3>
         <div class="items">
        <asp:Label Text="Current Address" CssClass="lblCurAdd" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtCurAdd" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="Current Address" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtCurAdd"></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Permanent Address" CssClass="lblPerAdd" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPerAdd" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="Permanent Address" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtPerAdd"></asp:TextBox> 
        </div>
        <h3>Educational Background</h3>

          <div class="items">
        <asp:Label Text="Elementary" CssClass="lblSchool" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtElem" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtElem"></asp:TextBox> 
        </div>    

        <div class="items">
        <asp:Label Text="Junior High" CssClass="lblSchool" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtJunHigh" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtJunHigh"></asp:TextBox> 
        </div>  
        
        <div class="items">
        <asp:Label Text="Senior Hig" CssClass="lblSchool" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtSenHigh" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtSenHigh"></asp:TextBox> 
        </div>    

         <div class="btnSubmit">
         <asp:Button CssClass="btnSbmt" ID="AddStudentBtn" runat="server" Text="ADD STUDENT" Font-Bold="True" ForeColor="White" OnClick="AddStudentBtn_Click" />

            </div>
         </div>
    </div>
 </form>
</body>
</html>
