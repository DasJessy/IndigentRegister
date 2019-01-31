<%@ Page Title="" Language="VB" MasterPageFile="~/Officer/MasterPageOfficer.master" AutoEventWireup="false" CodeFile="ApplicantStatus.aspx.vb" Inherits="Officer_ApplicantStatus" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
   
    <style type="text/css">
    .style1
    {
        width: 201px;
    }
    .style2
    {
        width: 269px;
    }
    .style3
    {
        width: 26px;
    }
</style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="panel panel-default">
                        <div class="panel-heading">Indigent Register</div>
                        <div class="panel-body">
    <table>
        <tr>
            <td align="center" class="style2">
                Application
                Status:</td>
            <td align="center">
                <asp:DropDownList runat="server" ID="cboApplicationStatus" 
                    DataTextField="StatusDesc" DataValueField="StatusID" Height="32px" 
                    Width="201px">                   
                </asp:DropDownList>
            </td>
            <td align="center" class="style3">
                &nbsp;</td>
            <td align="center">
                &nbsp;<asp:Button ID="cmdSearch" runat="server" Text="Search" CssClass="btn btn-primary"/>
                &nbsp;
            </td>
            <td align="center" class="style1">
                &nbsp;</td>
            <td align="center">
                &nbsp;</td>
             <td align="center" class="style1">
                 &nbsp;</td>
            <td align="center">
                &nbsp;</td>
            <td align="center">
                &nbsp; 
                  </td>
            <td align="center">
                         &nbsp;  
</td>
        </tr>
        <tr>
            <td align="right" colspan="6">
                &nbsp;
                &nbsp;
            </td>
            <td align="right">
                &nbsp;</td>
            <td align="right">
                &nbsp;</td>
        </tr>
    </table>

<asp:GridView ID="grdMembers" runat="server" AllowPaging="True"  PageSize="8" AutoGenerateColumns="False" 
                                Width="100%" BackColor="White" 
        BorderColor="#CCCCCC" BorderStyle="None" 
                                BorderWidth="1px" CellPadding="3"   CssClass="mGrid"
            PagerStyle-CssClass="pgr">
                      <RowStyle ForeColor="#000066"/>
                      <Columns>
                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:HiddenField ID="Id" runat="server" 
                                      Value='<%# Bind("Id") %>' />                                 
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:HiddenField ID="INDRefNo" runat="server" 
                                      Value='<%# Bind("INDRefNo") %>' />                                 
                              </ItemTemplate>
                          </asp:TemplateField>                                                                           
                          <asp:BoundField DataField="AccountNumber" HeaderText="Account Number" />
                          <asp:BoundField DataField="FirstName" HeaderText="First name" />
                          <asp:BoundField DataField="Lastname" HeaderText="Surname" />
                          <asp:BoundField DataField="IDNumber" HeaderText="ID Number" />                                                
                          <asp:ButtonField CommandName="Profile" Text="Edit/Update" />                         
                      </Columns>
                                          
                      <FooterStyle BackColor="White" ForeColor="#336699" />

<PagerStyle CssClass="pgr" Wrap="True"></PagerStyle>
                      <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#336699" Font-Bold="True" ForeColor="White" />
                                          
                  </asp:GridView>

</div>
</div>

</asp:Content>

