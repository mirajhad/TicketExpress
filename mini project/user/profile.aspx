<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="mini_project.user.profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> 
        
        <br /> <br /> <br /> <br />
     <br /><br /><br /><br /><br />
  <center> <div class="card" style="width:55rem ">
   
  <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt=""/>
  </a>
     <div class="card-body">
    <h5 class="card-title">Personal information</h5>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="467px">
             <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
             <Columns>
                 <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                 <asp:BoundField DataField="email" HeaderText="Email" ReadOnly="True" SortExpression="email" />
                 <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                 <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                 <asp:BoundField DataField="otp" HeaderText="Otp" ReadOnly="True" SortExpression="otp" />
                 <asp:BoundField DataField="status" HeaderText="Login Status" ReadOnly="True" SortExpression="status" />
                 <asp:CommandField HeaderText="Update/Detail" ControlStyle-ForeColor="Red" ControlStyle-Width="50px" ButtonType="Button" ShowEditButton="True" />
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
     
    </div></div></center>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [userdata] WHERE ([email] = @email)" DeleteCommand="DELETE FROM [userdata] WHERE [email] = @email" InsertCommand="INSERT INTO [userdata] ([name], [email], [phone], [password], [otp], [status]) VALUES (@name, @email, @phone, @password, @otp, @status)" UpdateCommand="UPDATE [userdata] SET [name] = @name, [phone] = @phone, [password] = @password, [otp] = @otp, [status] = @status WHERE [email] = @email">
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
        <SelectParameters>
            <asp:SessionParameter Name="email" SessionField="name" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="otp" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
 </div>
</asp:Content>
