<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="serachtrain.aspx.cs" Inherits="mini_project.serachtrain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br /> <br /> <br /> <br />
    <center><div class="card" style="width: 18rem;">
 <a class="navbar-brand" href="#">
    <img src="../img/logo.png" width="120" height="120" alt="">
  </a>
  <div class="card-body">
    <h5 class="card-title">WELOCME:</h5>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="trainno" HeaderText="trainno" SortExpression="trainno" ReadOnly="True" />
                <asp:BoundField DataField="trainname" HeaderText="trainname" SortExpression="trainname" />
                <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                <asp:BoundField DataField="jdate" HeaderText="jdate" SortExpression="jdate" />
                <asp:BoundField DataField="class1" HeaderText="class1" SortExpression="class1" />
                <asp:BoundField DataField="class2" HeaderText="class2" SortExpression="class2" />
                <asp:BoundField DataField="class3" HeaderText="class3" SortExpression="class3" />
                <asp:BoundField DataField="class4" HeaderText="class4" SortExpression="class4" />
             
                 
                
                  <asp:HyperLinkField HeaderText="OPERATION" DataNavigateUrlFields="trainno, trainname" DataNavigateUrlFormatString="DETAIL.aspx?trainno={0}&trainname={1}" Text="Booking Now" /> 
            </Columns>
        </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train] WHERE (([source] = @source) AND ([destination] = @destination))">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="source" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="DropDownList2" Name="destination" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
        </asp:SqlDataSource>

  </div>
</div></center>


   
</asp:Content>
