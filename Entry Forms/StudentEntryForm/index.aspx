<%@ Page Title="" Language="C#" MasterPageFile="~/EntryFormMasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="StudentEntryForm.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .bodyz {
            margin: 0;
            padding: 0;
            background-image: url(https://scontent.fmnl4-6.fna.fbcdn.net/v/t1.6435-9/51056140_1031632170370924_2140581867483561984_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=973b4a&_nc_ohc=ib4dDajOTucAX8eAyP2&_nc_oc=AQnonhCbkjpOaun8tOB1gQCSp074VjWL2fItiYfTm-oc6yxHwCYXxcpsTTCmIvMsbAw&_nc_ht=scontent.fmnl4-6.fna&oh=d36cd3b418c06e141127b51c4062f853&oe=60D014E0);
            background-repeat: no-repeat;
            background-position: center;
            width:100%;
            height:auto;
        }

        .entryForm {
            position: absolute;
            top: 35%;
            left: 50%;
            transform: translate(-50%,-50%);
            width: 700px;
            padding: 40px;
            margin: 20px 10px;
            box-shadow: #0e3134;
            color: #fffdf7;
        }

        .logo {
            width: 150px;
            height: 150px;
            overflow: hidden;
            position: relative;
            top: 30%;
            left: 50%;
            transform: translate(-50%,-10%);
        }

        h2 {
            font-size: 50px;
            text-align: center;
            margin: 5px 0;
            margin-top: 15px;
        }

        h3 {
            font-size: 20px;
            text-align: center;
            margin: 5px 0;
        }

        h1 {
            font-size: 90px;
            text-align: center;
            margin: 5px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
    <div class="bodyz">
        <div class="entryForm">
            <img src="https://4.bp.blogspot.com/_ELQIMjUsd1Y/TI2Z14FJm_I/AAAAAAAAABY/-jzZbgI-o9k/s1600/official+ctu+logov2.png" alt="CTU LOGO" id="ctuLogo" class="logo" />
            <h2>WELCOME</h2>
            <h3>THIS IS MY</h3>
            <h1>STUDENTS SYSTEM</h1>
        </div>
    </div>
</asp:Content>
