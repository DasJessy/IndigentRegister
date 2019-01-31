<%@ Page Title="" Language="VB"  AutoEventWireup="false" CodeFile="IndigentRegister.aspx.vb" Inherits="IndigentRegister" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="RJS.Web.WebControl.PopCalendar.Net.2008" namespace="RJS.Web.WebControl" tagprefix="rjs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <meta name="keywords" content="admin, dashboard, bootstrap, template, flat, modern, theme, responsive, fluid, retina, backend, html5, css, css3">
  <meta name="description" content="">
  <meta name="author" content="ThemeBucket">
  <link rel="shortcut icon" href="#" type="image/png">

  <title>Indigent Management System</title>

  <!--icheck-->
  <link href="../js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
  <link href="../js/iCheck/skins/square/square.css" rel="stylesheet">
  <link href="../js/iCheck/skins/square/red.css" rel="stylesheet">
  <link href="../js/iCheck/skins/square/blue.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="../custom-plugins/wizard/wizard.css" media="screen">
  <link href="../css/AspWizard.css" rel="stylesheet" type="text/css" />
  <!--dashboard calendar-->
  <link href="../css/clndr.css" rel="stylesheet">

  <!--Morris Chart CSS -->
  <link rel="stylesheet" href="../js/morris-chart/morris.css">

  <!--common-->
  <link href="../css/style.css" rel="stylesheet">
  <link href="../css/style-responsive.css" rel="stylesheet">


</head>
<body>
    <form id="form1" runat="server">
    <div>
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
                <table style="width: 100%;">
                <tr>
                    <td  align="Right" class="style2">
                        &nbsp;</td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        &nbsp;</td>
                 
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
            <asp:TextBox ID="txtIDnumber" runat="server" Width="291px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
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
<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                            ControlToValidate="txtAge" ErrorMessage="*"></asp:RequiredFieldValidator>
--%>                    </td>
                </tr>
                <tr>
                    <td align="Right" class="style2">&nbsp;</td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
                       
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CellSpacing="5" 
                            Height="18px" Width="100%">
                          <asp:ListItem>MARRIED</asp:ListItem>
                            <asp:ListItem>DIVORCED</asp:ListItem>
                            <asp:ListItem>SINGLE</asp:ListItem>
                            <asp:ListItem>CUSTOMARY MARRIAGE</asp:ListItem>
                            <asp:ListItem>WIDOWED</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td align="Right">
                        &nbsp;</td>
                    <td >
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
                            <asp:TextBox ID="txtHtel" runat="server" Width="291px"></asp:TextBox>
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
                    <td align="Right" class="style3">
                        <asp:Label ID="Label51" runat="server" Text="Tel (W):" Width="99px"></asp:Label>
                                </td>
                    <td align="Right" class="style7">
                        &nbsp;</td>
                    <td class="style5">
                        <asp:TextBox ID="txtWTel0" runat="server" Width="290px"></asp:TextBox>
                    </td>
                    <td class="style1">
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
                        Cell:</td>
                    <td align="Right" class="style6">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtCell0" runat="server" Width="289px"></asp:TextBox>
                    </td>
                    <td >
                      
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
                                                <asp:TextBox ID="txtHaddress0" runat="server" Width="292px"></asp:TextBox>
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
                                                <asp:TextBox ID="txtHaddress" runat="server" Width="292px"></asp:TextBox>
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
            <asp:TextBox ID="txtHstreet" runat="server" Width="292px"></asp:TextBox>
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
            <asp:TextBox ID="txtHsuburb" runat="server" Width="292px"></asp:TextBox>
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
            <asp:TextBox ID="txtHcity" runat="server" Width="292px"></asp:TextBox>
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
            <asp:DropDownList ID="ddlHprovince" runat="server" Height="42px" Width="292px">
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
            <asp:TextBox ID="txtHcode" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                &nbsp;</td>
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
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" CellSpacing="2" 
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
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" CellSpacing="2" 
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
                        <asp:TextBox ID="txtRIDnumber0" runat="server" Width="99px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>HOW MANY ADULTS HAVE A REGULAR INCOME/FULL TIME OR PART TIME WORK?</span></td>
                    <td class="style4">
                        <asp:TextBox ID="txtRIDnumber2" runat="server" Width="99px"></asp:TextBox>
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
                            <asp:TextBox ID="txtCostcode" runat="server" placeholder="ID NUMBER" Width="140px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCostcode"
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
                        <asp:TextBox ID="TextBox13" runat="server" Width="99px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <span>WHAT IS THE TOTAL INCOME PER MONTH OF OTHER ADULTS LIVING IN THE HOUSE?</span></td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Width="99px"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    OLD AGE PENSION(GOVERNAMENT)</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    DISABILITY PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RETIREMENT PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    INFORMAL BUSINESS INCOME</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    RENTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    UIF</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    OTHER</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox31" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    TOTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox32" runat="server"></asp:TextBox>
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
               <asp:WizardStep ID="WizardStep5" runat="server" Title="Declaration">
                   <div class="content">
                       <p align="center" class="MsoNormal">
                           <u><span>E. &nbsp;DECLARATION</span></u><span><p>
                           </p>
                           </span>
                           <p>
                           </p>
                           <p class="MsoNormal">
                               <span>
                               <p>
                                   &nbsp;</p>
                               </span>
                               <p>
                               </p>
                               <p class="MsoNormal">
                                   <span>I, <u>
                                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                   </u>THE UNDERSIGNED, HEREBY DECLARE THAT THE INFOR- MATION PROVIDED ABOVE, IS TO 
                                   THE BEST OF MY KNOWLEDGE TRUE AND CORRECT AND FURTHER ACKNOWLEDGE THAT:<p>
                                   </p>
                                   </span>
                                   <p>
                                   </p>
                                   <p class="MsoNormal">
                                       <span>
                                       <p>
                                           &nbsp;</p>
                                       </span>
                                       <p>
                                       </p>
                                       <p class="MsoNormal">
                                           <span>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;FOR A HOUSEHOLD TO QUALIFY FOR REGISTRATION AS INDIGENT AND 
                                           TO RECEIVE THE COUNCIL APPROVED SUBSIDY ON MUNICIPAL SER- VICES, I MUST AT LEAST 
                                           MEET THE FOLLOWING CRITERIA:<p>
                                           </p>
                                           </span>
                                           <p>
                                           </p>
                                           <p class="MsoNormal">
                                               <span>
                                               <p>
                                                   &nbsp;</p>
                                               </span>
                                               <p>
                                               </p>
                                               <p class="MsoNormal">
                                                   <span>THE HOUSEHOLD INCOME MAY NOT EXCEED R 3 750.00 PER MONTH<p>
                                                   </p>
                                                   </span>
                                                   <p>
                                                   </p>
                                                   <p class="MsoNormal">
                                                       <span>
                                                       <p>
                                                           &nbsp;</p>
                                                       </span>
                                                       <p>
                                                       </p>
                                                       <p class="MsoNormal">
                                                           <span>THERE MAY BE NO BUSINESS RUN FROM THE PROPERTY WHERE THE MUNICPAL SERVICES 
                                                           ARE RENDERED<p>
                                                           </p>
                                                           </span>
                                                           <p>
                                                           </p>
                                                           <p class="MsoNormal">
                                                               <span>
                                                               <p>
                                                                   &nbsp;</p>
                                                               </span>
                                                               <p>
                                                               </p>
                                                               <p class="MsoNormal">
                                                                   <span>I MAY NOT OWN MORE THAN ONE PROPERTY AND MUST BE A FULL TIME OCCUPANT OF 
                                                                   THE PROPERTY FOR WHICH MUNICIPAL SERVICES ARE BEING RENDERED AND THE SUBSIDY 
                                                                   WILL BE ALLOCATED<p>
                                                                   </p>
                                                                   </span>
                                                                   <p>
                                                                   </p>
                                                                   <p class="MsoNormal">
                                                                       <span>
                                                                       <p>
                                                                           &nbsp;</p>
                                                                       </span>
                                                                       <p>
                                                                       </p>
                                                                       <p class="MsoNormal">
                                                                           <span>A PREPAID SERVICE METER MUST BE AVAILABLE OR INSTALLED<p>
                                                                           </p>
                                                                           </span>
                                                                           <p>
                                                                           </p>
                                                                           <p class="MsoNormal">
                                                                               <span>
                                                                               <p>
                                                                                   &nbsp;</p>
                                                                               </span>
                                                                               <p>
                                                                               </p>
                                                                               <p class="MsoNormal">
                                                                                   <span>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;THE ONUS IS ON ME AS THE ACCOUNTHOLDER AND REGISTERED 
                                                                                   INDIGENT TO INFORM SOL PLAATJE MUNICIPALITY SHOULD MY STATUS OR THAT OF THE 
                                                                                   HOUSEHOLD CHANGE AND THAT I NO LONGER MEET THE CRITERIA AS REFERENCED IN 
                                                                                   PARAGRAPH 1.<p>
                                                                                   </p>
                                                                                   </span>
                                                                                   <p>
                                                                                   </p>
                                                                                   <p class="MsoNormal">
                                                                                       <span>
                                                                                       <p>
                                                                                           &nbsp;</p>
                                                                                       </span>
                                                                                       <p>
                                                                                       </p>
                                                                                       <p class="MsoNormal">
                                                                                           <span>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;THE MUNICIPALITY RESERVES THE RIGHT TO WITHDRAW MY 
                                                                                           REGISTRATION AS AN INDIGENT AND MAY CLAIM ALL BENEFITS IN THE FORM OF SUBSIDIES 
                                                                                           OR WRITE-OFFS FROM ME SHOULD IT BE FOUND THAT THE INFORMATION I HAVE SUBMITTED 
                                                                                           IS INACCURATE OR FALSE, OR THAT MY CIRCUMSTANCES HAVE CHANGED AND I NO LONGER 
                                                                                           MEET THE CRITERIA FOR REGISTRATION., OR I HAVE CONTRAVENED ITS INDI- GENT 
                                                                                           MANAGEMENT POLICY OR ANY OTHER POLICY OR BY-LAW.<p>
                                                                                           </p>
                                                                                           </span>
                                                                                           <p>
                                                                                           </p>
                                                                                           <p class="MsoNormal">
                                                                                               <span>
                                                                                               <p>
                                                                                                   &nbsp;</p>
                                                                                               </span>
                                                                                               <p>
                                                                                               </p>
                                                                                               <p class="MsoNormal">
                                                                                                   <span>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I MAY APPEAL TO THE DECISION OF THE MUNICPALITY IF THE 
                                                                                                   CIRCUMSTANCE IN PARAGRAPH 3 ARISE.<p>
                                                                                                   </p>
                                                                                                   </span>
                                                                                                   <p>
                                                                                                   </p>
                                                                                                   <p class="MsoNormal">
                                                                                                       <span>
                                                                                                       <p>
                                                                                                           &nbsp;</p>
                                                                                                       </span>
                                                                                                       <p>
                                                                                                       </p>
                                                                                                       <p class="MsoNormal">
                                                                                                           <span>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;THIS APPLICATION MAY BE SUBJECT TO AN ON-SITE VERIFICATION 
                                                                                                           PROCESS PRIOR TO, OR AFTER APPROVAL OF THIS APPLICATION AND MAY BE DONE AT ANY 
                                                                                                           INTERVAL AND MORE THAN ONCE.<p>
                                                                                                           </p>
                                                                                                           </span>
                                                                                                           <p>
                                                                                                           </p>
                                                                                                           <p class="MsoNormal">
                                                                                                               <span>
                                                                                                               <p>
                                                                                                                   &nbsp;</p>
                                                                                                               </span>
                                                                                                               <p>
                                                                                                               </p>
                                                                                                               <p class="MsoNormal">
                                                                                                                   <span>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I UNDERTAKE TO MONITOR MY ACCOUNT AND WILL INFORM THE 
                                                                                                                   MUNICIPALITY IF THERE ARE ANY WATER LEAKS ON THE PROPERTY.<p>
                                                                                                                   </p>
                                                                                                                   </span>
                                                                                                                   <p>
                                                                                                                   </p>
                                                                                                                   <p class="MsoNormal">
                                                                                                                       <span>
                                                                                                                       <p>
                                                                                                                           &nbsp;</p>
                                                                                                                       </span>
                                                                                                                       <p>
                                                                                                                       </p>
                                                                                                                       <p class="MsoNormal">
                                                                                                                           <span>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;I AM LIABLE FOR THE PAYMENT OF ALL AMOUNTS DUE PER MY 
                                                                                                                           MUNICIPAL ACCOUNT. &nbsp;SHOULD I NOT MAKE PAYMENTS BY THE DUE DATE, THE MUNICIPALITY 
                                                                                                                           RESERVES THE RIGHT TO CANCEL MY INDIGENT STATUS AND IMPLEMENT DEBT RECOVERY 
                                                                                                                           PROCEDURES.<p>
                                                                                                                           </p>
                                                                                                                           </span>
                                                                                                                           <p>
                                                                                                                           </p>
                                                                                                                           <p class="MsoNormal">
                                                                                                                               <span>
                                                                                                                               <p>
                                                                                                                                   &nbsp;</p>
                                                                                                                               </span>
                                                                                                                               <p>
                                                                                                                               </p>
                                                                                                                               <p class="MsoNormal">
                                                                                                                                   <span>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MY REGISTRATION EXPIRES AT THE END OF TWO YEARS AT WHICH TIME 
                                                                                                                                   I MUST REAPPLY FOR INDIGENT REGISTRATION.<p>
                                                                                                                                   </p>
                                                                                                                                   </span>
                                                                                                                                   <p>
                                                                                                                                   </p>
                                                                                                                                   <p class="MsoNormal">
                                                                                                                                       <span>
                                                                                                                                       <p>
                                                                                                                                           &nbsp;</p>
                                                                                                                                       </span>
                                                                                                                                       <p>
                                                                                                                                       </p>
                                                                                                                                       <p class="MsoNormal">
                                                                                                                                           <span>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;THE INFORMATION I HAVE SUBMITTED MAY BE USED BY THE 
                                                                                                                                           MUNICIPALITY FOR STATISTICAL PURPOSES AND MAY BE PROVIDED TO OTHER SPHERES OF 
                                                                                                                                           GOVERNMENT. &nbsp;I AUTHORISE THE SOL PLAATJE MUNICIPALITY TO PERFORM CREDIT CHECKS 
                                                                                                                                           AT ANY CREDIT BUREAU AND TO CHECK MY STATS AT THE SOUTH AFRICAN REVENUE SERVICE<p>
                                                                                                                                           </p>
                                                                                                                                           </span>
                                                                                                                                           <p>
                                                                                                                                           </p>
                                                                                                                                           <p class="MsoNormal">
                                                                                                                                               <span>
                                                                                                                                               <p>
                                                                                                                                                   &nbsp;</p>
                                                                                                                                               </span>
                                                                                                                                               <p>
                                                                                                                                               </p>
                                                                                                                                               <p class="MsoNormal">
                                                                                                                                                   <span>10.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I HAVE BEEN MADE AWARE OF THE CONTENTS OF THIS APPLICATION AND 
                                                                                                                                                   ITS PROVISIONS HAVE BEEN EXPLAINED TO ME AND I UNDER- STAND THEM. I AM ALSO 
                                                                                                                                                   AWARE OF THE CONTENTS OF THE SOL PLAATJE MUNICIPALITY INDIGENT MANAGEMENT 
                                                                                                                                                   POLICY.<p>
                                                                                                                                                   </p>
                                                                                                                                                   </span>
                                                                                                                                                   <p>
                                                                                                                                                   </p>
                                                                                                                                               </p>
                                                                                                                                           </p>
                                                                                                                                       </p>
                                                                                                                                   </p>
                                                                                                                               </p>
                                                                                                                           </p>
                                                                                                                       </p>
                                                                                                                   </p>
                                                                                                               </p>
                                                                                                           </p>
                                                                                                       </p>
                                                                                                   </p>
                                                                                               </p>
                                                                                           </p>
                                                                                       </p>
                                                                                   </p>
                                                                               </p>
                                                                           </p>
                                                                       </p>
                                                                   </p>
                                                               </p>
                                                           </p>
                                                       </p>
                                                   </p>
                                               </p>
                                           </p>
                                       </p>
                                   </p>
                               </p>
                           </p>
                       </p>
                   </div>
               </asp:WizardStep> 
               <asp:WizardStep ID="WizardStep6" runat="server" Title="Supporting Documents">
                   <div class="content">
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
                               <td class="style54">
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
                               <td class="style54">
                                   <span>An affidavit declaring on oath employment status and/or income in respect 
                                   of all members of the household over 18 years of age and their full names and 
                                   identity numbers</span></td>
                               <td class="style21">
                                   <asp:RadioButtonList ID="RadioButtonList5" runat="server" 
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
                    <td class="style54">
                        <span>Documentary proof of income in respect of all such persons (e.g. letter 
                        from employer, salary advice, pension slip, aﬃdavit of income if self-employed 
                        or unemployed, letter from SARS);</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" 
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
                    <td class="style54">
                        &nbsp;<span>The most recent municipal account in the name of the applicant in respect 
                        of the property in question</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" 
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
                    <td class="style54" align="Right">
                        <span>A copy of the applicant&#39;s identity document and the identity documents or 
                        birth certiﬁcates of all occupants in the property</span></td>
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
                               <td align="Right" class="style54">
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
                    <td class="style54" align="Right">
                   
                      
                        <span>SELECTED FOR PRE-REGISTRATION SITE VERIFICATION</span></td>
                    <td class="style21">
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" 
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
                               <td align="Right" class="style4">
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
                               <td align="Right" class="style1">
                                   <span>VERIFIED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RadioButtonList10" runat="server" 
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
                               <td align="Right" class="style54">
                                   <span>OFFICIAL</span></td>
                               <td class="style21">
                                   <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="177px">
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
                               <td align="Right" class="style54">
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
                                   <asp:RadioButtonList ID="RadioButtonList11" runat="server" 
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
                               <td align="Right" class="style1">
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
                               <td align="Right" class="style1">
                                   <span>VERIFIED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RadioButtonList12" runat="server" 
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
                               <td align="Right" class="style54">
                                   <span>OFFICIAL</span></td>
                               <td class="style21">
                                   <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="177px">
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
                               <td align="Right" class="style54">
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
                               <td align="Right" class="style54">
                                   <p align="center" class="MsoNormal" 
                                       style="font-weight: bold; font-size: medium">
                                       <span>NOTIFICATION LETTER SENT OUT<p>
                                       </p>
                                       </span>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                   </p>
                               </td>
                               <td class="style21">
                                   <asp:RadioButtonList ID="RadioButtonList13" runat="server" 
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
                               <td align="Right" class="style1">
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
                               <td align="Right" class="style1">
                                   <span>DEBT WRITTEN OFF</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RadioButtonList14" runat="server" 
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
                               <td align="Right" class="style3">
                                   <span>OFFICIAL</span></td>
                               <td class="style3">
                                   <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="177px">
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
                               <td align="Right" class="style54">
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
                               <td class="style25">
                                   <p class="MsoNormal" style="font-weight: bold; font-size: 12pt">
                                       <span>OFFICIAL’S COMMENTS/REASONS<p>
                                       </p>
                                       </span>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                       <p>
                                       </p>
                                   </p>
                               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style1">
                                   <span>REGISTERED</span></td>
                               <td class="style1">
                                   <asp:RadioButtonList ID="RadioButtonList16" runat="server" 
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
                               <td align="Right">
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
                               <td align="Right" class="style54">
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
                                   <asp:TextBox ID="TextBox37" runat="server" Height="222px" TextMode="MultiLine" 
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
                               <td class="style25">
                                   <p class="MsoNormal" style="font-weight: bold; font-size: 12pt">
                                       <b><span>QUALITY CONTROL</span></b></p>
                               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style1">
                                   OFFICIAL</td>
                               <td class="style1">
                                   <asp:DropDownList ID="DropDownList4" runat="server" Height="25px" Width="177px">
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
                               <td align="Right">
                                   DATE</td>
                               <td>
                                     <asp:TextBox ID="TextBox7" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar7" runat="server" Control="txtDateRecevied"     Format="yyyy mm dd"  /></td>
                               <td>
                               </td>
                               <td>
                               </td>
                               <td>
                               </td>
                           </tr>
                <tr>
                    <td class="style27" colspan="5">
                        Upload Files<br />
                        <iframe ID="I1" runat="server" name="I1" scrolling="auto" style="width: 768px">
                        </iframe>
                    </td>
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
    </div>
    </form>
</body>
</html>