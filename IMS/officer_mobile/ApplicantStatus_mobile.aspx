<%@ Page Title="" Language="VB" MasterPageFile="~/officer_mobile/MasterPageMobile.master" AutoEventWireup="false" CodeFile="ApplicantStatus_mobile.aspx.vb" Inherits="mobile_ApplicantStatus_mobile" %>

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

    <div class="row" style="margin-left: -15px; margin-right: -15px; margin-top: -16px">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading" style="padding: 10px;">
                    <h5 class="panel-title">APPLICATION STATUS</h5>
                </div>
                <div class="panel-body">

                    <div class="content" style="width: 100%;">
                        <table>

                            <tr>
                                <td align="left" class="style2">Application
                Status:</td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:dropdownlist runat="server" id="cboApplicationStatus"
                                        datatextfield="StatusDesc" datavaluefield="StatusID" height="32px"
                                        width="100%">                   
                </asp:dropdownlist>
                                </td>
                                <td align="left" class="style3">&nbsp;</td>
                                <td align="center">&nbsp;<asp:button id="cmdSearch" runat="server" text="Search" cssclass="btn btn-primary" />
                                    &nbsp;
                                </td>
                                <td align="left" class="style1">&nbsp;</td>
                                <td align="left">&nbsp;</td>
                                <td align="left" class="style1">&nbsp;</td>
                                <td align="left">&nbsp;</td>
                                <td align="left">&nbsp; 
                                </td>
                                <td align="left">&nbsp;  
                                </td>
                            </tr>
                            <tr>
                                <td align="left" colspan="6">&nbsp;
                &nbsp;
                                </td>
                                <td align="left">&nbsp;</td>
                                <td align="left">&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading" style="padding: 10px;">
                    <h5 class="panel-title">INDIGENT TABLE</h5>
                </div>
                <div class="panel-body">

                    <div class="content" style="width: 100%; overflow-x: auto;">
                        <asp:gridview id="grdMembers" runat="server" allowpaging="True" pagesize="8" autogeneratecolumns="False"
                            width="100%" backcolor="White"
                            bordercolor="#CCCCCC" borderstyle="None"
                            borderwidth="1px" cellpadding="3" cssclass="mGrid"
                            pagerstyle-cssclass="pgr">
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
                                          
                  </asp:gridview>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

