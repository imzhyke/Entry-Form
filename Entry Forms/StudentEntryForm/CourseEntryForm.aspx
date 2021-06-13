<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/EntryFormMasterPage.Master" CodeBehind="CourseEntryForm.aspx.cs" Inherits="StudentEntryForm.CourseEntryForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">Course Entry Form
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">


      <style>

          .entryForm{
                
              position:absolute;
              top:50%;
              left:50%;
              transform: translate(-50%,-47%);
              width:500px;
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
          .ddlYear{
              width:15%;
          }
          .lblProg{
              margin-left: 25px;
          }
          .ddlProg{
              width:35%;
              float:right;
          }



      </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server"> 

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
        <asp:Label Text="Course Description" CssClass="lable" runat="server" ></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="validators" ErrorMessage="Missing" ControlToValidate="TxtCourse" ></asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="Course" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtCourse"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Units" CssClass="lable" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="validators" ErrorMessage="Missing" ControlToValidate="TxtUnit" ></asp:RequiredFieldValidator>
        <br /> <asp:TextBox CssClass="TxtField" placeholder="Units" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtUnit"></asp:TextBox> 
        </div>
        
            <div class="items">
       <asp:Label Text="Years" CssClass="lable" runat="server" ></asp:Label>
            <asp:DropDownList  CssClass="DropDownList ddlYear" ID="ddlYear" runat="server">
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
            </asp:DropDownList>
       
            <asp:Label Text="Program" CssClass="lable lblProg" runat="server" ></asp:Label>
            <asp:DropDownList  CssClass="DropDownList ddlProg" ID="ddlProg" runat="server">
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
</asp:Content>
