<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="false" CodeFile="Users.Aspx.vb" Inherits="Admin_Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
              <div class="panel panel-default">
                        <div class="panel-heading">Users</div>
                        <div class="panel-body">                    
    <table width="100%">
         <tr>
            <td>         
               <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999"
                    BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical"
                    Width="100%" AllowPaging="true" PageSize="15">
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" />
                    <Columns>
                        <asp:CommandField HeaderText="Select" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="LightSeaGreen" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" HorizontalAlign="Left"
                        VerticalAlign="Top" />
                    <AlternatingRowStyle BackColor="#CCCCCC" /></asp:GridView>
            </td>
        </tr>
       <tr>
            <td align="right" style="width: 100px" colspan="2">
                <table>
                    <tr>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td style="width: 100px">
                            &nbsp;</td>
                        <td colspan="2">
                            <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add" Width="100px" />
                            <asp:Button ID="btnEdit" class="btn btn-primary" runat="server" Text="Edit" Width="100px" Enabled="False" />
                            <asp:Button ID="btnInactive"  class="btn btn-primary" runat="server" Text="Inactive" Width="100px" Enabled="False" />
                            <asp:Button ID="btnActive" runat="server" class="btn btn-primary" Text="Active" Width="100px" Enabled="False" /></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 21px" colspan="2">
                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
        </tr>
    </table>
 </div></div>
</asp:Content>

