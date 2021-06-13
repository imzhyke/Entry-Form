<%@ Page Title="" Language="C#" MasterPageFile="~/EntryFormMasterPage.Master" AutoEventWireup="true" CodeBehind="Search Student.aspx.cs" Inherits="StudentEntryForm.Search_Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server"> Search Student
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
              font-size: 18px;
          }
          h2::after{
            margin-top:5px;
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
          .content{
              padding: 0 60px;
          }
         .items{
             margin:5px 10px;
         }
          .TxtField{
             height:23px;
              width:100%;
              border-radius: 5px;
              font-family:Verdana;
          }
          .updatDiv{
              margin-top:10px;

          }
          
          .btnUpdate{
              width:60%;
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
            font-size:16px;
            color:#424642;
            margin-bottom : 0;
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
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server"> 

    <div class="entryForm">
         <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />
        <div class="headerContainer">
            <h2>Modify Students Information</h2>
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

        <h3>Student</h3>
         <div class="items">

        <asp:Label Text="Last Name " CssClass="lables" runat="server" ></asp:Label>
       <br /> <asp:TextBox CssClass="TxtField" runat="server" BorderWidth="1px" BorderColor="#424642" ID="TxtLname" ></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Fist Name " CssClass="lables" runat="server" ></asp:Label>
         <br /> <asp:TextBox CssClass="TxtField"  runat="server" BorderWidth="1px" BorderColor="#424642"  ID="TxtFname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Middle Name " CssClass="lables" runat="server" ></asp:Label>
        <br /> <asp:TextBox CssClass="TxtField" runat="server" BorderWidth="1px" BorderColor="#424642"  BorderStyle="Solid" ID="TxtMname"></asp:TextBox> 
        </div>

         <div class="items">
        <asp:Label Text="Gender " CssClass="lables" runat="server" ></asp:Label>
        <asp:RadioButtonList CssClass="radBtnGender" ID="radlGender" runat="server" RepeatDirection="Horizontal" Width="160px" style="font-size: small">
             <asp:ListItem>Male</asp:ListItem>
             <asp:ListItem>Female</asp:ListItem>
             </asp:RadioButtonList>
        </div>
 <h3>Address</h3>
         <div class="items">
        <asp:Label Text="Current Address" CssClass="lables" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtCurAdd" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="Current Address" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtCurAdd"></asp:TextBox> 
        </div>

        <div class="items">
        <asp:Label Text="Permanent Address" CssClass="lables" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPerAdd" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="Permanent Address" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtPerAdd"></asp:TextBox> 
        </div>
        <h3>Educational Background</h3>

          <div class="items">
        <asp:Label Text="Elementary" CssClass="lables" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtElem" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtElem"></asp:TextBox> 
        </div>    

        <div class="items">
        <asp:Label Text="Junior High" CssClass="lables" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtJunHigh" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtJunHigh"></asp:TextBox> 
        </div>  
        
        <div class="items">
        <asp:Label Text="Senior High" CssClass="lables" runat="server" ></asp:Label>
             <asp:RequiredFieldValidator CssClass="validators" ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtSenHigh" ErrorMessage="Required">Missing</asp:RequiredFieldValidator>
       <br />  <asp:TextBox CssClass="TxtField" placeholder="School Name" runat="server" BorderWidth="1px" BorderColor="#424642" BorderStyle="Solid" ID="TxtSenHigh"></asp:TextBox> 
        </div>

         <div runat="server" id="withDiv" class="updatDiv">

         <asp:Button CssClass="btnUpdate" ID="btnUpdate" runat="server" Text="Update" Font-Bold="True" ForeColor="White" OnClick="btnUpdate_Click"/>
         <%--<asp:Button CssClass="btnWdrw" ID="btnWidraw" runat="server" Text="Withdraw" Font-Bold="True" ForeColor="White"  />--%>
         <asp:Button CssClass="btnDel" ID="btnDel" runat="server" Text="Delete" Font-Bold="True" ForeColor="White" OnClick="btnDel_Click" />
         </div>

         </div>
    </div>
</asp:Content>
