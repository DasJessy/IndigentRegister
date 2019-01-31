<%@ Control Language="VB" AutoEventWireup="false" CodeFile="AddIndigent.ascx.vb" Inherits="DataCapturers_AddIndigent" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="RJS.Web.WebControl.PopCalendar.Net.2008" namespace="RJS.Web.WebControl" tagprefix="rjs" %>
     <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        .ErrorControl
        {
            background-color: #FBE3E4;
            border: solid 1px Red;
        }
    </style>
    <table width="800px">
    <tr>
    <td width="800px">
     <div class="mws-panel grid_8">
                	<div class="mws-panel-header">
                    	<span><i class="icon-table"></i> Member Details</span>
                    </div>
                    <div class="mws-panel-body">
<asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" class="mws-panel grid-8"   OnActiveStepChanged="Wizard1_ActiveStepChanged" OnFinishButtonClick="Wizard1_FinishButtonClick">
           <StartNextButtonStyle CssClass="btn btn-primary" />
           <FinishCompleteButtonStyle CssClass="btn btn-primary" />
           <StepNextButtonStyle CssClass="btn btn-primary" />
            <StepPreviousButtonStyle CssClass="btn btn-primary" />
            <StepNavigationTemplate>
             <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="False" CommandName="MovePrevious" Text="Previous" CssClass="btn btn-primary"  />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" CssClass="btn btn-primary" />
             <asp:Button ID="StepFinishButton" runat="server" CommandName="Movelast" Text="Finish" CssClass="btn btn-primary" />            
            </StepNavigationTemplate>
           <FinishPreviousButtonStyle CssClass="btn btn-primary" />
           <WizardSteps>
               <asp:WizardStep ID="WizardStep1" runat="server" Title="MEMBER UTILISING">
                <div class="content"> 
                <div id="mws-login-form">
                <table style="width: 100%;">
                <tr>
                    <td  align="Right">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                 
                </tr>
                <tr>
                    <td align="Right">
                        <asp:Label ID="Label50" runat="server" Text="Account No :" Width="92px"></asp:Label>
                    </td>
                    <td> <div class="mws-form-item">
            <asp:TextBox ID="txtAccountNo" runat="server" Width="153px" 
                            class="mws-login-username required"></asp:TextBox>    </div>
                    </td>
                    <td>
                       
              <%--              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="txtAccountNo" ErrorMessage="*"></asp:RequiredFieldValidator>
    --%>                    
                    </td>
                    <td align="Right">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                    <tr>
                        <td align="Right">
                            Surname:</td>
                        <td>
                            <asp:TextBox ID="txtSurname" runat="server" Width="153px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtSurname" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td align="Right">
                            First Name :
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstname" runat="server" Width="153px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                ControlToValidate="txtFirstname" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            Title:</td>
                        <td>
                            <asp:DropDownList ID="ddlTitle" runat="server" Height="16px" Width="126px">
                                <asp:ListItem Value="1">Mr</asp:ListItem>
                                <asp:ListItem Value="2">Mrs</asp:ListItem>
                                <asp:ListItem Value="4">Miss</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                ControlToValidate="ddlTitle" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                <tr>
                    <td align="Right">
            <asp:Label ID="Label44" runat="server"  Text="ID Number:" Width="81px"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtIDnumber" runat="server" Width="154px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td align="Right">
            Date of Birth:</td>
                    <td>
            <asp:TextBox ID="txtdob" runat="server" Width="153px" Wrap="False"></asp:TextBox>        
                    </td>
                    <td>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtdob" ErrorMessage="*"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;</td>
                    <td>
            
            <asp:Label ID="Label45" runat="server"  Text="Age :"
                Width="40px" style="text-align: right"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtAge" runat="server" Width="126px"></asp:TextBox>
                    </td>
                    <td>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtAge" ErrorMessage="*"></asp:RequiredFieldValidator>
--%>                    </td>
                </tr>
                <tr>
                    <td align="Right">Tel (H):</td>
                    <td>
            <asp:TextBox ID="txtHtel" runat="server" Width="155px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td align="Right">
            <asp:Label ID="Label46" runat="server"  Text="Tel (W):" Width="99px"></asp:Label>
                                </td>
                    <td >
            <asp:TextBox ID="txtWTel" runat="server" Width="153px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        Cell:</td>
                    <td>
            <asp:TextBox ID="txtCell" runat="server" Width="126px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                            ControlToValidate="txtCell" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="Right">
            <asp:Label ID="Label47" runat="server"  Text="Fax:" Width="79px"></asp:Label>
                                </td>
                    <td>
            <asp:TextBox ID="txtFax" runat="server" Width="155px" Wrap="False"></asp:TextBox>
                    </td>
                    <td class="style53">
                        &nbsp;</td>
                    <td align="Right">
            <asp:Label ID="Label48" runat="server"  Text="Email:" Width="99px"></asp:Label>
                                </td>
                    <td colspan="4">
            <asp:TextBox ID="txtEmail" runat="server" Width="348px"></asp:TextBox>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                                    Display="Dynamic" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                            ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
                                     </td>
                </tr>
                <tr>
                    <td align="Right">
            <asp:Label ID="Label49" runat="server"  Text="Occupation:" Width="79px"></asp:Label>
                                </td>
                    <td class="style67">
            <asp:TextBox ID="txtOccupation" runat="server" Width="155px" style="margin-bottom: 0px"></asp:TextBox>
                    </td>
                    <td >
                        &nbsp;</td>
                    <td class="style63" align="Right">
                                    Employer</td>
                    <td  colspan="4">
            <asp:TextBox ID="txtEmployer" runat="server" Width="347px"></asp:TextBox>
                    </td>
                    <td>
     <%--                   <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtEmployer" ErrorMessage="*"></asp:RequiredFieldValidator>
--%>                    </td>
                </tr>
                <tr>
                    <td  colspan="8">
                  
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table></div></div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep2" runat="server" Title="ADDRESS">
                   <div class="content">

                  <table>
                                        <tr>
                                            <td align="left" colspan="2">HOME ADDRESS</td>
                                            <td>
                                                <b></b></td>
                                            <td align="left" colspan="3">POSTAL ADDRESS</td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                House/Flat Number</td>
                                            <td>
            <asp:TextBox ID="txtHaddress" runat="server" Width="205px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td align="Right">
                                                PO Box</td>
                                            <td>
            <asp:TextBox ID="txtPaddress" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Street</td>
                                            <td>
            <asp:TextBox ID="txtHstreet" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style47" align="Right">
                                                Street</td>
                                            <td class="style49">
            <asp:TextBox ID="txtPStreet" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Suburb</td>
                                            <td class="style50">
            <asp:TextBox ID="txtHsuburb" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style47" align="Right">
                                                Suburb</td>
                                            <td class="style49">
            <asp:TextBox ID="txtPsuburb" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                City</td>
                                            <td class="style50">
            <asp:TextBox ID="txtHcity" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style47" align="Right">
                                                City</td>
                                            <td class="style49">
            <asp:TextBox ID="txtPcity" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Province</td>
                                            <td class="style50">
            <asp:DropDownList ID="ddlHprovince" runat="server" Height="16px" Width="204px">
                <asp:ListItem Value="1">EASTERN CAPE</asp:ListItem>
                <asp:ListItem Value="2">FREE STATE</asp:ListItem>
                <asp:ListItem Value="3">GAUTENG</asp:ListItem>
                <asp:ListItem Value="4">KWAZULU-NATAL</asp:ListItem>
                <asp:ListItem Value="5">MPUMALANGA</asp:ListItem>
                <asp:ListItem Value="6">NORTHERN CAPE</asp:ListItem>
                <asp:ListItem Value="7">LIMPOPO</asp:ListItem>
                <asp:ListItem Value="8">NORTH WEST</asp:ListItem>
                <asp:ListItem Value="9">WESTERN CAPE</asp:ListItem>
            </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style47" align="Right">
                                                Province</td>
                                            <td class="style49">
            <asp:DropDownList ID="ddlPprovince" runat="server" Height="16px" Width="204px">
                <asp:ListItem Value="1">EASTERN CAPE</asp:ListItem>
                <asp:ListItem Value="2">FREE STATE</asp:ListItem>
                <asp:ListItem Value="3">GAUTENG</asp:ListItem>
                <asp:ListItem Value="4">KWAZULU-NATAL</asp:ListItem>
                <asp:ListItem Value="5">MPUMALANGA</asp:ListItem>
                <asp:ListItem Value="6">NORTHERN CAPE</asp:ListItem>
                <asp:ListItem Value="7">LIMPOPO</asp:ListItem>
                <asp:ListItem Value="8">NORTH WEST</asp:ListItem>
                <asp:ListItem Value="9">WESTERN CAPE</asp:ListItem>
            </asp:DropDownList>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Code</td>
                                            <td class="style50">
            <asp:TextBox ID="txtHcode" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td class="style47" align="Right">
                                                Code</td>
                                            <td class="style49">
            <asp:TextBox ID="txtPcode" runat="server" Width="204px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                            
             </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep3" runat="server" Title="PERSON RESPONSIBLE">
                  <div class="content">  
                  <table  > 
    <tr>
        <td class="style18">
            <table  align="Right">
                <tr>
                    <td align="Right">
            Surname:</td>
                    <td class="style22">
            <asp:TextBox ID="txtRSurname" runat="server" Width="164px"></asp:TextBox>    
                    </td>
                    <td>
                        &nbsp;&nbsp;</td>
                    <td class="style20" align="Right">
                        First Name : 
                    </td>
                    <td class="style21">
            <asp:TextBox ID="txtRFirstname" runat="server" Width="153px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td align="Right">
            Title:</td>
                    <td>
            <asp:DropDownList ID="ddlRTitle" runat="server" Height="16px" Width="72px">
                <asp:ListItem Value="1">Mr</asp:ListItem>
                <asp:ListItem Value="2">Mrs</asp:ListItem>
                <asp:ListItem Value="4">Miss</asp:ListItem>
            </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="Right">
            <asp:Label ID="Label34" runat="server"  Text="ID Number:" Width="87px" Font-Bold="False"></asp:Label>
                    </td>
                    <td class="style22">
            <asp:TextBox ID="txtRIDnumber" runat="server" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="style20" align="Right">
            Date of Birth:</td>
                    <td class="style21">
            <asp:TextBox ID="txtRDOB" runat="server" Width="152px" Wrap="False"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td align="Right">
            
            <asp:Label ID="Label35" runat="server"  Text="Age :"
                Width="33px" style="text-align: right"></asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="txtRAge" runat="server" Width="71px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="Right">
                        Tel (H)</td>
                    <td class="style22">
            <asp:TextBox ID="txtRHtel" runat="server" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="style20" align="Right">
                        Tel (W)</td>
                    <td class="style21">
            <asp:TextBox ID="txtRWTel" runat="server" Width="153px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td align="Right">
                        Cell</td>
                    <td>
            <asp:TextBox ID="txtRCell" runat="server" Width="70px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="Right">
                        <asp:Label ID="Label38" runat="server"  Text="Occupation:" Width="88px"></asp:Label>
                                </td>
                    <td class="style22">
            <asp:TextBox ID="txtRoccupation" runat="server" Width="164px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td class="style20" align="Right">
                        <asp:Label ID="Label42" runat="server"  Text="Employer:" Width="88px"></asp:Label>
                                </td>
                    <td class="style21" colspan="4">
            <asp:TextBox ID="txtREmployer" runat="server" Width="356px"></asp:TextBox>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
</table>
               </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep4" runat="server" Title="MEDICAL AID">
                   <div class="content">
                       <table  align="Right">
                <tr>
                    <td class="style54" align="Right">
                        Medical Aid Name:</td>
                    <td class="style22">
            <asp:TextBox ID="txtMAName" runat="server" Width="193px"></asp:TextBox>    
                    </td>
                    <td class="style56">
                        &nbsp;&nbsp;</td>
                    <td class="style55" align="Right">
                        Membership No :
                    </td>
                    <td class="style21">
            <asp:TextBox ID="txtMnumber" runat="server" Width="184px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style54" align="Right">
            <asp:Label ID="Label36" runat="server"  Text="Option:" Width="132px"></asp:Label>
                    </td>
                    <td class="style22">
            <asp:TextBox ID="txtIOption" runat="server" Width="193px"></asp:TextBox>
                    </td>
                    <td class="style56">
                        &nbsp;</td>
                    <td class="style55" align="Right">
            Dependent Code:</td>
                    <td class="style21">
            <asp:TextBox ID="txtDEPCode" runat="server" Width="184px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style54" align="Right">
                        Main member Name:</td>
                    <td class="style22">
            <asp:TextBox ID="txtMMname" runat="server" Width="194px"></asp:TextBox>
                    </td>
                    <td class="style56">
                        &nbsp;</td>
                    <td class="style55" align="Right">
                        Main Member ID Number:</td>
                    <td class="style21">
            <asp:TextBox ID="txtMMIDnumber" runat="server" Width="184px"></asp:TextBox>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style54" align="Right">
                        &nbsp;</td>
                    <td class="style22">
                        &nbsp;</td>
                    <td class="style56">
                        &nbsp;</td>
                    <td class="style55" align="Right">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style54" align="Right" colspan="5">
                   
                      
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style27" colspan="8">
                        &nbsp;</td>
                </tr>
            </table></div>
               </asp:WizardStep>         
          </WizardSteps>
           <SideBarButtonStyle CssClass="btn btn-primary" />
           <NavigationButtonStyle CssClass="btn btn-primary" />
           <HeaderTemplate>
               <ul id="wizHeader">
                   <asp:Repeater ID="SideBarList" runat="server" >
                       <ItemTemplate>
                           <li style="font-size: small" class="wizard-nav"><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                               <%# Eval("Name")%></a> </li>
                       </ItemTemplate>
                   </asp:Repeater>
               </ul>
           </HeaderTemplate>
           
           <CancelButtonStyle CssClass="btn btn-primary" />
           
       </asp:Wizard></div></div>
    </td>
    </tr>
    </table>  
 
