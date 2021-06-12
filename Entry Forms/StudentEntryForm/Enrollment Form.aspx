<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Enrollment Form.aspx.cs" Inherits="StudentEntryForm.Enrollment_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Entry Entry Form</title>
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
              width:540px;
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
          .lables{
              font-weight:bold;
              color: #424642;
              font-size:small;
          }
          .lableProg, .lableSem{
              margin-left:28px;
          }
          .content{
              padding: 0 60px;
          }
         .items{
             margin:8px 15px;
         }
          .TxtField{
             height:23px;
              width:100%;
              border-radius: 5px;
              font-family:Verdana;
          }
          .TxtUnits{
              width:20%;
          }
          .DDL{
              height:27px;
              width:65%;
              border-radius: 5px;
              font-family:Verdana;
          }
          .DDLStatus{
              width:60%;
              float:right;
          }
          .DLLINST{
              width:76%;
              float:right;
          }
          .DLLProg{
              width:40%;
          }
          .DLLYear{
              width:12%;
          }
          .DLLSem{
              width:39%;
          }
          .btnSubmit{
              text-align: center;
              padding: 15px 20px ;
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
          .btnUpdate{
              width:45%;
              height: 50px;
              border:none;
              outline: none;
              border-radius: 5px;
              font-size: medium;
              color:snow;
              background-color:#99ADE7;
              float:left;
          }
           .btnUpdate:hover {
               background-color:#926ee0;
           }
          .btnWdrw{
              width:26%;
              height: 50px;
              border:none;
              outline: none;
              border-radius: 5px;
              font-size: medium;
              color:snow;
              background-color:#7ca1d9;
          }
          .btnWdrw:hover{
              background-color:#21459e;
          }
          .btnDel{
              width:26%;
              height: 50px;
              border:none;
              outline: none;
              border-radius: 5px;
              font-size: medium;
              color:snow;
              background-color:#eba7ab;
              float:right;
          }
          .btnDel:hover{
              background-color:#eb3844;
          }
         .btnSbmt:hover {
             background-image:linear-gradient(to left, #99ADE7,#99ADE7);
           }
         .updateDiv{
             justify-content: space-between;
             margin: 0 auto;
            display: flex;
            justify-content: space-between;
         }
         .btnDel{
         }
         .validators{
             color:#d85656;
             font-size:small;
             float:right;

         }
         .validatorsSrch{
             color:#d85656;
             font-size:small;
         }
          h3{
            font-size:large;
            color:#424642;
            margin-bottom : 10px;
            margin-left:-10px;
          }
          .TxtFieldSearch{
              height:25px;
              width: 48%;
              border-radius: 5px;
              font-family:Verdana;
              padding-left:6px;
          
          }
          .slctCrsBtn{
              height:27px;
              width:20%;
              border-radius: 5px;
              font-family:Verdana;
              float:right;
          }
           .srchBtn{
              height:29px;
              width: 27%;
              border:none;
              border-radius: 5px;
              font-family:Verdana;
              margin-left: 10px;
              background-color:#99ADE7;
              float:right;
          }
          .srchBtn:hover{
              background-color:#88EDD5;
          }

      </style>
</head>

<body>
<form  runat="server">

    <div class="entryForm">
         <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />
        <div class="headerContainer">
            <h2>Enrollment Form</h2>
        </div>


       <div class="content">
       <div class="items">
        <asp:Label Text="Student" CssClass="lables" runat="server" ></asp:Label>
        <asp:TextBox CssClass="TxtFieldSearch" placeholder="ID Number" runat="server" BorderWidth="1px" BorderColor="#424642" ID="searchId"></asp:TextBox> 
        <asp:RequiredFieldValidator CssClass="validatorsSrch" ID="RequiredFieldValidator1" runat="server" ControlToValidate="searchId" Display="Dynamic" ErrorMessage="Required">*</asp:RequiredFieldValidator>
        <asp:Button CssClass="srchBtn" ID="srchStudBtn" runat="server" Text="Search" Font-Bold="True" ForeColor="White" OnClick="srchStudBtn_Click"  />
        </div>
       </div>


        <div runat="server" id="theDiv" class="content">

          <div runat="server" id="statusDiv">
             <h3>Status</h3>
             <div class="items">
            <asp:Label Text="Enrollment Status" CssClass="lables" runat="server" ></asp:Label>
            <asp:DropDownList CssClass="DDL DDLStatus" ID="ddlStatus" runat="server" ></asp:DropDownList>
            </div>

          </div>


        <h3>Student</h3>
         <div class="items">

        <asp:Label Text="Last Name " CssClass="lables" runat="server" ></asp:Label>
       <br /> <asp:TextBox CssClass="TxtField" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtLname" Enabled="False"></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Fist Name " CssClass="lables" runat="server" ></asp:Label>
         <br /> <asp:TextBox CssClass="TxtField"  runat="server" BorderWidth="1px" BorderColor="#424642" Enabled="False" ID="TxtFname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Middle Name " CssClass="lables" runat="server" ></asp:Label>
        <br /> <asp:TextBox CssClass="TxtField" runat="server" BorderWidth="1px" BorderColor="#424642" Enabled="False" BorderStyle="Solid" ID="TxtMname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Gender " CssClass="lables" runat="server" ></asp:Label>
        <asp:RadioButtonList CssClass="radBtnGender" ID="radlGender" runat="server" Enabled="False" RepeatDirection="Horizontal" Width="160px" style="font-size: small">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
        </div>
        <h3>Course</h3>

        <div class="items">
        <asp:Label Text="Course" CssClass="lables" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL" ID="ddlCourse" runat="server" ></asp:DropDownList>
        <asp:Button CssClass="slctCrsBtn" ID="selectCour" runat="server" Text="Select" OnClick="selectCour_Click"  />
        </div>
        
        <div class="items">
        <asp:Label Text="Units" CssClass="lables" runat="server" ></asp:Label>
       <asp:TextBox CssClass="TxtField TxtUnits" Enabled="False" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtUnit"></asp:TextBox> 

        <asp:Label Text="Schedule" CssClass="lables lableProg" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL DLLProg" ID="ddlCourProg" runat="server"></asp:DropDownList>

        </div> 
         <div class="items">
        <asp:Label Text="Year Level" CssClass="lables" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL DLLYear" ID="ddlCourYrLvl" runat="server"></asp:DropDownList>
        <asp:Label Text="Semester" CssClass="lables lableSem" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL DLLSem" ID="ddlCourSem" runat="server"> 
            </asp:DropDownList>
        </div> 


        <h3>Instructor</h3>

         <div class="items">
        <asp:Label Text="Instrcutor" CssClass="lables" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL DLLINST" ID="ddlInstruc" runat="server" ></asp:DropDownList>
        </div>
        



         <div runat="server" id="enrolDiv" class="btnSubmit">
         <asp:Button CssClass="btnSbmt" ID="EnrollStud" runat="server" Text="Enroll Student" Font-Bold="True" ForeColor="White" OnClick="EnrollStud_Click"   />
         </div>

         <div runat="server" id="withDiv" class="updatDiv btnSubmit">

         <asp:Button CssClass="btnUpdate" ID="btnUpdate" runat="server" Text="Update" Font-Bold="True" ForeColor="White" OnClick="btnUpdate_Click" />
         <asp:Button CssClass="btnWdrw" ID="btnWidraw" runat="server" Text="Withdraw" Font-Bold="True" ForeColor="White"  />
         <asp:Button CssClass="btnDel" ID="btnDel" runat="server" Text="Delete" Font-Bold="True" ForeColor="White" />
         </div>

         </div>
    </div>
 </form>
</body>
</html>
