<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="otp.aspx.cs" Inherits="mini_project.otp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br /> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 18rem; top: 0px; left: 0px; height: 327px;">
 <a class="navbar-brand" href="#">
    <img src="../img/a1.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">ACCOUNT VERIFICATION</h5><br />
      <asp:TextBox ID="TextBox1" placeholder="Please Enter Otp" runat="server"></asp:TextBox>


    <br />  <br />
  <asp:Button ID="Button1" runat="server" BackColor="BlueViolet" ForeColor="White" BorderStyle="Solid"  Text="Verify Now" OnClick="Button1_Click"></asp:Button>

           <br /> <br /> <br /> <br />
        <asp:Label ID="Label1" runat="server" ForeColor="Red"  Text=""></asp:Label>
  </div>
   
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdata]"></asp:SqlDataSource>  
</div></center>
     <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br />
</asp:Content>
