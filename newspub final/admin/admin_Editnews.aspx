<%@ Page Title="" Language="C#" MasterPageFile="~/admin/mb_admin.master" AutoEventWireup="true" CodeFile="admin_Editnews.aspx.cs" Inherits="admin_admin_Editnews_aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 345px;margin: 25px auto 50px auto;">
        <asp:DropDownList ID="DropDownList1" runat="server" style="float: left;height:22px">
            <asp:ListItem Value="publisher">发布者</asp:ListItem>
            <asp:ListItem Value="title">新闻标题</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="txtValue" runat="server" style="float: left;
    height: 22px;
    box-sizing: border-box;
    padding: 0 10px;
    margin: 0 20px;"></asp:TextBox>
        <asp:Button ID="btnQuery" runat="server" Text="查询" OnClick="btnQuery_Click" style="all: unset;float: left;
    padding: 3px 10px;
    background-color: #13619c;
    color: #fff;
    font-size: 12px;
    cursor: pointer;"/>
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Width="1500px">
    <Columns>
       <asp:BoundField DataField="id" HeaderText="序号" InsertVisible="False" ReadOnly="True" SortExpression="id" >
            <HeaderStyle Height="30px" />
            <ItemStyle HorizontalAlign="Center" Width="40px" />
            </asp:BoundField>
            <asp:BoundField DataField="title" HeaderText="新闻标题" SortExpression="title" >
            <ItemStyle CssClass="xwbt" Width="200px" HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="contents" HeaderText="新闻内容" SortExpression="contents">
            <ItemStyle CssClass="xwnr" Width="600px" HorizontalAlign="Left" />
            </asp:BoundField>
            <asp:BoundField DataField="pic" HeaderText="图片" SortExpression="pic" >
            <ItemStyle HorizontalAlign="Center" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="submitdate" HeaderText="发布时间" SortExpression="submitdate" >
            <ItemStyle HorizontalAlign="Center" Width="80px"/>
            </asp:BoundField>
            <asp:BoundField DataField="publisher" HeaderText="发布者" SortExpression="publisher" >
            <ItemStyle HorizontalAlign="Center" Width="60px" />
            </asp:BoundField>
            <asp:BoundField DataField="categoryid" HeaderText="新闻类别序号" SortExpression="categoryid" >
            <ItemStyle Width="100px" HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="编辑"></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" Width="50px" />
            </asp:TemplateField>
            <asp:CommandField HeaderText="删除" ShowDeleteButton="True" >
            <ItemStyle HorizontalAlign="Center" Width="50px" />
            </asp:CommandField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString16 %>" DeleteCommand="DELETE FROM [lbnr] WHERE [id] = @id" InsertCommand="INSERT INTO [lbnr] ([title], [contents], [pic], [submitdate], [publisher], [categoryid]) VALUES (@title, @contents, @pic, @submitdate, @publisher, @categoryid)" SelectCommand="SELECT * FROM [lbnr]" UpdateCommand="UPDATE [lbnr] SET [title] = @title, [contents] = @contents, [pic] = @pic, [submitdate] = @submitdate, [publisher] = @publisher, [categoryid] = @categoryid WHERE [id] = @id">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="contents" Type="String" />
        <asp:Parameter Name="pic" Type="String" />
        <asp:Parameter Name="submitdate" Type="DateTime" />
        <asp:Parameter Name="publisher" Type="String" />
        <asp:Parameter Name="categoryid" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="title" Type="String" />
        <asp:Parameter Name="contents" Type="String" />
        <asp:Parameter Name="pic" Type="String" />
        <asp:Parameter Name="submitdate" Type="DateTime" />
        <asp:Parameter Name="publisher" Type="String" />
        <asp:Parameter Name="categoryid" Type="Int32" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

