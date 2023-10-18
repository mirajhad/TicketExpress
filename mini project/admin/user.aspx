<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="mini_project.admin.user1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br /> <br /> <br /> <br />
    <center><div class="card" style="width: auto;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">WELOCME TO ADMIN PANNEL REGISTERED USER</h5>
   
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="email" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="name">
              <ControlStyle BackColor="#66FF66" BorderColor="Black" BorderStyle="Solid" />
              </asp:BoundField>
              <asp:BoundField DataField="email" HeaderText="EMAIL-ID" ReadOnly="True" SortExpression="email" />
              <asp:BoundField DataField="phone" HeaderText="PHONE" SortExpression="phone" />
              <asp:BoundField DataField="password" HeaderText="PASSWORD" SortExpression="password" />
              <asp:BoundField DataField="otp" HeaderText="OTP" SortExpression="otp" />
              <asp:BoundField DataField="status" HeaderText="STATUS" SortExpression="status" />
              <asp:CommandField DeleteText="Remove" HeaderText="UPDATE/REMOVE USER" ControlStyle-Width="80px" ButtonType="Button" ControlStyle-ForeColor="Red"  ShowDeleteButton="True" ShowEditButton="True" />
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdata]" DeleteCommand="DELETE FROM [userdata] WHERE [email] = @email" InsertCommand="INSERT INTO [userdata] ([name], [email], [phone], [password], [otp], [status]) VALUES (@name, @email, @phone, @password, @otp, @status)" UpdateCommand="UPDATE [userdata] SET [name] = @name, [phone] = @phone, [password] = @password, [otp] = @otp, [status] = @status WHERE [email] = @email">
          <DeleteParameters>
              <asp:Parameter Name="email" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="name" Type="String" />
              <asp:Parameter Name="email" Type="String" />
              <asp:Parameter Name="phone" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="otp" Type="String" />
              <asp:Parameter Name="status" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="name" Type="String" />
              <asp:Parameter Name="phone" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="otp" Type="String" />
              <asp:Parameter Name="status" Type="String" />
              <asp:Parameter Name="email" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
    <br />  <br />
   
  </div>
</div></center>
</asp:Content>


