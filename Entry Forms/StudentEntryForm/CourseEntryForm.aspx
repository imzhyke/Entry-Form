<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseEntryForm.aspx.cs" Inherits="StudentEntryForm.CourseEntryForm" %>
<!--
Title: Course Entry Program
Created By: Ezekiel P. Villadolid
Date: 3/30/2021
-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Course Entry Form</title>
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
          .lable{
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
              width:100%;
              border-radius: 5px;
              font-family:Verdana;
              height: 29px;
          }

          .btnSubmit{
              text-align: center;
              padding: 15px 20px ;
              margin-left: 5px;
          
               
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
          .DropDownList{
            width:77%;
            margin-left: 5px;
            height: 29px;
            border-radius: 5px;
            font-family:Verdana;

          }





      </style>
</head>
<body>
<form  runat="server">

    <div class="entryForm">
         <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />
        <div class="headerContainer">
            <h2>Course Entry Form</h2>
        </div>


        <div class="content">

        <h3>Course Information</h3>
         <div class="items">

        <asp:Label Text="Course Code" CssClass="lable" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator ID="rfvCode" runat="server" CssClass="validators" ErrorMessage="Missing" ControlToValidate="TxtCode" ></asp:RequiredFieldValidator>
       <br /> <asp:TextBox CssClass="TxtField" placeholder="Course Code" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtCode"></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Course" CssClass="lable" runat="server" ></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validators" ErrorMessage="Missing" ControlToValidate="TxtCourse" ></asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="Course" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtCourse"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Units" CssClass="lable" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validators" ErrorMessage="Missing" ControlToValidate="TxtUnit" ></asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="Units" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtUnit"></asp:TextBox> 
        </div>

        
      
        <div class="items">
          
            <asp:Label Text="Program" CssClass="lable" runat="server" ></asp:Label>
            <asp:DropDownList  CssClass="DropDownList" ID="ddlProg" runat="server">
                <asp:ListItem>Day</asp:ListItem>
                <asp:ListItem>Evening</asp:ListItem>
                <asp:ListItem>Day &amp; Evening</asp:ListItem>
            </asp:DropDownList>
        </div>

       

         <div class="btnSubmit">
         <asp:Button CssClass="btnSbmt" ID="AddStudentBtn" runat="server" Text="ADD COURSE" Font-Bold="True" OnClick="AddStudentBtn_Click"/>
         </div>
         </div>
    </div>
 </form>
</body>
</html>
