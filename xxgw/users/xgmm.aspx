<%@ Page Title="" Language="C#" MasterPageFile="~/users/mb_users.master" AutoEventWireup="true" CodeFile="xgmm.aspx.cs" Inherits="users_xgmm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 263px; margin:0 auto;">
            <p style="text-align:center;font-size:20px;font-weight:bold;padding:20px 20px;">
            密码修改</p>
        <p>
            原密码：<asp:TextBox ID="txtOriginalPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtOriginalPassword" ErrorMessage="用户名不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            新密码：<asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="密码不能为空！" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            确认新密码：<asp:TextBox ID="txtConNewPassword" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConNewPassword" ErrorMessage="两次输入密码不一致" ForeColor="#FF3300">*</asp:CompareValidator>
        </p>
            <p>
                &nbsp;</p>
        <p>
            <asp:Button ID="btnOK" runat="server" Text="确定" style="width:60px;height:30px" OnClick="btnOK_Click"/>&nbsp;&nbsp;
            <asp:Button ID="btnCan" runat="server" Text="取消" style="width:60px;height:30px" OnClick="btnCan_Click"/>
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

