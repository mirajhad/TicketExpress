<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="booking.aspx.cs" Inherits="mini_project.user.booking" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

   <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
          <div style="background-image: url(../img/BANNElR.png);  width:auto; height:550px ;  border: 1px solid black;">
               
    <br />




    <div style="padding-left:140px;">
   <div  class="card" style="width: 23rem;float:left;">
       <center>
 <a class="navbar-brand" href="#">
    
  </a>
  <div class="card-body" ">
    <h5 class="card-title">WELOCME:</h5></center>
  <center>
       <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="SOURCE"></asp:Label><br />
       <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="152px"></asp:TextBox>
      
        
       
        <ajaxToolkit:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" BehaviorID="TextBox2_AutoCompleteExtender" DelimiterCharacters="" ServiceMethod="SOURCEDATA" TargetControlID="TextBox2" CompletionSetCount="10" CompletionInterval="100" MinimumPrefixLength="1">
       </ajaxToolkit:AutoCompleteExtender>
      
        
       
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [source] FROM [Train] WHERE ([source] = @source)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="source" PropertyName="Text" Type="String" />
            </SelectParameters>
       </asp:SqlDataSource>
        <br /><br/>
      <asp:Label ID="Label2" runat="server" ForeColor="Blue" Text="DESTINATION"></asp:Label> <br />
       <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="152px"></asp:TextBox>
     
       <ajaxToolkit:AutoCompleteExtender ID="TextBox3_AutoCompleteExtender" runat="server" BehaviorID="TextBox3_AutoCompleteExtender" DelimiterCharacters=""  ServiceMethod="DESDATA"  CompletionSetCount="10" CompletionInterval="100" MinimumPrefixLength="1" TargetControlID="TextBox3">
       </ajaxToolkit:AutoCompleteExtender>
     
       
     
      <br/><br />
     <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="DATE OF JOURNEY"></asp:Label><br /><asp:TextBox ID="TextBox1" Height="30px" Width="152px" type="date" runat="server"></asp:TextBox></br/><br />
       <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="CLASS"></asp:Label><br /><asp:DropDownList ID="DropDownList3" Height="30px" Width="152px" runat="server" DataSourceID="SqlDataSource4" DataTextField="class1" DataValueField="class1"></asp:DropDownList>
     
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [class1], [class2], [class3], [class4] FROM [Train]">
        </asp:SqlDataSource>
     
        <br /><br />
     
        <asp:Button ID="Button1" runat="server" BackColor="BlueViolet" ForeColor="White" Text="FIND TRAINS" OnClick="Button1_Click"></asp:Button><br /><br />
        
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [destination] FROM [Train] WHERE ([destination] = @destination)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="destination" PropertyName="Text" Type="String" />
            </SelectParameters>
       </asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train] WHERE (([source] = @source) AND ([destination] = @destination))">
    <SelectParameters>
        <asp:ControlParameter ControlID="TextBox2" Name="source" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="TextBox3" Name="destination" PropertyName="Text" Type="String" />
    </SelectParameters>
        </asp:SqlDataSource>
   <br />     <br />    

   </div>
          
    
</div>
<div style="padding-left:509px;">
<div class="card" style="width:auto;float:left;">
 <a class="navbar-brand" href="#">
   
  </a>
  <div class="card-body">
    
       <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainno" DataSourceID="SqlDataSource1" >
            <Columns>
                <asp:BoundField DataField="trainno" HeaderText="Train no" SortExpression="trainno" ReadOnly="True" />
                <asp:BoundField DataField="trainname" HeaderText="Train name" SortExpression="trainname" />
                <asp:BoundField DataField="source" HeaderText="Source" SortExpression="source" />
                <asp:BoundField DataField="destination" HeaderText="Destination" SortExpression="destination" />
                <asp:BoundField DataField="jdate" HeaderText="Journey Date" SortExpression="jdate" />
                
             
                 
                
                  <asp:HyperLinkField HeaderText="SLEEPER"
                       DataNavigateUrlFields="trainno"
                       DataNavigateUrlFormatString="DETAIL.aspx?trainno={0}" Text="Booking Now" /> 
                  <asp:HyperLinkField HeaderText="1st AC"
                       DataNavigateUrlFields="trainno"
                       DataNavigateUrlFormatString="DETAIL.aspx?trainno={0}" Text="Booking Now" />
                  <asp:HyperLinkField HeaderText="2nd AC"
                       DataNavigateUrlFields="trainno"
                       DataNavigateUrlFormatString="DETAIL.aspx?trainno={0}" Text="Booking Now" />
                  <asp:HyperLinkField HeaderText="3rd AC"
                       DataNavigateUrlFields="trainno"
                       DataNavigateUrlFormatString="DETAIL.aspx?trainno={0}" Text="Booking Now" />
      
                  </Columns>
        </asp:GridView>
       
  
  </div>
</div></div>
    </div>
     
</asp:Content>
