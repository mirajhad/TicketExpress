<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="mini_project.reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

       <script src="https://kit.fontawesome.com/840b1ebd19.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    
    <style>
        body {
             background: url('img/1 (3).jpeg') no-repeat center center/cover;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
            <br />
    <br />  <br />
            
        <br />
<center>
    <div class="card" style="width: 28rem;">
        <center>
            <!-- Just an image -->

   <a class="navbar-brand" href="#">
    <img src="img/logo3.png" width="120" height="120" alt="">
  </a>

 
  <div class="card-body">
    <h5 class="card-title">WELCOME TO USER REGISTRATION </h5>
<form method="POST" action="#">
    <div class="container">

        <div class="box">
            <i class="fa fa-user"></i>
            
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="Enter your name"></asp:TextBox>
        </div>

        <div class="box">
            <i class="fa fa-envelope-o"></i>
      
            <asp:TextBox ID="TextBox2" runat="server"  placeholder="Enter your Email" TextMode="Email"></asp:TextBox>
        </div>

        <div class="box">
            <i class="fa fa-graduation-cap"></i>
            
            <asp:TextBox ID="TextBox3" runat="server"  placeholder="Enter your mobile number" TextMode="Phone"></asp:TextBox>
        </div>
       
        <div class="box">
            <i class="fa fa-key"></i>
       
            <asp:TextBox ID="TextBox4" runat="server"   placeholder="Enter password" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
        </div>
     
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     
        <asp:Button ID="Button1" runat="server" BackColor="YellowGreen" Text="SUBMIT" OnClick="Button1_Click"></asp:Button>
        <br />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdata]"></asp:SqlDataSource>
  <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
    </div>
</form>
  </div>


    
</center>
    </body>


</asp:Content>
