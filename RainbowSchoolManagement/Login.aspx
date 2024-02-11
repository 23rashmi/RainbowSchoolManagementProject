<%@ Page Title="" Language="C#" MasterPageFile="~/RainbowSchool.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RainbowSchoolManagement.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 86px;
    }
    .auto-style10 {
        width: 104px;
        height: 26px;
    }
    .auto-style11 {
        width: 63px;
    }
    .auto-style12 {
        width: 104px;
        height: 33px;
    }
    .auto-style13 {
        width: 63px;
        height: 33px;
    }
    .auto-style14 {
        width: 86px;
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="2"><h1><u><b>Login</b></u></h1></td>
            <td class="auto-style9">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">UserName: </td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="* UserName is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Password:</td>
            <td class="auto-style11">
                <asp:TextBox ID="TxtPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="* Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td class="auto-style11">
                <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
            </td>
            <td class="auto-style9">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
            <td class="auto-style13"></td>
            <td class="auto-style14"></td>
        </tr>
    </table>
</asp:Content>
