<%@ Control Language="VB" AutoEventWireup="false" CodeFile="UsersEdit.ascx.vb" Inherits="Admin_UsersEdit" %>
<style type="text/css">
    .style2
    {
        width: 237px;
    }
</style>
<table style="width: 451px">
    <tr>
        <td align="right" >
            Name : &nbsp;</td>
        <td rowspan="12">
        </td>
        <td class="style2" >
            <asp:TextBox ID="txtName" runat="server" class="form-control" Width="236px"></asp:TextBox></td>
        <td style="width: 100px">
            </td>
    </tr>
    <tr>
        <td align="right" >
            Surname : &nbsp;</td>
        <td class="style2" >
            <asp:TextBox ID="txtSurname" runat="server" class="form-control" Width="236px"></asp:TextBox></td>
        <td style="width: 100px">
            </td>
    </tr>
    <tr>
        <td align="right">
            Username : &nbsp;</td>
        <td ">
            <asp:TextBox ID="txtUserName" runat="server" class="style2"></asp:TextBox></td>
        <td style="width: 100px">
            </td>
    </tr>
    <tr>
        <td align="right" >
            Office : &nbsp;</td>
        <td class="style2">
            <asp:DropDownList ID="cboOffice" runat="server" Width="236px" 
                DataTextField="Office" DataValueField="OfficeID" AutoPostBack="True" class="form-control">
            </asp:DropDownList></td>
        <td style="width: 100px; height: 24px">
            </td>
    </tr> 
    <tr>
        <td align="right" >
            &nbsp;User Type : &nbsp;</td>
        <td class="style2" >
            <asp:DropDownList ID="cboUsertypes" runat="server" Width="235px" 
                DataTextField="UserTypeDesc" DataValueField="UserTypeId" class="form-control">
            </asp:DropDownList></td>
        <td style="width: 100px">
            </td>
    </tr>
    <tr>
        <td align="right" >
            Telephone : &nbsp;</td>
        <td ">
            <asp:TextBox ID="txtTelephone" runat="server" class="style2"></asp:TextBox></td>
        <td style="width: 100px">
        </td>
    </tr>
    <tr>
        <td align="right">
            Email : &nbsp;</td>
        <td class="style2">
            <asp:TextBox ID="txtEmail" runat="server" Width="235px" class="form-control"></asp:TextBox></td>
        <td style="width: 100px">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Enter Correct Email Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
    </tr>
    <tr>
        <td align="right">
            Cell&nbsp; : &nbsp;</td>
        <td ">
            <asp:TextBox ID="txtCell" runat="server" class="style2"></asp:TextBox></td>
        <td style="width: 100px">
        </td>
    </tr>
    <tr>
        <td align="right" >
            Status : &nbsp;</td>
        <td class="style2" >
            <asp:DropDownList ID="dpdStatus" runat="server" Width="156px" class="form-control">
                <asp:ListItem Value="A">Active</asp:ListItem>
                <asp:ListItem Value="I">InActive</asp:ListItem>
            </asp:DropDownList></td>
        <td style="width: 100px">
        </td>
    </tr>
    <tr>
        <td align="right" >
        </td>
        <td class="style2" >
        </td>
        <td style="width: 100px">
        </td>
    </tr>
    <tr>
        <td ">
        </td>
        <td ">
            <table>
                <tr>
                    <td style="width: 100px; height: 26px;">
                        &nbsp;</td>
                    <td> </td>
                    <td style="width: 100px; height: 26px;"> &nbsp;</td>
                </tr>
            </table>
        </td>
        <td class="style2">
                        <asp:Button ID="btnSave" runat="server"  class="btn btn-primary" 
                Text="Save" Width="98px" /> <asp:Button ID="btnBack" runat="server" 
                            class="btn btn-primary" Text="Back" Width="100px" style="margin-left: 0px" />
        </td>
    </tr>
    <tr>
        <td  colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>&nbsp;</td>
        <td style="width: 100px; height: 17px">
        </td>
    </tr>
</table>
