<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forget.aspx.cs" Inherits="mini_project.forget" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;">
   <br /> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 18rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">FORGET PASSWORD</h5><br />
      <asp:TextBox ID="TextBox1" TextMode="Email" placeholder="Please Enter Registered Mail-id"   runat="server" Height="26px" Width="214px"></asp:TextBox>


    <br />  <br />
  <asp:Button ID="Button1" runat="server" BorderStyle="Solid" BackColor="YellowGreen"   Text="Forget password" OnClick="Button1_Click"></asp:Button>
       <br />
      <asp:Label ID="Label1" runat="server" ForeColor="Red" Text=""></asp:Label>
  </div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdata]"></asp:SqlDataSource>  
</div></center>
     <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br /></div>
</asp:Content>
