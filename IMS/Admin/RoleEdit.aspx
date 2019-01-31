<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="false" CodeFile="RoleEdit.aspx.vb" Inherits="Admin_RoleEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> User</span>
                    </div>
                    <div class="mws-panel-body no-padding">
 <table style="width: 451px">
        <tr>
            <td align="right" >
                Role : &nbsp;</td>
            <td rowspan="3" >
            </td>
            <td >
                <asp:TextBox ID="txtRole" runat="server" Width="229px"></asp:TextBox></td>
            <td style="width: 100px">
                </td>
        </tr>
        <tr>
            <td >
                &nbsp;&nbsp;</td>
            <td >
                &nbsp;</td>
            <td style="width: 100px">
                </td>
        </tr>
        <tr>
            <td >
            </td>
            <td>
                <table>
                    <tr>
                        <td><asp:Button ID="btnSave" runat="server" class="btn btn-primary" Text="Save" Width="103px" /></td>
                        <td style="width: 2px; height: 26px"></td>
                        <td ><asp:Button ID="btnBack" runat="server" class="btn btn-primary" Text="Back" Width="103px" /></td>
                    </tr>
                </table>
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
            <td >
            </td>
        </tr>
    </table></div></div>
</asp:Content>

