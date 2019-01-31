<%@ Page Title="" Language="VB" MasterPageFile="~/officer_mobile/MasterPageMobile.master" AutoEventWireup="false" CodeFile="Applicants_mobile.aspx.vb" ValidateRequest="false" Inherits="mobile_Applicants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1 {
            height: 26px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <div class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">
                <div class="col-md-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading" style="padding: 10px;">
                            <h5 class="panel-title">INDIGENT REGISTER</h5>
                        </div>
                        <div class="panel-body">

                            <div class="content" style="width: 100%;">

                                <table style="width:100%;">
                                    <tr>
                                        <td align="left" width="114.99px">Name:</td>

                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:textbox id="txtName" runat="server" width="100%"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <span>Surname:</span></td>

                                    </tr>
                                    <tr>
                                        <td align="left" class="style2">
                                            <asp:textbox id="txtSurname" runat="server" width="100%"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <span>Account Number:</span></td>

                                    </tr>
                                    <tr>
                                        <td align="left" class="style2">
                                            <asp:textbox id="txtAccNo" runat="server" width="100%"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" width="114.99px">
                                            <span>ID Number:</span></td>

                                    </tr>
                                    <tr>
                                        <td align="left">
                                            <asp:textbox id="txtIDnumber" runat="server" width="100%"></asp:textbox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="style2">

                                            <asp:button id="cmdSearch" runat="server" text="Search"
                                                cssclass="btn btn-primary" width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" colspan="6">
                                            <asp:button id="cmdAdd" runat="server" text="Add New Indigent" width="139px"
                                                cssclass="btn btn-primary" visible="False" />
                                            &nbsp;
                                    &nbsp;
                                        </td>
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

                            <div class="content" style="width: 100%; overflow:auto;">


                    <asp:GridView ID="grdMembers" runat="server" AllowPaging="True" PageSize="8" AutoGenerateColumns="False"
                        Width="100%" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None"
                        BorderWidth="1px" CellPadding="3" CssClass="mGrid"
                        PagerStyle-CssClass="pgr">
                        <RowStyle ForeColor="#000066" />
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
        </div>
     </div>
                
      

    </div>
</asp:Content>

