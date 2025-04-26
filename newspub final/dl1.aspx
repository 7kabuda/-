<%@ Page Title="" Language="C#" MasterPageFile="~/mb.master" AutoEventWireup="true" CodeFile="dl1.aspx.cs" Inherits="dl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 263px; margin:0 auto;padding-top:20px">
    
        <asp:Label ID="Label1" runat="server" Text="Label"  style="font-size:20px;font-weight:bold;">用户登录</asp:Label>
        <br />
        <br />
        用户名：<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="用户名不能为空！" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        密码：<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="密码不不能为空！" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="登录" OnClick="btnLogin_Click"  style="width:60px;height:30px;cursor: pointer;"/>
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnReg" runat="server" Text="注册" OnClick="btnReg_Click"  style="width:60px;height:30px;cursor: pointer;"/>
    
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="Smaller" style="color:red"/>
        <br />
    
    </div>
</asp:Content>

