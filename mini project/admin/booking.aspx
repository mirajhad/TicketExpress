<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="mini_project.admin.booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="background-image: url(../img/1.jpeg);  width:1900px; height:550px ;  border: 2px solid black;"> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: AUTO;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt=""/>
  </a>
        <div class="table-responsive">
  <table class="table">
  <div class="card-body">
    <h5 class="card-title">WELOCME TO ADMIN PANNEL BOOKING TICKET DETAIL:</h5>
            
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PNR" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
       <Columns>
           <asp:BoundField DataField="PNR" HeaderText="PNR" ReadOnly="True" SortExpression="PNR" />
           <asp:BoundField DataField="TRAINNO" HeaderText="TRAINNO" SortExpression="TRAINNO" />
           <asp:BoundField DataField="TRAINNAME" HeaderText="TRAINNAME" SortExpression="TRAINNAME" />
           <asp:BoundField DataField="SOURCE" HeaderText="SOURCE" SortExpression="SOURCE" />
           <asp:BoundField DataField="DES" HeaderText="DESTINATION" SortExpression="DES" />
           <asp:BoundField DataField="DOJ" HeaderText="DATE OF JOURNEY" SortExpression="DOJ" />
           <asp:BoundField DataField="CLASS" HeaderText="CLASS" SortExpression="CLASS" />
           <asp:BoundField DataField="REGUSER" HeaderText="REGUSER" SortExpression="REGUSER" />
           <asp:BoundField DataField="USER1" HeaderText="USER-1" SortExpression="USER1" />
           <asp:BoundField DataField="GENDER1" HeaderText="GENDER-1" SortExpression="GENDER1" />
           <asp:BoundField DataField="AGE1" HeaderText="AGE-1" SortExpression="AGE1" />
           <asp:BoundField DataField="USER2" HeaderText="USER-2" SortExpression="USER2" />
           <asp:BoundField DataField="GENDER2" HeaderText="GENDER-2" SortExpression="GENDER2" />
           <asp:BoundField DataField="AGE2" HeaderText="AGE-2" SortExpression="AGE2" />
           <asp:BoundField DataField="USER3" HeaderText="USER-3" SortExpression="USER3" />
           <asp:BoundField DataField="GENDER3" HeaderText="GENDER-3" SortExpression="GENDER3" />
           <asp:BoundField DataField="AGE3" HeaderText="AGE-3" SortExpression="AGE3" />
           <asp:BoundField DataField="USER4" HeaderText="USER-4" SortExpression="USER4" />
           <asp:BoundField DataField="GENDER4" HeaderText="GENDER-4" SortExpression="GENDER4" />
           <asp:BoundField DataField="AGE4" HeaderText="AGE-4" SortExpression="AGE4" />
           <asp:BoundField DataField="USER5" HeaderText="USER-5" SortExpression="USER5" />
           <asp:BoundField DataField="GENDER5" HeaderText="GENDER-5" SortExpression="GENDER5" />
           <asp:BoundField DataField="AGE5" HeaderText="AGE-5" SortExpression="AGE5" />
           <asp:CommandField HeaderText="UPDATE/CANCEL BOOKING" ControlStyle-Width="80px" ButtonType="Button" ControlStyle-ForeColor="Red" ShowDeleteButton="True" ShowEditButton="True" DeleteText="Cancel" >
<ControlStyle ForeColor="Red"></ControlStyle>
           </asp:CommandField>
       </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
      </asp:GridView>
 
    <br />  <br />
 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TICKETBOOKING]" DeleteCommand="DELETE FROM [TICKETBOOKING] WHERE [PNR] = @PNR" InsertCommand="INSERT INTO [TICKETBOOKING] ([PNR], [TRAINNO], [TRAINNAME], [SOURCE], [DES], [DOJ], [CLASS], [REGUSER], [USER1], [GENDER1], [AGE1], [USER2], [GENDER2], [AGE2], [USER3], [GENDER3], [AGE3], [USER4], [GENDER4], [AGE4], [USER5], [GENDER5], [AGE5]) VALUES (@PNR, @TRAINNO, @TRAINNAME, @SOURCE, @DES, @DOJ, @CLASS, @REGUSER, @USER1, @GENDER1, @AGE1, @USER2, @GENDER2, @AGE2, @USER3, @GENDER3, @AGE3, @USER4, @GENDER4, @AGE4, @USER5, @GENDER5, @AGE5)" UpdateCommand="UPDATE [TICKETBOOKING] SET [TRAINNO] = @TRAINNO, [TRAINNAME] = @TRAINNAME, [SOURCE] = @SOURCE, [DES] = @DES, [DOJ] = @DOJ, [CLASS] = @CLASS, [REGUSER] = @REGUSER, [USER1] = @USER1, [GENDER1] = @GENDER1, [AGE1] = @AGE1, [USER2] = @USER2, [GENDER2] = @GENDER2, [AGE2] = @AGE2, [USER3] = @USER3, [GENDER3] = @GENDER3, [AGE3] = @AGE3, [USER4] = @USER4, [GENDER4] = @GENDER4, [AGE4] = @AGE4, [USER5] = @USER5, [GENDER5] = @GENDER5, [AGE5] = @AGE5 WHERE [PNR] = @PNR">
     <DeleteParameters>
         <asp:Parameter Name="PNR" Type="String" />
     </DeleteParameters>
     <InsertParameters>
         <asp:Parameter Name="PNR" Type="String" />
         <asp:Parameter Name="TRAINNO" Type="String" />
         <asp:Parameter Name="TRAINNAME" Type="String" />
         <asp:Parameter Name="SOURCE" Type="String" />
         <asp:Parameter Name="DES" Type="String" />
         <asp:Parameter Name="DOJ" Type="DateTime" />
         <asp:Parameter Name="CLASS" Type="String" />
         <asp:Parameter Name="REGUSER" Type="String" />
         <asp:Parameter Name="USER1" Type="String" />
         <asp:Parameter Name="GENDER1" Type="String" />
         <asp:Parameter Name="AGE1" Type="String" />
         <asp:Parameter Name="USER2" Type="String" />
         <asp:Parameter Name="GENDER2" Type="String" />
         <asp:Parameter Name="AGE2" Type="String" />
         <asp:Parameter Name="USER3" Type="String" />
         <asp:Parameter Name="GENDER3" Type="String" />
         <asp:Parameter Name="AGE3" Type="String" />
         <asp:Parameter Name="USER4" Type="String" />
         <asp:Parameter Name="GENDER4" Type="String" />
         <asp:Parameter Name="AGE4" Type="String" />
         <asp:Parameter Name="USER5" Type="String" />
         <asp:Parameter Name="GENDER5" Type="String" />
         <asp:Parameter Name="AGE5" Type="String" />
     </InsertParameters>
     <UpdateParameters>
         <asp:Parameter Name="TRAINNO" Type="String" />
         <asp:Parameter Name="TRAINNAME" Type="String" />
         <asp:Parameter Name="SOURCE" Type="String" />
         <asp:Parameter Name="DES" Type="String" />
         <asp:Parameter Name="DOJ" Type="DateTime" />
         <asp:Parameter Name="CLASS" Type="String" />
         <asp:Parameter Name="REGUSER" Type="String" />
         <asp:Parameter Name="USER1" Type="String" />
         <asp:Parameter Name="GENDER1" Type="String" />
         <asp:Parameter Name="AGE1" Type="String" />
         <asp:Parameter Name="USER2" Type="String" />
         <asp:Parameter Name="GENDER2" Type="String" />
         <asp:Parameter Name="AGE2" Type="String" />
         <asp:Parameter Name="USER3" Type="String" />
         <asp:Parameter Name="GENDER3" Type="String" />
         <asp:Parameter Name="AGE3" Type="String" />
         <asp:Parameter Name="USER4" Type="String" />
         <asp:Parameter Name="GENDER4" Type="String" />
         <asp:Parameter Name="AGE4" Type="String" />
         <asp:Parameter Name="USER5" Type="String" />
         <asp:Parameter Name="GENDER5" Type="String" />
         <asp:Parameter Name="AGE5" Type="String" />
         <asp:Parameter Name="PNR" Type="String" />
     </UpdateParameters>
      </asp:SqlDataSource>
  </div>
      </table>
</div>
</div>
       
    </center>
     </div> 
</asp:Content>
