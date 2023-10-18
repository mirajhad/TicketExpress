<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIEWTICKET.aspx.cs" Inherits="mini_project.user.VIEWTICKET" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="css/logo.css" rel="stylesheet" />
    <title>RAILWAY RESERVATION SYSTEM USER</title>
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        
    </style>
    <script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
           
            html2canvas(document.getElementById('admitcard'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("ticket.pdf");
                    alert("Ticket Downloading Started");
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
      
    <div class="container" >
  
        <table style="background-image: url(../img/1.jpeg);" class="w-100"  id="admitcard">
            <tr>
                <td colspan="3" style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto; text-decoration: underline; font-weight: bold; text-transform: capitalize;">RAILWAY RESEVATION SYTEM</td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center" class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">
                    <asp:Image ID="Image1" runat="server" BorderColor="#003300" BorderStyle="Solid" Height="400px" ImageAlign="Baseline" ImageUrl="~/img/TICKETFORM.png" Width="1217px" />
                </td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto; color: #008000; font-weight: lighter; text-decoration: underline;" colspan="3">TRAIN DETAIL</td>
            </tr>
            <tr>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">PNR:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TRAINNO:<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">&nbsp;TRAINNAME:<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
           <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TRANSECTION ID:<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">DATE OF BOOKING:<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">CLASS:<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">FROM:<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">DATE OF JOURNEY:<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TO:<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto; color: #008000; font-weight: lighter; text-decoration: underline;" colspan="3">PASSENGER DETAIL</td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">NAME</td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">GENDER</td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">AGE</td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"><asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto; color: #008000; font-weight: lighter; text-decoration: underline;" colspan="3">TICKET FAIR DETAIL</td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TRAINSECTION-ID:<asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">PNR:<asp:Label ID="Label23" runat="server" Text="Label"></asp:Label></td>
                <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TRAINNO:<asp:Label ID="Label24" runat="server" Text="Label"></asp:Label></td>
            </tr>
            <tr>
               <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">TICKET PRICE:</td>
                  <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto" colspan="2">
                      <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                 </tr>
             <tr>
                 <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">GST:</td>
                  <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto" colspan="2">
                      <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
             </tr>  
             <tr>   
            <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto"> TOTAL AMOUNT:</td>
                  <td class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto" colspan="2">
                      <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label></td>


            </tr>
             <tr>
                <td colspan="3" style="text-align: center" class="auto-style1"  style="background-color: #FFFFFF; border: thin solid #000000; text-align: center; font-family: 'Arial Black'; table-layout: auto">
                    <asp:Image ID="Image2" runat="server" BorderColor="#003300" BorderStyle="Solid" Height="600px" ImageAlign="Baseline" ImageUrl="~/img/ticketinfo.png" Width="1217px" />
                </td>
            </tr>
            
        </table>
        <center>
              <input type="button" id="btnExport" value="Print ticket" onclick="Export()" class="auto-style5" /></center>
        <br />
        <br />
        <br />
        
  
    </div>
        
  
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TICKETBOOKING]"></asp:SqlDataSource>
    </form>
     <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
   
</body>
</html>
