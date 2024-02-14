<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change Password.aspx.cs"
    MasterPageFile="~/admin/admin.Master" Inherits="onlineshop.admin.Change_Password" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style8">
    <tr>
        <td class="tblhead" colspan="2">
            Change Password</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Enter New Password:</td>
        <td>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="Button10" runat="server" CssClass="btn" 
                onclick="Button10_Click" Text="Save" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>


