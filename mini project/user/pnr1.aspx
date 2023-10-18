<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="pnr1.aspx.cs" Inherits="mini_project.user.pnr1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 38rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">PNR STATUS</h5>
   <asp:TextBox ID="TextBox1" placeholder="Please enter PNR number" runat="server"></asp:TextBox><br /><br />
      <asp:Button ID="Button1" runat="server" BackColor="MidnightBlue" ForeColor="White"  Text="SEARCH" OnClick="Button1_Click"></asp:Button><br /><br/>
      <asp:Label ID="Label1" ForeColor="red" runat="server" Text=""></asp:Label>
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PNR" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="PNR" HeaderText="PNR" ReadOnly="True" SortExpression="PNR" />
              <asp:BoundField DataField="TRAINNO" HeaderText="TRAINNO" SortExpression="TRAINNO" />
              <asp:BoundField DataField="TRAINNAME" HeaderText="TRAINNAME" SortExpression="TRAINNAME" />
              <asp:BoundField DataField="SOURCE" HeaderText="SOURCE" SortExpression="SOURCE" />
              <asp:BoundField DataField="DES" HeaderText="DESTINATION" SortExpression="DES" />
              <asp:BoundField DataField="DOJ" HeaderText="DATE OF JOURNEY" SortExpression="DOJ" />
              <asp:BoundField DataField="CLASS" HeaderText="CLASS" SortExpression="CLASS" />
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

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PNR], [TRAINNO], [TRAINNAME], [SOURCE], [DES], [DOJ], [CLASS] FROM [TICKETBOOKING] WHERE ([PNR] = @PNR)">
          <SelectParameters>
              <asp:ControlParameter ControlID="TextBox1" Name="PNR" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
    <br />  <br />

  </div>
</div>
       
    </center>
     </div> 
</asp:Content>
