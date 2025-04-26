<%@ Page Title="" Language="C#" MasterPageFile="~/admin/mb_admin.master" AutoEventWireup="true" CodeFile="admin_Addnews.aspx.cs" Inherits="admin_admin_Addnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 852px; margin:0 auto;">
            <p style="text-align:center;font-size:20px;font-weight:bold;padding:20px 20px;">
            发表新闻</p>
        <p>
            标题：<asp:TextBox ID="txtTitle" runat="server" Width="800px" style="padding:5px 10px;box-sizing:border-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="用户名不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            内容：<asp:TextBox ID="txtContents" runat="server" Height="145px" TextMode="MultiLine" Width="800px" style="padding:10px;box-sizing:border-box"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContents" ErrorMessage="密码不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            类别：<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="categoryname" DataValueField="categoryid" style="width: 100px;text-align: center;height: 22px;"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lbConnectionString13 %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
        </p>
            <p>
                &nbsp;</p>
        <p style="padding-left:48px">
            <asp:Button ID="btnOK" runat="server" Text="提交" style="width: 50%;height: 42px;background: #13619c;color: #ffffff;border: none;cursor: pointer;" OnClick="btnOK_Click"/>&nbsp;&nbsp;
            <asp:Button ID="btnCan" runat="server" Text="取消" style="width: 48%;height: 42px;background: #13619c;color: #ffffff;border: none;cursor: pointer;" OnClick="btnCan_Click"/>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Label ID="lblInfo" runat="server"></asp:Label>
        </p>
            <p>
                &nbsp;</p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Smaller" style="color:red"/>
        <br />
        <br />
        <p>
        </p>
        </div>
</asp:Content>

