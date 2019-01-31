<%@ Page Title="" Language="VB" MasterPageFile="~/DataCapturers/MasterDatacapturer.master" AutoEventWireup="false" CodeFile="Applicants.aspx.vb" Inherits="DataCapturers_Applicants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">  
   <style type="text/css">
        .style1 {
            height: 26px;
        }
    </style>


  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="panel panel-default" style="overflow-x:auto;">
        <div class="panel-heading">Indigent Register</div>
        <div class="panel-body">

            <div class="row">
                <div class="col-md-4" style="float: left;">
                    <table>
                        <tr>
                            <td align="left" width="114.99px">Name:</td>
                            <td align="left">
                                <asp:TextBox ID="txtName" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" width="114.99px">
                                <span>ID Number:</span></td>
                            <td align="left">
                                <asp:TextBox ID="txtIDnumber" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>



                <div class="col-md-4" style="float: left;">
                    <table>
                        <tr>
                            <td align="left">
                                <span>Surname:</span></td>
                            <td align="left" class="style2">
                                <asp:TextBox ID="txtSurname" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left">
                                <span>Account Number:</span></td>
                            <td align="left" class="style2">
                                <asp:TextBox ID="txtAccNo" runat="server" Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="style2" style="height: 30px;"></td>
                        </tr>
                        <tr>
                            <td align="left" class="style2" style=""></td>
                            <td align="left" class="style2" style="text-align: right;">

                                <asp:Button ID="cmdSearch" runat="server" Text="Search"
                                    CssClass="btn btn-primary" Width="150px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="6">
                                <asp:Button ID="cmdAdd" runat="server" Text="Add New Indigent" Width="139px"
                                    CssClass="btn btn-primary" Visible="False" />
                                &nbsp;
                                    &nbsp;
                            </td>
                        </tr>
                    </table>

                </div>
            </div>





        </div>

       <div class="row">
            <div class="col-md-12">


                <div style="overflow-x: auto">


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

</asp:Content>

