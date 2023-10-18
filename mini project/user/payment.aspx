<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="mini_project.user.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 28rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt=""/>
  </a>
  <div class="card-body">
     
    <h5 class="card-title">ENTE YOUR PAYMENT DETAIL</h5><br />
      <asp:Label ID="Label1" runat="server" Text="PNR NO:"></asp:Label>
      <asp:TextBox ID="TextBox1"  Placeholder="Enter your pan number" runat="server"></asp:TextBox> <br />  <br />
          <asp:Label ID="Label2" runat="server" Text="TRAIN NO:"></asp:Label>
      <asp:TextBox ID="TextBox2"  Placeholder="Enter your train number" runat="server"></asp:TextBox> <br />  <br />
            <asp:Label ID="Label3" runat="server" Text="EMAIL-ID:"></asp:Label>
      <asp:TextBox ID="TextBox3" Placeholder="Enter your Email-id"  runat="server"></asp:TextBox> <br />  <br />
            <asp:Label ID="Label4" runat="server" Text="NO TICKET:"></asp:Label>
      <asp:TextBox ID="TextBox4"  Placeholder="VERIFY AND ENTER NUMBER OF TICKET" Text="1" ReadOnly="true" runat="server"></asp:TextBox> <br />  <br />
       <asp:Label ID="Label5" runat="server" Text="AMOUNT:"></asp:Label>
      <asp:TextBox ID="TextBox5"  Placeholder="Enter your Amount" Text="500" ReadOnly="false" runat="server"></asp:TextBox> <br />  <br />
       <asp:Button ID="Button1" runat="server" Text="Pay Now" OnClick="Button1_Click" />  
</div></center>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TICKETBOOKING]"></asp:SqlDataSource> 

     <br />  <br />  <br />  <br /> <br />  <br />  <br />  <br /></div>
   
</asp:Content>

