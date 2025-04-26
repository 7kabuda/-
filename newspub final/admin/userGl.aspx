<%@ Page Title="" Language="C#" MasterPageFile="~/admin/mb_admin.master" AutoEventWireup="true" CodeFile="userGl.aspx.cs" Inherits="admin_userGl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:1100px;margin:0 auto">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1100px">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
            <HeaderStyle Height="30px" />
            <ItemStyle Height="30px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="keys" HeaderText="用户类别" SortExpression="keys" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:CommandField HeaderText="编辑" ShowEditButton="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:CommandField>
        </Columns>
        </asp:GridView>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString15 %>" DeleteCommand="DELETE FROM [yhb] WHERE [id] = @id" InsertCommand="INSERT INTO [yhb] ([username], [password], [keys]) VALUES (@username, @password, @keys)" SelectCommand="SELECT * FROM [yhb]" UpdateCommand="UPDATE [yhb] SET [username] = @username, [password] = @password, [keys] = @keys WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="keys" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="username" Type="String" />
        <asp:Parameter Name="password" Type="String" />
        <asp:Parameter Name="keys" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

