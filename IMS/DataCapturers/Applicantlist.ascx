<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Applicantlist.ascx.vb" Inherits="DataCapturers_Applicantlist" %>
<style type="text/css">

TH
{
    FONT-WEIGHT: bold;
    FONT-SIZE: x-small;
    COLOR: white;
    FONT-FAMILY: Arial, Verdana;
    BACKGROUND-COLOR: #5f8ac5;
    TEXT-ALIGN: left
}

TD
{
    FONT-WEIGHT: normal;
    FONT-SIZE: 8pt;
    COLOR: darkblue;
    FONT-FAMILY: Verdana;
    TEXT-DECORATION: none
}
td
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 9px;
	color: #000000;
}

a:link
{
	color:  #000066;
	text-decoration: none;
}
A
{
    FONT-WEIGHT: 500;
    FONT-SIZE: 7.5pt;
    COLOR: gray;
    font-weight: bold;
    FONT-FAMILY: Verdana;
    TEXT-DECORATION: none
}

input 
{
	font-family: Verdana, Arial, Helvetica, sans-serif;
		border-style: solid;
	border-color: inherit;
	border-width: 1px;
	font-size: xx-small;
		color: #000000;
		font-family: Arial, Helvetica, sans-serif;
		background-color: #ffffff;
	}

    .panel-body
    {
        width: 902px;
    }
</style>
	 <div class="panel panel-default">
                        <div class="panel-heading">
                            <table style="width: 903px">
                    <tr>
                        <td align="center" style="color: white; 
                            class="style2" class="style3">
                            Applicant &nbsp;Ref Number:</td>
                        <td align="center" style="color: white; " class="style6">
                            <asp:TextBox ID="txtComplaintREFNo" runat="server" Width="150px"></asp:TextBox></td>
                        <td align="center" class="style5">
                        </td>
                        <td align="center" class="style4">
                            &nbsp;</td>
                        <td align="center" class="style7">
                            <asp:TextBox ID="txtDGmemono" runat="server" Width="150px" Visible="False"></asp:TextBox></td>
                        <td align="center" class="style8">
                            <asp:Button ID="cmdSearch" runat="server" Text="Search" class="btn btn-primary"/></td>
                        <td align="center" class="style8">
                            <asp:Button ID="cmdAdd" runat="server" Text="Add New Indigent" 
                                Width="128px"  Class="btn btn-primary"/>
                            </td>
                    </tr>
                </table>
                        </div>
                             
                              <asp:GridView ID="grdComplaints" runat="server" 
            AutoGenerateColumns="False"
            GridLines="Vertical"
            AllowPaging="True"
            CssClass="mGrid"
            PagerStyle-CssClass="pgr"
            AlternatingRowStyle-CssClass="alt" BackColor="White" BorderColor="#DEDFDE" 
                            BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                                  <PagerSettings FirstPageText="" LastPageText="" NextPageText="" 
                                      PreviousPageText="" />
                    <RowStyle HorizontalAlign="Left" VerticalAlign="Top" BackColor="#F7F7DE" />
                    <Columns>
                         <asp:TemplateField>
                              <ItemTemplate>                                
                                       <asp:HiddenField ID="ComplaintId" runat="server" 
                                      Value='<%# Bind("ComplaintId") %>' />                                 
                              </ItemTemplate>
                          </asp:TemplateField>                          
                          <asp:BoundField DataField="ComplaintRefNo" HeaderText="ApplicantRefNo" />
                          <asp:BoundField DataField="DGRefNo" HeaderText="Name" />
                          <asp:BoundField DataField="FileRefno" HeaderText="Surname" />
                          <asp:BoundField DataField="NACHcaseno" HeaderText="IDnumber" />                                                                  
                          <asp:ButtonField CommandName="Profile" Text="View" ButtonType="Image" 
                              ImageUrl="~/css/icons/icol16/src/magnifier.png"/>
                    </Columns>
                                  <FooterStyle BackColor="#CCCC99" HorizontalAlign="Right" VerticalAlign="Top" />

<PagerStyle CssClass="pgr" BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right"></PagerStyle>

                                  <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />

<AlternatingRowStyle CssClass="alt" BackColor="White"></AlternatingRowStyle>
                   </asp:GridView>              
                  
                <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                       

                        </div>
                
