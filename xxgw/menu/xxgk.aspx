<%@ Page Title="" Language="C#" MasterPageFile="~/mb.master" AutoEventWireup="true" CodeFile="xxgk.aspx.cs" Inherits="xxgk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div style="text-align:center">
        <ul style="width: 840px;height: 60px;margin: 0px auto;line-height: 60px;padding: 0 9px;box-sizing: border-box;border-bottom: 1px solid #ccc;margin-bottom: 20px;">
            <li style="float:left;font-size: 20px;font-weight: bold;">学校简介</li>
            <li style="float:right;font-size:12px;font-weight:normal">
                当前位置：<asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </li>
        </ul>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/xxgk.png" Width="840px"/>
    </div>
    
</asp:Content>

