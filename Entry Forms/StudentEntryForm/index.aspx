<%@ Page Title="" Language="C#" MasterPageFile="~/EntryFormMasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentEntryForm.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>

        @import url('https://fonts.googleapis.com/css2?family=Righteous&display=swap');
        .entryForm {
            position:absolute;
              top:50%;
              left:50%;
              transform: translate(-50%,-47%);
              width:900px;
              padding:40px;
              border-radius: 10px;
              background-color:rgba(255, 246, 246, 0.9);
              margin: 20px 10px;
              box-shadow: 0 0 30px #0e3134;
        }

        .logo {
             width:120px;
              height: 120px;
              overflow: hidden;
              top: calc(-120px/2);
              left: calc(50% - 60px);
              position:absolute;
        }

        h2 {
            font-size: 50px;
            text-align: center;
            margin: 5px 0;
            margin-top: 15px;
        }

        h3 {
            font-size: 25px;
            text-align: center;
            margin: 5px 0;
        }

        h1 {
            font-size: 90px;
            text-align: center;
            margin: 5px 0;
        }
        .design{
            font-family: 'Righteous', cursive;
             color:#283e71;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">

        <div class="entryForm">
            <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO" id="ctuLogo" class="logo" />
            <h2 class="design">WELCOME</h2>
            <h3 class="design">THIS IS MY</h3>
            <h1 class="design">STUDENTS SYSTEM</h1>
        </div>

</asp:Content>
