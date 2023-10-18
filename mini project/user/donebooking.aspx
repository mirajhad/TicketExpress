<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="donebooking.aspx.cs" Inherits="mini_project.user.donebooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> <br /> <br /> <br /> <br />
    <center><div class="card" style="width: auto;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo3.png" width="120" height="120" alt=""/>
  </a>
  <div class="card-body">
    <h5 class="card-title">MY TICKET</h5>
      
      
      
    <br />  <br />
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [PNR], [TRAINNO], [TRAINNAME], [SOURCE], [DES], [DOJ], [CLASS] FROM [TICKETBOOKING] WHERE ([REGUSER] = @REGUSER)" DeleteCommand="DELETE FROM [TICKETBOOKING] WHERE [PNR] = @PNR" InsertCommand="INSERT INTO [TICKETBOOKING] ([PNR], [TRAINNO], [TRAINNAME], [SOURCE], [DES], [DOJ], [CLASS]) VALUES (@PNR, @TRAINNO, @TRAINNAME, @SOURCE, @DES, @DOJ, @CLASS)" UpdateCommand="UPDATE [TICKETBOOKING] SET [TRAINNO] = @TRAINNO, [TRAINNAME] = @TRAINNAME, [SOURCE] = @SOURCE, [DES] = @DES, [DOJ] = @DOJ, [CLASS] = @CLASS WHERE [PNR] = @PNR">
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
       </InsertParameters>
       <SelectParameters>
           <asp:SessionParameter Name="REGUSER" SessionField="name" Type="String" />
       </SelectParameters>
       <UpdateParameters>
           <asp:Parameter Name="TRAINNO" Type="String" />
           <asp:Parameter Name="TRAINNAME" Type="String" />
           <asp:Parameter Name="SOURCE" Type="String" />
           <asp:Parameter Name="DES" Type="String" />
           <asp:Parameter Name="DOJ" Type="DateTime" />
           <asp:Parameter Name="CLASS" Type="String" />
           <asp:Parameter Name="PNR" Type="String" />
       </UpdateParameters>
      </asp:SqlDataSource>
  </div>


             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PNR" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="682px" AllowSorting="True">
                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                 <Columns>
                     <asp:BoundField DataField="PNR" HeaderText="PNR" ReadOnly="True" SortExpression="PNR" />
                     <asp:BoundField DataField="TRAINNO" HeaderText="TRAINNO" SortExpression="TRAINNO" />
                     <asp:BoundField DataField="TRAINNAME" HeaderText="TRAINNAME" SortExpression="TRAINNAME" />
                     <asp:BoundField DataField="SOURCE" HeaderText="SOURCE" SortExpression="SOURCE" />
                     <asp:BoundField DataField="DES" HeaderText="DESTINATION" SortExpression="DES" />
                     <asp:BoundField DataField="DOJ" HeaderText="DATE OF JOURNEY" SortExpression="DOJ" />
                     <asp:BoundField DataField="CLASS" HeaderText="CLASS" SortExpression="CLASS" />
                     <asp:HyperLinkField HeaderText="VIEW TICKET"  ControlStyle-ForeColor="BLUE" ControlStyle-Width="110PX"   ItemStyle-VerticalAlign="Middle"  Text="View "  DataNavigateUrlFields="PNR" DataNavigateUrlFormatString="~/user/VIEWTICKET.aspx?PNR={0}" >
<ControlStyle ForeColor="Blue" Width="110px"></ControlStyle>

<ItemStyle VerticalAlign="Middle"></ItemStyle>
                     </asp:HyperLinkField>
                     <asp:CommandField HeaderText="CANCEL"   ShowDeleteButton="True" ControlStyle-Width="110px" ButtonType="Button" ControlStyle-ForeColor="Red" DeleteText="Cancel Ticket" >
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

             <br /><br />
      <br /><br /><br />
     
        </div>
       
    </center>
        
     </div> 
</asp:Content>
