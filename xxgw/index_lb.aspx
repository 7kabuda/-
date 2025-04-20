<%@ Page Title="" Language="C#" MasterPageFile="~/mb.master" AutoEventWireup="true" CodeFile="index_lb.aspx.cs" Inherits="index_lb"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
    <ItemTemplate>
        <div  style="text-align:center"><asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' Font-Bold="True" Font-Size="Larger"/></div>
        <br />
        <div  style="text-align:center;font-size:14px"><asp:Label ID="submitdate" runat="server" Text='<%# Eval("submitdate") %>'/></div>
        <br />
        <asp:Label ID="contentsLabel" runat="server" Text='<%# Eval("contents") %>' />
        <br />
        <br />
        <div  style="text-align:center"><asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("pic") %>' /></div>
<br />
    </ItemTemplate> 
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString7 %>" SelectCommand="SELECT * FROM [lbnr] WHERE ([id] = @id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>



    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">返回</asp:HyperLink>
</asp:Content>

