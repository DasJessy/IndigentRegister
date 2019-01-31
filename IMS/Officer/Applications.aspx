<%@ Page Title="" Language="VB" MasterPageFile="~/Officer/MasterPageOfficer.master" AutoEventWireup="false" CodeFile="Applications.aspx.vb" Inherits="Officer_Applications" %>

<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="RJS.Web.WebControl.PopCalendar.Net.2008" namespace="RJS.Web.WebControl" tagprefix="rjs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

 p.MsoNormal
	{margin-top:0in;
	margin-right:0in;
	margin-bottom:8.0pt;
	margin-left:0in;
	line-height:107%;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
            text-align: left;
        }
        .style5
        {
            width: 355px;
        }
        </style>
      <script language="javascript" type="text/javascript">
          function ValidateNumeral() {
              var kCode = parseInt(event.keyCode);
              if (kCode >= 46 && kCode <= 57) {
                  event.returnValue = true;
                  return true;
              }
              event.returnValue = false;
              return false;
          }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
    <tr>
    <td>
    
              <div class="panel panel-default">
                        <div class="panel-heading">Indigent Register</div>
                        <div class="panel-body">
<asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="false" class="panel-body"   
                                OnActiveStepChanged="Wizard1_ActiveStepChanged" 
                                OnFinishButtonClick="Wizard1_FinishButtonClick" style="width: 100%;" 
                                ActiveStepIndex="5">
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
               <asp:WizardStep ID="WizardStep1" runat="server" Title="Applicant Information">
                <div class="content" style="width: 100%;"> 
                <div>
                <table style="width: 76%;">
                <tr>
                    <td  align="Right" class="style2">
                        Ref No:</td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtRefno" runat="server" Enabled="False" 
                            ForeColor="#4D5767" Width="150px">New Indigent</asp:TextBox>
                    </td>
                 
                </tr>
                    <tr>
                        <td align="Right" class="style2">
                            Indigent Type</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboIndigentType" runat="server"  Height="25px" Width="291px">
                                <asp:ListItem>Income</asp:ListItem>
                                <asp:ListItem>Geografic Area</asp:ListItem>
                                <asp:ListItem>Child Headed</asp:ListItem>
                                <asp:ListItem>Exceptional Circumstances</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="Right" class="style2">
                            Title:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboTitle" runat="server" DataTextField="GenderDesc" 
                                DataValueField="GenderID" Height="25px" Width="122px">
                                <asp:ListItem>Mr</asp:ListItem>
                                <asp:ListItem>Mrs</asp:ListItem>
                                <asp:ListItem>Miss</asp:ListItem>
                                <asp:ListItem>Dr</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="Right" class="style2">
                            Surname:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtSurname" runat="server" Width="292px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                                ControlToValidate="txtSurname" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                        <td align="Right" class="style2">
                            First Name :</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtFirstname" runat="server" Width="292px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" 
                                ControlToValidate="txtFirstname" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                    <td align="Right" class="style2">
            <asp:Label ID="Label44" runat="server"  Text="ID Number:" Width="81px"></asp:Label>
                    </td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
            <asp:TextBox ID="txtIDnumber" runat="server" Width="291px" MaxLength="13"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td align="Right">
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtIDnumber" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
            
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtAge" ErrorMessage="*"></asp:RequiredFieldValidator>
--%>                    </td>
                </tr>
                    <tr>
                        <td align="Right" class="style2">
                            Population Group:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                          <asp:DropDownList ID="cboRace" runat="server"  Height="25px" Width="291px">
                                  <asp:ListItem>Black</asp:ListItem>
                                <asp:ListItem>Asian</asp:ListItem>
                                <asp:ListItem>Coloured</asp:ListItem>
                                <asp:ListItem>Indian</asp:ListItem>
                                <asp:ListItem>White</asp:ListItem>
                                <asp:ListItem>Unknown</asp:ListItem>
                                <asp:ListItem>Various</asp:ListItem>
                            </asp:DropDownList>                            
                           
                        </td>
                        <td>
                            &nbsp;</td>
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
                        <td align="Right" class="style2">
                            Marital Status:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboMaritalStatus" runat="server"  Height="25px" Width="291px">
                                <asp:ListItem>Married</asp:ListItem>
                                <asp:ListItem>Divorced</asp:ListItem>
                                <asp:ListItem>Single</asp:ListItem>
                                <asp:ListItem>Customary Marriage</asp:ListItem>
                                <asp:ListItem>Widowed</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            &nbsp;</td>
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
                        <td align="Right" class="style2">
                            Desibility:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:RadioButtonList ID="RDesibilityStatus" runat="server" 
                                RepeatDirection="Horizontal" Width="164px">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem>No</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>
                            &nbsp;</td>
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
                        <td align="Right" class="style2">
                            Tel (H):</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtHtel" runat="server" Width="291px" MaxLength="15"></asp:TextBox>
                            </td>
                        <td>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtHtel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
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
                    <td align="Right" class="style2">
                        Tel (W):</td>
                    <td align="Right" class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:TextBox ID="txtWTel" runat="server" Width="290px" MaxLength="15"></asp:TextBox>
                    </td>
                    <td class="style1"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtWTel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                        </td>
                    <td align="Right" class="style1">
                                </td>
                    <td colspan="4" class="style1">

                    </td>
                    <td class="style1">
                                     </td>
                </tr>
                <tr>
                    <td align="Right" class="style2">
                        Tel(C):</td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtCell" runat="server" Width="289px" MaxLength="15"></asp:TextBox>
                    </td>
                    <td >
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtCell" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                    </td>
                    <td class="style63" align="Right">
                                    &nbsp;</td>
                    <td  colspan="4">
                        &nbsp;</td>
                    <td>
     <%--                   <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                            ControlToValidate="txtEmployer" ErrorMessage="*"></asp:RequiredFieldValidator>
--%>                    </td>
                </tr>
                    <tr>
                        <td align="Right" class="style2">
                            Email:</td>
                        <td align="Right" class="style6">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtEmail" runat="server" Width="289px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td align="Right" class="style63">
                            &nbsp;</td>
                        <td colspan="4">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
            </table></div></div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep2" runat="server" Title="Account Information">
                   <div class="content">

                  <table>
                                        <tr>
                                            <td align="left" colspan="3">&nbsp;</td>
                                           
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Account Number</td>
                                            <td align="Right">
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtAccountNumber" runat="server" Width="292px" MaxLength="15"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                ERF Number</td>
                                            <td align="Right">
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtERF" runat="server" Width="292px" Wrap="False"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Street</td>
                                            <td align="Right">
                                                &nbsp;</td>
                                            <td>
            <asp:TextBox ID="txtstreet" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Suburb</td>
                                            <td align="Right" class="style47">
                                                &nbsp;</td>
                                            <td class="style50">
            <asp:TextBox ID="txtsuburb" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                City</td>
                                            <td align="Right" class="style47">
                                                &nbsp;</td>
                                            <td class="style50">
            <asp:TextBox ID="txtcity" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style1" align="Right">
                                                Province</td>
                                            <td align="Right" class="style1">
                                                &nbsp;</td>
                                            <td class="style1">
            <asp:DropDownList ID="cboProvince" runat="server" Height="25px" Width="292px">
                <asp:ListItem Value="1">NORTHERN CAPE</asp:ListItem>               
            </asp:DropDownList>
                                            </td>
                                            <td class="style1">
                                                </td>
                                            <td class="style1">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Code</td>
                                            <td align="Right" class="style47">
                                                &nbsp;</td>
                                            <td class="style50">
            <asp:TextBox ID="txtcode" runat="server" Width="292px" MaxLength="4"></asp:TextBox>
                                            </td>
                                            <td>
                                                       <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtcode" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                            
             </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep3" runat="server" Title="Household Information">
                  <div class="content" width="600px">  
                  <table width="600px"> 
    <tr>
        <td>
            <table  align="left">
                <tr>
                    <td class="style1">
                        <span>ARE YOU THE OWNER OF THE HOUSE?</span></td>
                    <td>
                        <asp:RadioButtonList ID="ROwnerStatus" runat="server" CellSpacing="2" 
                            RepeatDirection="Horizontal" Width="87px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>IF NO, ARE YOU THE LAWFUL OCCUPIER OF THE HOUSE?</span></td>
                    <td>
                        <asp:RadioButtonList ID="ROccupierStatus" runat="server" CellSpacing="2" 
                            RepeatDirection="Horizontal" Width="87px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>HOW MANY ADULTS RESIDE FULL TIME IN THE HOUSE?</span></td>
                    <td>
                        <asp:TextBox ID="txtAdultResidents" runat="server" Width="99px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="txtAdultResidents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>HOW MANY ADULTS HAVE A REGULAR INCOME/FULL TIME OR PART TIME WORK?</span></td>
                    <td class="style4">
                        <asp:TextBox ID="txtAdultsIncome" runat="server" Width="99px"></asp:TextBox>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="txtAdultsIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>DETAILS OF ALL OCCUPANTS IN THE HOUSE OR ON THE PROPERTY</span>&nbsp; 
                                               
                    </td>
                    <td class="style4">
                       
                    </td>
                </tr>
                <tr>
                    <td class="style1" colspan="2">
                        <asp:Button ID="ButtonAdd" runat="server" Text="Add OCCUPANT"/>
 
                            <asp:GridView ID="GridView1"  runat="server" ShowFooter="false" 
                            AutoGenerateColumns="False" OnRowDeleting="GridView1_RowDeleting"
                Width="97%" Style="text-align: left">
                             <Columns>
                    <asp:BoundField DataField="RowNumber" HeaderText="No" HeaderStyle-VerticalAlign="Top" >
<HeaderStyle VerticalAlign="Top"></HeaderStyle>
                                 </asp:BoundField>
                    <asp:TemplateField HeaderText="RELATIONSSHIP">
                        <ItemTemplate>
                            <asp:TextBox ID="txtName" runat="server" placeholder="RELATIONSSHIP" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>                   
                    <asp:TemplateField HeaderText="SURNAME">
                        <ItemTemplate>
                            <asp:TextBox ID="txtTelephone" runat="server" placeholder="SURNAME" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTelephone"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="INITIALS">
                        <ItemTemplate>
                            <asp:TextBox ID="txtemail" runat="server" placeholder="INITIALS" Width="70px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="ID NUMBER">
                        <ItemTemplate>
                            <asp:TextBox ID="txtPIDNumber" runat="server" placeholder="ID NUMBER" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPIDNumber"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="EMPLOYER DETAILS">
                        <ItemTemplate>
                            <asp:TextBox ID="txtEMPLOYER" runat="server" placeholder="EMPLOYER DETAILS" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEMPLOYER"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MONTHLY INCOME">
                        <ItemTemplate>
                            <asp:TextBox ID="txtMonthly" runat="server" placeholder="MONTHLY INCOME" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMonthly"
                                ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                            </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <br />
                         <div>  
                        </div>
                       
                    </td>
                </tr>
                </table>
        </td>
    </tr>
</table>
               </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep4" runat="server" Title="Household Income">
                  <div class="content" width="600px">  
                  <table width="600px"> 
    <tr>
        <td>
            <table  align="left">
                <tr>
                    <td class="style1">
                        <span>WHAT IS YOUR TOTAL INCOME PER MONTH?</span></td>
                    <td>
                        <asp:TextBox ID="txtApplicantIncomePerMonth" runat="server" Width="99px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>WHAT IS THE TOTAL INCOME PER MONTH OF OTHER ADULTS LIVING IN THE HOUSE?</span></td>
                    <td>
                        <asp:TextBox ID="txtAudaltsTotalIncome" runat="server" Width="99px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style1" colspan="2">
                        <span>WHAT ARE THE SOURCES OF YOUR INCOME AND THAT OF THE OTHER ADULTS LIVING IN 
                        THE HOUSE?</span></td>
                </tr>
                <tr>
                    <td class="style1" colspan="2">
                        <table class="style5">
                            <tr>
                                <td>
                                    <b>DESCRIPTION</b></td>
                                <td class="style6">
                                    <b>NO. OF RECIPIENTS</b></td>
                                <td>
                                    <b>AMOUNT PER MONTH</b></td>
                            </tr>
                            <tr>
                                <td>
                                    SALARY</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRSalary" runat="server" onkeypress="javascript:return ValidateNumeral();"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    OLD AGE PENSION(GOVERNAMENT)</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtOldAgePensionRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOldAgePension" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    DISABILITY PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDisabilityPensionRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDisabilityPension" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RETIREMENT PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRetirementPensionRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRetirementPension" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    INFORMAL BUSINESS INCOME</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtInformalBusinessIncomeRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtInformalBusinessIncome" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RENTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRentalRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRental" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    UIF</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtUIFRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtUIF" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    OTHER</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtOtherRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOther" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    TOTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtTotalRecipents" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </table>
        </td>
    </tr>
</table>
               </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep5" runat="server" Title="Documents">
                   <div class="content">
                       <p align="center" class="MsoNormal">
                           <u><span>Documents</span></u><span><p>
                           </p>
                           </span>
                           <p>
                           </p>
                              <table  align="left">
                           <tr>
                               <td align="Right" class="style54" colspan="5">
                                   <p class="MsoNormal">
                                       <span>An applicant wishing to apply for indigent support under the category 
                                       “income indigent” for a house hold must complete an application form as required 
                                       by the municipality which shall be accompanied by at least the following 
                                       Documents:</span></p>
                                   <p class="MsoNormal">
                                       &nbsp;</p>
                                   <p class="MsoNormal">
                                       &nbsp;</p>
                               </td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   Description</td>
                               <td class="style21">
                                   Received</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   <span>An affidavit declaring on oath employment status and/or income in respect 
                                   of all members of the household over 18 years of age and their full names and 
                                   identity numbers</span></td>
                               <td class="style21">
                                   <span>
                                   <asp:FileUpload ID="FileUploadIDDoc" runat="server" Font-Names="Century Gothic" 
                                       TabIndex="50" Width="100%" />
                                   </span>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5">
                        <span>Documentary proof of income in respect of all such persons (e.g. letter 
                        from employer, salary advice, pension slip, aﬃdavit of income if self-employed 
                        or unemployed, letter from SARS);</span></td>
                    <td class="style21">
                        <span>
                        <asp:FileUpload ID="FileUploadIDDoc0" runat="server" 
                            Font-Names="Century Gothic" TabIndex="50" Width="100%" />
                        </span>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5">
                        &nbsp;<span>The most recent municipal account in the name of the applicant in respect 
                        of the property in question</span></td>
                    <td class="style21">
                        <span>
                        <asp:FileUpload ID="FileUploadIDDoc1" runat="server" 
                            Font-Names="Century Gothic" TabIndex="50" Width="100%" />
                        </span>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5" align="Left">
                        <span>A copy of the applicant&#39;s identity document and the identity documents or 
                        birth certiﬁcates of all occupants in the property</span></td>
                    <td class="style21">
                        <span>
                        <asp:FileUpload ID="FileUploadIDDoc2" runat="server" 
                            Font-Names="Century Gothic" TabIndex="50" Width="100%" />
                        </span>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td align="Right" class="style5">
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
            </table>
                           <p>
                           </p>
                           <p>
                           </p>
                       </p>
                   </div>
               </asp:WizardStep> 
               <asp:WizardStep ID="WizardStep6" runat="server" Title="VERIFICATION">
                   <div class="content">
                       <table  align="right">
                           <tr>
                               <td align="Right" class="style54" colspan="5">
                                   <p class="MsoNormal">
                                       <span>An applicant wishing to apply for indigent support under the category 
                                       “income indigent” for a house hold must complete an application form as required 
                                       by the municipality which shall be accompanied by at least the following 
                                       Documents:</span></p>
                                   <p class="MsoNormal">
                                       &nbsp;</p>
                                   <p class="MsoNormal">
                                       &nbsp;</p>
                               </td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   Description</td>
                               <td class="style21">
                                   Received</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   <span>An affidavit declaring on oath employment status and/or income in respect 
                                   of all members of the household over 18 years of age and their full names and 
                                   identity numbers</span></td>
                               <td class="style21">
                                   <asp:RadioButtonList ID="REmployementStatusAffidavit" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5">
                        <span>Documentary proof of income in respect of all such persons (e.g. letter 
                        from employer, salary advice, pension slip, aﬃdavit of income if self-employed 
                        or unemployed, letter from SARS);</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RProofOfIncomeDocuments" runat="server" 
                            RepeatDirection="Horizontal" Width="150px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5">
                        &nbsp;<span>The most recent municipal account in the name of the applicant in respect 
                        of the property in question</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RMunicipalAccountNameofTheApplicant" runat="server" 
                            RepeatDirection="Horizontal" Width="150px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td class="style5">
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
                    <td class="style5" align="Right">
                        <span>A copy of the applicant&#39;s identity document and the identity documents or 
                        birth certiﬁcates of all occupants in the property</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RApplicantAndOccupentIDDocuments" runat="server" 
                            RepeatDirection="Horizontal" Width="150px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td align="Right" class="style5">
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
                    <td class="style5" align="Right">
                   
                      
                        <span>SELECTED FOR PRE-REGISTRATION SITE VERIFICATION</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RPRSiteVerification" runat="server" 
                            RepeatDirection="Horizontal" Width="150px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td align="Right" class="style6">
                                   DATE</td>
                               <td class="style4">
                                    <asp:TextBox ID="txtPREREGISTRATION" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="DateRecevied" runat="server" Control="txtPREREGISTRATION"     Format="yyyy mm dd"  />    </td>
                               <td class="style4">
                                   </td>
                               <td class="style4">
                                   </td>
                               <td class="style4">
                                   </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   <span>VERIFIED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RPRVerified" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   <span>OFFICIAL</span></td>
                               <td class="style21">
                                   <asp:DropDownList ID="cboPROfficer" runat="server" Height="25px" Width="177px">
                                       <asp:ListItem>Dev</asp:ListItem>
                                       <asp:ListItem>Lesego</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   DATE</td>
                               <td class="style21">
                                     <asp:TextBox ID="txtPREREGISTRATIONofficialdate" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar1" runat="server" Control="txtPREREGISTRATIONofficialdate"     Format="yyyy mm dd"  /></td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                <tr>
                    <td class="style54" align="Right" colspan="2">
                   
                      
                        &nbsp;</td>
                    <td class="style25">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                           <tr>
                               <td align="Right" class="style2">
                                   <span>SELECTED FOR POST-REGISTRATION SITE VERIFICATION </span>
                               </td>
                               <td class="style21">
                                   <asp:RadioButtonList ID="RPOSiteVerification" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   DATE</td>
                               <td class="style1">
                                     <asp:TextBox ID="txtPostREGISTRATION" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar2" runat="server" Control="txtPostREGISTRATION"     Format="yyyy mm dd"  /></td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   <span>VERIFIED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RPOVerified" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   <span>OFFICIAL</span></td>
                               <td class="style21">
                                   <asp:DropDownList ID="cboPOOfficer" runat="server" Height="25px" Width="177px">
                                       <asp:ListItem>Dev</asp:ListItem>
                                       <asp:ListItem>Lesego</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   DATE</td>
                               <td class="style21">
                                     <asp:TextBox ID="txtPostREGISTRATIONOffcial" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar3" runat="server" Control="txtPostREGISTRATIONOffcial"     Format="yyyy mm dd"  /></td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style54" colspan="2">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   <p align="center" class="MsoNormal" 
                                       style="font-weight: bold; font-size: medium">
                                       <span>NOTIFICATION LETTER SENT OUT
                                       </span>                                      
                                   </p>
                               </td>
                               <td class="style21" valign="top">
                                   <asp:RadioButtonList ID="RNotification" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   DATE</td>
                               <td class="style1">
                                     <asp:TextBox ID="txtNotificationSentoutDate" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar4" runat="server" Control="txtNotificationSentoutDate"     Format="yyyy mm dd"  /></td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   <span>DEBT WRITTEN OFF</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RDEBT" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   <span>OFFICIAL</span></td>
                               <td class="style3">
                                   <asp:DropDownList ID="cboNotificationOfficer" runat="server" Height="25px" 
                                       Width="177px">
                                       <asp:ListItem>Dev</asp:ListItem>
                                       <asp:ListItem>Lesego</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                               <td class="style3">
                                   </td>
                               <td class="style3">
                                   </td>
                               <td class="style3">
                                   </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   DATE</td>
                               <td class="style21">
                                     <asp:TextBox ID="txtNotificationSentoutDateOffficial" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar5" runat="server" Control="txtNotificationSentoutDateOffficial"     Format="yyyy mm dd"  /></td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style54" colspan="2">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   <p class="MsoNormal" style="font-weight: bold; font-size: 12pt">
                                       <span>OFFICIAL’S COMMENTS/REASONS
                                       </span>
                                    
                                   </p>
                               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   <span>REGISTERED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RComments" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   DATE</td>
                               <td>
                                     <asp:TextBox ID="txtRegisterdDate" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar6" runat="server" Control="txtRegisterdDate"     Format="yyyy mm dd"  /></td>
                               <td>
                               </td>
                               <td>
                               </td>
                               <td>
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
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
                               <td align="Right" class="style54" colspan="2">
                                   <asp:TextBox ID="txtCommentsNotes" runat="server" Height="222px" TextMode="MultiLine" 
                                       Width="731px"></asp:TextBox>
                               </td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style54" colspan="2">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td class="style5">
                                   <p class="MsoNormal" style="font-weight: bold; font-size: 12pt">
                                       <b><span>QUALITY CONTROL</span></b></p>
                               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style7">
                                   OFFICIAL</td>
                               <td class="style1">
                                   <asp:DropDownList ID="cboQualityPROfficer" runat="server" Height="25px" 
                                       Width="177px">
                                       <asp:ListItem>Dev</asp:ListItem>
                                       <asp:ListItem>Lesego</asp:ListItem>
                                   </asp:DropDownList>
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                               <td class="style1">
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   DATE</td>
                               <td>
                                     <asp:TextBox ID="txtQualityDate" runat="server" Width="160px" 
                                         placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar7" runat="server" Control="txtDateRecevied"     Format="yyyy mm dd"  /></td>
                               <td>
                               </td>
                               <td>
                               </td>
                               <td>
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style5">
                                   Application Status:
                               </td>
                               <td>
                                          <asp:DropDownList ID="cboApplicationStatus" runat="server">
                           <asp:ListItem>Application Received</asp:ListItem>
                           <asp:ListItem>Application being analysed</asp:ListItem>
                            <asp:ListItem>Submitted for approval</asp:ListItem>
                           <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Application Pending</asp:ListItem>
                           <asp:ListItem>Application Pending</asp:ListItem>
                            <asp:ListItem>Waiting For Supporting Documents</asp:ListItem>
                           <asp:ListItem>Approved</asp:ListItem>
                        </asp:DropDownList>
               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
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
</asp:Content>