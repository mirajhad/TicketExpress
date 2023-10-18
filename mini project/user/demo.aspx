<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="mini_project.user.demo" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="201px" AutoCompleteType="DisplayName"></asp:TextBox>
        
        
        
        <ajaxToolkit:AutoCompleteExtender ID="TextBox1_AutoCompleteExtender" runat="server" BehaviorID="TextBox1_AutoCompleteExtender" DelimiterCharacters="" ServiceMethod="SOURCEDATA" TargetControlID="TextBox1" CompletionSetCount="10" CompletionInterval="100" MinimumPrefixLength="1">
        </ajaxToolkit:AutoCompleteExtender>
        
        
        
        <br />
    </div>
         <div>
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="201px" AutoCompleteType="DisplayName"></asp:TextBox>
        
        
        
             <ajaxToolkit:AutoCompleteExtender ID="TextBox2_AutoCompleteExtender" runat="server" BehaviorID="TextBox2_AutoCompleteExtender" DelimiterCharacters=""  ServiceMethod="DESDATA"  CompletionSetCount="10" CompletionInterval="100" MinimumPrefixLength="1" TargetControlID="TextBox2">
             </ajaxToolkit:AutoCompleteExtender>
        
        
        
   
        
        
        
             <br />
             <br />
             <asp:Button ID="Button1" runat="server" Text="Button" />
             <br />
             <br />
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="trainno" DataSourceID="SqlDataSource2">
                 <Columns>
                     <asp:BoundField DataField="trainno" HeaderText="trainno" ReadOnly="True" SortExpression="trainno" />
                     <asp:BoundField DataField="trainname" HeaderText="trainname" SortExpression="trainname" />
                     <asp:BoundField DataField="source" HeaderText="source" SortExpression="source" />
                     <asp:BoundField DataField="destination" HeaderText="destination" SortExpression="destination" />
                     <asp:BoundField DataField="jdate" HeaderText="jdate" SortExpression="jdate" />
                     <asp:BoundField DataField="class1" HeaderText="class1" SortExpression="class1" />
                     <asp:BoundField DataField="class2" HeaderText="class2" SortExpression="class2" />
                     <asp:BoundField DataField="class3" HeaderText="class3" SortExpression="class3" />
                     <asp:BoundField DataField="class4" HeaderText="class4" SortExpression="class4" />
                 </Columns>
             </asp:GridView>
        
        
        
   
        
        
        
        <br />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train]"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Train] WHERE (([source] = @source) AND ([destination] = @destination))">
             <SelectParameters>
                 <asp:ControlParameter ControlID="TextBox1" Name="source" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="TextBox2" Name="destination" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
    </form>
    </body>
</html>
