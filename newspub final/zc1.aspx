<%@ Page Title="" Language="C#" MasterPageFile="~/mb.master" AutoEventWireup="true" CodeFile="zc1.aspx.cs" Inherits="zc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 263px; margin:0 auto;">
            <p style="text-align:center;font-size:20px;font-weight:bold;padding:20px 20px;">
            用户注册</p>
        <p>
            用户名：<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="用户名不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            密码：<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="密码不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            确认密码：<asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPassword1" ErrorMessage="两次密码输入不一致！" ForeColor="Red">*</asp:CompareValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            性别：<asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" Text="男" />&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="sex" Text="女" />
        </p>
            <p>
                &nbsp;</p>
        <p>
            政治面貌：<asp:DropDownList ID="DropDownList1" runat="server" style="width:80px">
                <asp:ListItem>群众</asp:ListItem>
                <asp:ListItem>团员</asp:ListItem>
                <asp:ListItem>党员</asp:ListItem>
            </asp:DropDownList>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Button ID="btnRe" runat="server" Text="注册" style="width:60px;height:30px;cursor: pointer;" OnClick="btnRe_Click" />&nbsp;&nbsp;
            <asp:Button ID="btnCan" runat="server" Text="重置"  style="width:60px;height:30px;cursor: pointer;" OnClick="btnCan_Click"/>&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="返回"  style="width:60px;height:30px;cursor: pointer;" OnClick="Button1_Click"/>
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

