<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo1.aspx.cs" Inherits="mini_project.user.demo1" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/logo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <br />

    <br /><br />
   
    <center><div class="card" style="width: 38rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo.png" width="120" height="120" alt=""/>
  </a>
  <div class="card-body">
    <h5 class="card-title">OUR BOOKING DETAIL</h5>
      <hr style="color:black" />
      
     
    
     

      <table class="table table-hover">
  <thead>
    <tr>
    
      <th scope="col"><asp:Label ID="Label3" runat="server" color="blue" Text="TRAIN NO"></asp:Label></th>
      <th scope="col"> <asp:TextBox ReadOnly="true"  ID="TextBox17" runat="server"></asp:TextBox></th>
   
    </tr>
  </thead>
  <tbody>
    <tr>
      
      <th scope="col"><asp:Label ID="Label4" runat="server" Text="TRAIN NAME"></asp:Label></th>
      <th scope="col"><asp:TextBox ReadOnly="true"  ID="TextBox11" runat="server"></asp:TextBox></th>
    </tr>
    <tr>
     
   
      <th scope="col"><asp:Label ID="Label5" runat="server" Text="SOURCE"></asp:Label></th>
      <th scope="col"><asp:TextBox ReadOnly="true"  ID="TextBox18" runat="server"></asp:TextBox></th>
    </tr>
    <tr>
     
   
      <th scope="col"><asp:Label ID="Label7" runat="server" Text="DESTINATION"></asp:Label></th>
      <th scope="col"><asp:TextBox ReadOnly="true"  ID="TextBox19" runat="server"></asp:TextBox></th
    </tr>
      <tr>
     
   
      <th scope="col"><asp:Label ID="Label9" runat="server" Text="DATE OF JOURNEY"></asp:Label></th>
      <th scope="col"><asp:TextBox ReadOnly="true"  ID="TextBox20" runat="server"></asp:TextBox></th>
    </tr>
       <tr>
     
   
      <th scope="col"><asp:Label ID="Label2" runat="server" Text="CLASS"></asp:Label></th>
      <th scope="col"><asp:DropDownList ID="DropDownList6" runat="server" Height="30px" Width="180px">
          <asp:ListItem>SLEEPER</asp:ListItem>
          <asp:ListItem>1st AC</asp:ListItem>
          <asp:ListItem>2nd AC</asp:ListItem>
          <asp:ListItem>3rd AC</asp:ListItem>
          </asp:DropDownList> <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Note: verify your class"></asp:Label></th>
    </tr>
  </tbody>
</table>

     
  
      
    
      <hr />
      <h6 class="card-title">PLEASE ENTER PASSENGER DETAIL</h6>
      <hr />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  
<div class="container">
        </div>
    <div class="form-group">
      <label>Select Number a number of passenger</label>

      <select class="form-control" id="sel1">
           <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
           <option>5</option>        
      </select>
      
    </div>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Adhar</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Age</th>
                
            </tr>
        </thead>
        
        <tbody>
            
            <tr>
      <td><asp:TextBox Height="30px" Width="152px" placeholder="enter adhar number" ID="TextBox3" runat="server"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Fetch detail"></asp:Button>
                </td>
                  
      <td><asp:TextBox Height="30px" Width="152px" ID="TextBox6" runat="server"></asp:TextBox></td>
      <td><asp:DropDownList Height="30px" Width="152px" ID="DropDownList1" runat="server">
          <asp:ListItem>PLEASE SELECT GENDER</asp:ListItem>
          <asp:ListItem>MALE</asp:ListItem>
          <asp:ListItem>FEMALE</asp:ListItem>
          <asp:ListItem>OTHER</asp:ListItem>
          </asp:DropDownList></td>
      <td><asp:TextBox ID="TextBox7" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></td>
    
    </tr>
            <tr>
      <td><asp:TextBox Height="30px" Width="152px" placeholder="enter adhar number" ID="TextBox15" runat="server"></asp:TextBox><asp:Button ID="Button4" runat="server" Text="Fetch detail"></asp:Button></td>
      
      <td><asp:TextBox Height="30px" Width="152px" ID="TextBox8" runat="server"></asp:TextBox></td>
      <td><asp:DropDownList Height="30px" Width="152px" ID="DropDownList2" runat="server">
          <asp:ListItem>-----</asp:ListItem>
          <asp:ListItem>MALE</asp:ListItem>
          <asp:ListItem>FEMALE</asp:ListItem>
          <asp:ListItem>OTHER</asp:ListItem>
          </asp:DropDownList></td>
      <td><asp:TextBox ID="TextBox9" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></td>
      
    </tr>
            <tr>
      <td><asp:TextBox Height="30px" Width="152px" placeholder="enter adhar number" ID="TextBox4" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="Fetch detail"></asp:Button></td>
      
      <td><asp:TextBox Height="30px" Width="152px" ID="TextBox10" runat="server"></asp:TextBox></td>
      <td><asp:DropDownList Height="30px" Width="152px" ID="DropDownList3" runat="server">
        <asp:ListItem>-----</asp:ListItem>
          <asp:ListItem>MALE</asp:ListItem>
          <asp:ListItem>FEMALE</asp:ListItem>
          <asp:ListItem>OTHER</asp:ListItem>
          </asp:DropDownList></td>
      <td><asp:TextBox ID="TextBox12" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></td>
      
    </tr>
            
      <tr>
          <td><asp:TextBox Height="30px" Width="152px" placeholder="enter adhar number" ID="TextBox5" runat="server"></asp:TextBox><asp:Button ID="Button3" runat="server" Text="Fetch detail"></asp:Button></td>
      
      <td><asp:TextBox Height="30px" Width="152px" ID="TextBox13" runat="server"></asp:TextBox></td>
      <td><asp:DropDownList Height="30px" Width="152px" ID="DropDownList4" runat="server">
          <asp:ListItem>-----</asp:ListItem>
          <asp:ListItem>MALE</asp:ListItem>
          <asp:ListItem>FEMALE</asp:ListItem>
          <asp:ListItem>OTHER</asp:ListItem>
          </asp:DropDownList></td>
      <td><asp:TextBox ID="TextBox14" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></td>
      
    </tr>
            <tr>
      <td><asp:TextBox Height="30px" Width="152px" ID="TextBox1" runat="server"></asp:TextBox></td>
      <td><asp:DropDownList Height="30px" Width="152px" ID="DropDownList5" runat="server">
          <asp:ListItem>-----</asp:ListItem>
          <asp:ListItem>MALE</asp:ListItem>
          <asp:ListItem>FEMALE</asp:ListItem>
          <asp:ListItem>OTHER</asp:ListItem>
          </asp:DropDownList></td>
      <td><asp:TextBox ID="TextBox2" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></td>
      
    </tr>
             
            
        </tbody>
    </table>
	
	</form>
	
	</div>

    <script>


        function act() {

            var num = $("#sel1 option:selected").text();
            $('#example tr').each(function (i, row) {
                if (num < 0) {
                    $(this).css('display', 'none');
                } else {
                    num = num - 1;
                    $(this).css('display', 'table-row');
                }
            });
        }

        $(function () {
            act();
        });

        $("#sel1").change(function () {
            act();
        })
    </script>
	

    <br />  <br />

        </div>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TICKETBOOKING]"></asp:SqlDataSource>    
</div>

      
    </center>
  

   



    </div>
    </form>
</body>
</html>
