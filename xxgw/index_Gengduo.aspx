<%@ Page Title="" Language="C#" MasterPageFile="~/mb.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="float:left;padding-right: 40px;">
        <asp:datalist runat="server" DataKeyField="categoryid" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "index_new.aspx?categoryid="+Eval("categoryid") %>' Text='<%# Eval("categoryname") %>' style="display:block;width: 250px;
    height: 50px;
    background-color: #ccc;
    text-align: center;
    line-height: 50px;
    border-bottom: 1px solid #fff;"></asp:HyperLink>
            </ItemTemplate>
        </asp:datalist>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString9 %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
    </div>
    <div style="float:left">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource3" Width="745px">
        <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "index_lb.aspx?id="+Eval("id") %>' Text='<%# Eval("title") %>' style="float: left;
    padding-bottom: 30px;
    font-weight: bold;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 410px;"></asp:HyperLink>
            <asp:Label ID="submitdate" runat="server" Text='<%# Eval("submitdate", "{0:D}") %>' style="float:right;font-size: 12px;"></asp:Label>
        </ItemTemplate>
        </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString10 %>" SelectCommand="SELECT * FROM [lbnr]"></asp:SqlDataSource>

    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString4 %>" SelectCommand="SELECT top 8 * FROM [lbnr] order by submitdate desc"></asp:SqlDataSource>
</asp:Content>

