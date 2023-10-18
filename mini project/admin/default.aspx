<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="mini_project.admin._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <center>
 
  <div style="background-image: url(../img/1.jpeg);  width:auto; height:550px ;  border: 1px solid black;"> <br /> <br /> <br /> <br />
   

        
     
        <div   class="card" style="width: 38rem;"> <a class="navbar-brand" href="#">
             <img src="../img/logo3.png" width="120" height="120" alt=""> </a> <div class="card-body"> 
                 <h5 class="card-title">WELOCME TO ADMIN PROFILE</h5> 
                 <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br /> 
                 <asp:GridView  ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None"> 
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns> <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" /> <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" ReadOnly="True" /> 
                         <asp:BoundField DataField="PASSWORD" HeaderText="PASSWORD" SortExpression="PASSWORD" /> 
                         <asp:CommandField ShowEditButton="True" ControlStyle-ForeColor="Red" ControlStyle-Width="70px" ButtonType="Button"  HeaderText="UPDATE DETAIL" > 
<ControlStyle ForeColor="Red" Width="70px"></ControlStyle>
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
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ADMIN] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ADMIN] ([Id], [EMAIL], [PASSWORD]) VALUES (@Id, @EMAIL, @PASSWORD)" SelectCommand="SELECT * FROM [ADMIN] WHERE ([EMAIL] = @EMAIL)" UpdateCommand="UPDATE [ADMIN] SET [EMAIL] = @EMAIL, [PASSWORD] = @PASSWORD WHERE [Id] = @Id"> <DeleteParameters> <asp:Parameter Name="Id" Type="Int32" /> </DeleteParameters> <InsertParameters> <asp:Parameter Name="Id" Type="Int32" /> <asp:Parameter Name="EMAIL" Type="String" /> <asp:Parameter Name="PASSWORD" Type="String" /> </InsertParameters> <SelectParameters> <asp:SessionParameter Name="EMAIL" SessionField="name" Type="String" /> </SelectParameters> <UpdateParameters> <asp:Parameter Name="EMAIL" Type="String" /> <asp:Parameter Name="PASSWORD" Type="String" /> <asp:Parameter Name="Id" Type="Int32" /> </UpdateParameters> </asp:SqlDataSource> </div> 

        </div>
      </div>
             </center>

</asp:Content>
