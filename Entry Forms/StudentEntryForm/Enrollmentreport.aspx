<%@ Page Title="" Language="C#" MasterPageFile="~/EntryFormMasterPage.Master" AutoEventWireup="true" CodeBehind="Enrollmentreport.aspx.cs" Inherits="StudentEntryForm.Enrollmentreport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    
      <style>
          .entryForm{
              position:absolute;
              top:22%;
              left:50%;
              transform: translate(-50%,-50%);
              width:500px;
              padding:40px;
              border-radius: 10px;
              background:rgb(255, 255, 255);
              margin: 20px 10px;
              box-shadow: 0 0 30px #0e3134;
          }
          .gridview{
              position:absolute;
              top:50%;
              left:50%;
              transform: translate(-50%,-50%);
              padding: 20px;
              border-radius: 10px;
              background:rgb(255, 255, 255);
              margin: 20px 10px;
              box-shadow: 0 0 30px #0e3134;
              min-width:500px;
          }
          .logo{
              width:100px;
              height: 100px;
              overflow: hidden;
              top: calc(-100px/2);
              left: calc(50% - 50px);
              position:absolute;
          }
          .headerContainer{
              text-align: center;
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
          .items{
              padding: 0 40px;
          }
           

          .DDL{
              height:40px;
              width:55%;
              border-radius: 5px;
              font-family:Verdana;
          }


          .btnSubmit{
              text-align: center;
              padding: 10px 0px;
              margin-left: 10px;
              float: right;
          }
          .btnSbmt{
              width:30%;
              height: 40px;
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


          </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
          
    <div class="entryForm">
         <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO"  id="ctuLogo" class="logo" />
        <div class="headerContainer">
            <h2>Students Enrollment Report</h2>
        </div>

       <div class="content">
       <div class="items">
        <asp:Label Text="Status" CssClass="lables" runat="server" ></asp:Label>
        <asp:DropDownList CssClass="DDL" ID="ddlStatus" runat="server" >
             <asp:ListItem>All</asp:ListItem>  
            <asp:ListItem>Enrolled</asp:ListItem>  
            <asp:ListItem>Withdrawn</asp:ListItem>  
        </asp:DropDownList>
       <%-- <asp:RequiredFieldValidator CssClass="validatorsSrch" ID="RequiredFieldValidator1" runat="server" ControlToValidate="searchId" Display="Dynamic" ErrorMessage="Required">*</asp:RequiredFieldValidator>
       --%> <asp:Button CssClass="btnSbmt" ID="srchStudBtn" runat="server" Text="Search" Font-Bold="True" ForeColor="White" OnClick="srchStudBtn_Click"   />
        </div>
       </div>
        </div>


        <div runat="server" id="gridview" class="gridview">
            <asp:GridView ID="gridview_report" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="3px" CellPadding="8" CellSpacing="10" Width="285px" AutoGenerateColumns="False" Font-Size="12pt"  >
                <Columns>
                    <asp:BoundField DataField="ENRL_STUD_IDNUM" HeaderText="ID" ReadOnly="True" SortExpression="ENRL_STUD_IDNUM" />
                    <asp:BoundField DataField="STUD_LASTNAME" HeaderText="LASTNAME" SortExpression="STUD_LASTNAME" />
                    <asp:BoundField DataField="STUD_FIRSTNAME" HeaderText="FIRSTNAME" SortExpression="STUD_FIRSTNAME" />
                    <asp:BoundField DataField="COUR_CODE" HeaderText="COURSE" SortExpression="COUR_CODE" />
                    <asp:BoundField DataField="ENRL_SCHED" HeaderText="SCHEDULE" SortExpression="ENRL_SCHED" />
                    <asp:BoundField DataField="ENRL_YRLVL" HeaderText="YEAR LEVEL" SortExpression="ENRL_YRLVL" />
                    <asp:BoundField DataField="ENRL_SEM" HeaderText="SEMESTER" SortExpression="ENRL_SEM" />
                    <asp:BoundField DataField="INST_FULLNAME" HeaderText="INSTRUCTOR" SortExpression="INST_FULLNAME" />
                    <asp:BoundField DataField="ENRL_STUD_STATUS" HeaderText="STATUS" SortExpression="ENRL_STUD_STATUS" />
                </Columns>
                
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" Font-Size="9" />
                <FooterStyle BackColor="#5D7B9D" Font-Size="9" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Size="9"  Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" Font-Size="9"  ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" Font-Size="9"  ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
  
            <asp:SqlDataSource ID="dbStudents_Source" runat="server"></asp:SqlDataSource>
  
    </div>
     
</asp:Content>
