﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Addcategory.aspx.cs" 
    MasterPageFile="~/admin/admin.Master" Inherits="onlineshop.admin.Addcategory" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style12
    {
        width: 145px;
    }
    .style14
    {
        width: 232px;
    }
    .style17
    {
        height: 21px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 256px; width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            Add Category</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Category Name:</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtname" runat="server" placeholder="Enter Category Name!!!" 
                CssClass="txt" Width="141px" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Category" 
                ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            </td>
        <td style="text-align: left" class="style17">
            <asp:Button ID="btnadd" runat="server" BorderColor="#FFFF99" CssClass="btn" 
                style="margin-left: 0px" Text="ADD" Width="70px" onclick="btnadd_Click"
                Height="30px" />
        </td>
    </tr>
    <tr>
        <td class="style17">
            &nbsp;</td>
        <td style="text-align: left" class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style12">
            &nbsp;</td>
        <td class="style14">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
                DataKeyNames="CID"
                onrowcancelingedit="GridView1_RowCancelingEdit" 
                onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
                onrowupdating="GridView1_RowUpdating" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                BackColor="White" BorderColor="#999999" 
                BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                Width="343px" style="text-align: center">
                
                <AlternatingRowStyle BackColor="#DCDCDC" />
                
                <Columns>
                <asp:CommandField CausesValidation="false" ShowEditButton="true" />
                    <asp:BoundField DataField="CNAME" HeaderText="CATEGORY NAME" 
                        SortExpression="CNAME" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

