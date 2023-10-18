<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adlogin.aspx.cs" Inherits="mini_project.admin.adlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/logo.css" rel="stylesheet" />
</head>
<body background="bg.jpg">
    
    <form id="form1" runat="server">
        <center><br /><br /><br /><br /><br /><br /><br />
    <div style="padding-left:500PX">
   <div style="float:left"  class="card" style="width: 18rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">WELOCME TO ADMIN LOGIN PANNEL</h5>
  <i class="fa fa-envelope-o"></i>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
      <i class="fa fa-key"></i>
    <asp:TextBox ID="TextBox2" type="password"  runat="server"></asp:TextBox><br /><br />
      <asp:Button ID="Button1" BackColor="YellowGreen" runat="server" Text="LOGIN" OnClick="Button1_Click"></asp:Button>

  
    <br />  <br />
    <asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ADMIN]"></asp:SqlDataSource>
  </div>
</div> 
    </div>
         </center>
    </form>
       
</body>
</html>
