<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="false" CodeFile="Departments.Aspx.vb" Inherits="Admin_Departments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

              <div class="panel panel-default">
                        <div class="panel-heading">Departments</div>
                        <div class="panel-body">
<table width="100%">
        <tr>
            <td colspan="2">
            <div style="width: 100%; height: 400px; overflow: scroll">           
                <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                    Width="100%">
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <Columns>
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="LightSeaGreen" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Left"
                        VerticalAlign="Top" />
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                </asp:GridView></div>            
            </td>
        </tr>
        <tr>
            <td align="right" colspan="2" style="width: 100px; height: 28px;">
                <table>
                    <tr>
                        <td style="width: 100px">
                            <asp:Button ID="btnAdd" runat="server" Text="Add" Width="100px" class="btn btn-primary"/></td>
                        <td style="width: 100px">
                            <asp:Button ID="btnEdit" runat="server" Enabled="False" Text="Edit" Width="100px" class="btn btn-primary"/></td>
                        <td style="width: 100px">
                            <asp:Button ID="btnInactive" runat="server" Enabled="False" Text="Inactive" Width="100px" class="btn btn-primary"/></td>
                        <td colspan="2">
                            <asp:Button ID="btnActive" runat="server" Enabled="False" Text="Active" Width="100px" class="btn btn-primary"/></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="width: 100px; height: 21px">
                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
    </table></div></div>
</asp:Content>

