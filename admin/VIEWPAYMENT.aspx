﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VIEWPAYMENT.aspx.cs" 
    MasterPageFile="~/admin/admin.Master" Inherits="onlineshop.admin.VIEWPAYMENT" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 169px;
        }
        .style10
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" >
        <tr>
            <td class="tblhead" colspan="2">
                Payment Report</td>
        </tr>
        <tr>
            <td class="lbl">
                SELECT USER</td>
            <td>
                <asp:DropDownList ID="drpuser" runat="server" Width="200px" CssClass="txt">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  >
                &nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="VIEW" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="878px" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
            <asp:BoundField HeaderText="Payment Type"  DataField="type" />
<asp:BoundField HeaderText="Bank Name"  DataField="bank" />
<asp:BoundField HeaderText="Bank Branch"  DataField="branch" />
            <asp:BoundField HeaderText="Card No"  DataField="cardno" />
            <asp:BoundField HeaderText="CVV No"  DataField="ccv" />
              <asp:BoundField HeaderText="Amount"  DataField="amount" />
           <asp:BoundField HeaderText="Payment Date"  DataField="entrydate" />
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True" />
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

