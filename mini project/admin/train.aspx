<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="train.aspx.cs" Inherits="mini_project.admin.train" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 28rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt=""/>
  </a>
  <div class="card-body">
      <hr />
    <h5 class="card-title">ADD TRAIN DETAIL</h5><hr />

      <asp:TextBox ID="TextBox1" placeholder="Please enter trainno " runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox2" placeholder="Please enter trainname" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox3" placeholder="Please enter source" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox4" placeholder="Please enter destination" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox5" type="date"  runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox6" placeholder="Please enter class1" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox7" placeholder="Please enter class2" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox8" placeholder="Please enter class3" runat="server"></asp:TextBox><br /><br />
      <asp:TextBox ID="TextBox9" placeholder="Please enter class4" runat="server"></asp:TextBox><br /><br />
      <asp:Button ID="Button1" runat="server"  Text="ADD TRAIN" OnClick="Button1_Click"></asp:Button><br /><br/>
    
  
  </div>
</div>
       
    </center>
    <center><div class="card" style="width: auto;">
 
  <div class="card-body">
    <h5 class="card-title">WELOCME TO ADMIN PANNEL RUNNING TRAIN DETAIL</h5>

      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainno" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <Columns>
              <asp:BoundField DataField="trainno" HeaderText="TRAINNO" ReadOnly="True" SortExpression="trainno" />
              <asp:BoundField DataField="trainname" HeaderText="TRAINNAME" SortExpression="trainname" />
              <asp:BoundField DataField="source" HeaderText="SOURCE" SortExpression="source" />
              <asp:BoundField DataField="destination" HeaderText="DESTINATION" SortExpression="destination" />
              <asp:BoundField DataField="jdate" HeaderText="RUNING DATE" SortExpression="jdate" />
              <asp:BoundField DataField="class1" HeaderText="CLASS-1" SortExpression="class1" />
              <asp:BoundField DataField="class2" HeaderText="CLASS-2" SortExpression="class2" />
              <asp:BoundField DataField="class3" HeaderText="CLASS-3" SortExpression="class3" />
              <asp:BoundField DataField="class4" HeaderText="CLASS-4" SortExpression="class4" />
              <asp:CommandField DeleteText="CANCEL" ControlStyle-ForeColor="Red" ControlStyle-Width="80px" ButtonType="Button"  HeaderText="CANCEL/UPDATE TRAIN" ShowDeleteButton="True" ShowEditButton="True"  >
<ControlStyle ForeColor="Red" Width="80px"></ControlStyle>
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
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train]" DeleteCommand="DELETE FROM [Train] WHERE [trainno] = @trainno" InsertCommand="INSERT INTO [Train] ([trainno], [trainname], [source], [destination], [jdate], [class1], [class2], [class3], [class4]) VALUES (@trainno, @trainname, @source, @destination, @jdate, @class1, @class2, @class3, @class4)" UpdateCommand="UPDATE [Train] SET [trainname] = @trainname, [source] = @source, [destination] = @destination, [jdate] = @jdate, [class1] = @class1, [class2] = @class2, [class3] = @class3, [class4] = @class4 WHERE [trainno] = @trainno">
          <DeleteParameters>
              <asp:Parameter Name="trainno" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="trainno" Type="Int32" />
              <asp:Parameter Name="trainname" Type="String" />
              <asp:Parameter Name="source" Type="String" />
              <asp:Parameter Name="destination" Type="String" />
              <asp:Parameter Name="jdate" Type="DateTime" />
              <asp:Parameter Name="class1" Type="String" />
              <asp:Parameter Name="class2" Type="String" />
              <asp:Parameter Name="class3" Type="String" />
              <asp:Parameter Name="class4" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="trainname" Type="String" />
              <asp:Parameter Name="source" Type="String" />
              <asp:Parameter Name="destination" Type="String" />
              <asp:Parameter Name="jdate" Type="DateTime" />
              <asp:Parameter Name="class1" Type="String" />
              <asp:Parameter Name="class2" Type="String" />
              <asp:Parameter Name="class3" Type="String" />
              <asp:Parameter Name="class4" Type="String" />
              <asp:Parameter Name="trainno" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
       <br />  <br />
   <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train]"></asp:SqlDataSource>
  </div>
</div></center></div>
</asp:Content>
