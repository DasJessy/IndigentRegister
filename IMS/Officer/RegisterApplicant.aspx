<%@ Page Title="" Language="VB" MasterPageFile="~/Officer/MasterPageOfficer.master" AutoEventWireup="false" CodeFile="RegisterApplicant.aspx.vb" Inherits="Officer_RegisterApplicant" %>
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
        .style1
        {
            height: 29px;
            width: 229px;
        }
        .style4
        {
        height: 29px;
        width: 293px;
        text-align: left;
    }
        .style9
        {
        height: 29px;
        width: 149px;
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
<script language="javascript" type="text/javascript">
    function Comma(Num) { //function to add commas to textboxes
        Num += '';
        Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
        Num = Num.replace(',', ''); Num = Num.replace(',', ''); Num = Num.replace(',', '');
        x = Num.split('.');
        x1 = x[0];
        x2 = x.length > 1 ? '.' + x[1] : '';
        var rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1))
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        return x1 + x2;
    }

 </script>
  <script language="javascript" type="text/javascript">
      function Appendpermonth(textbox) {
          var text = textbox.value;
          document.getElementById("<%=txtApplicantIncomePerMonth.ClientID %>").value = "";
          if (text != "") {
              document.getElementById("<%=txtApplicantIncomePerMonth.ClientID %>").value = text + "00";
          }
          else {
              document.getElementById("<%=txtApplicantIncomePerMonth.ClientID %>").value = "0,00";
          }
      }
  </script>
  
 <script language="javascript" type="text/javascript">
     function AppendDot(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtAudaltsTotalIncome.ClientID %>").value = "";
         if (text != "") {
             document.getElementById("<%=txtAudaltsTotalIncome.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtAudaltsTotalIncome.ClientID %>").value = "0,00";
         }
     }

    
     
     
    </script>

    <script language="javascript" type="text/javascript">
     function AppendDot_pen(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtOldAgePension.ClientID %>").value = "";
         if (text != "") {
             document.getElementById("<%=txtOldAgePension.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtOldAgePension.ClientID %>").value = "0,00";
         }
     }

        function AppendDot_Sal(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtSalary.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtSalary.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtSalary.ClientID %>").value = "0,00";
         }
        }

        function AppendDot_PenR(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtDisabilityPension.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtDisabilityPension.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtDisabilityPension.ClientID %>").value = "0,00";
         }
          }

        function AppendDot_R_Pen(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtRetirementPension.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtRetirementPension.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtRetirementPension.ClientID %>").value = "0,00";
         }
          }

        function AppendDot_I_B(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtInformalBusinessIncome.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtInformalBusinessIncome.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtInformalBusinessIncome.ClientID %>").value = "0,00";
         }
          }

        function AppendDot_R(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtRental.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtRental.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtRental.ClientID %>").value = "0,00";
         }
          }

        function AppendDot_UIF(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtUIF.ClientID %>").value = "";
            if (text != "") {
             document.getElementById("<%=txtUIF.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtUIF.ClientID %>").value = "0,00";
         }
         }

         function AppendDot_O(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtOther.ClientID %>").value = "";
             if (text != "") {
             document.getElementById("<%=txtOther.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtOther.ClientID %>").value = "0,00";
         }
         }

         function AppendDot_T(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtTotal.ClientID %>").value = "";
             if (text != "") {
             document.getElementById("<%=txtTotal.ClientID %>").value = text + ",00";
         }
         else {
             document.getElementById("<%=txtTotal.ClientID %>").value = "0,00";
         }
         }

        function AppendDot_mon(textbox) {
         var text = textbox.value;
         document.getElementById("<%=txtOCCMonthly.ClientID %>").value = "";
           
            if (text!="") {
             document.getElementById("<%=txtOCCMonthly.ClientID %>").value = text + ",00";
             }
            else
            {
             document.getElementById("<%=txtOCCMonthly.ClientID %>").value ="0,00" ;
         }
         }

        
     
     
    </script>

    <script type="text/javascript" language ="javascript">
        function OnCurrencyValueKeyUp(input) {
            if (input.value.toString().length == 1 && input.value.toString() == '0')
                input.value = input.value.replace('0', '');

            var num = input.value.replace('.', '');
            num = input.value.replace(/\,/g, '');
            if ((!isNaN(num) || num == '-') && num != '-0') {
                if (num.indexOf('.') > -1) {
                    num = num.split('.');
                    num[0] = num[0].toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,').split('').reverse().join('').replace(/^[\,]/, '');
                    if (num[1].length > 2) {
                        num[1] = num[1].substring(0, num[1].length - 1);
                    }
                    input.value = num[0] + '.' + num[1];
                }
                else {
                    input.value = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g, '$1,').split('').reverse().join('').replace(/^[\,]/, '')
                };
            }
            else {
                input.value = input.value.substring(0, input.value.length - 1);
            }
            input.value = input.value.toString().replace(/\$|\ /g, '');
            input.value = input.value.toString().replace('.', '');
            input.value = input.value.toString().replace('-,', '-');

        }
</script>
<script type="text/javascript">
    function MaskMoney1(evt, allow) {

        if (!(evt.keyCode == 46 || (evt.keyCode >= 48 && evt.keyCode <= 57))) return false;
        var parts = evt.srcElement.value.split('.');
        if (parts.length > 2) return false;
        if (evt.keyCode == 46) return (parts.length == 1);
        if (parts[0].length >= 14) return false;
        if (parts.length == 2 && parts[1].length >= allow) return false;
    }


    function insertcommas(nField) {
        if (/^0/.test(nField.value)) {
            nField.value = nField.value.substring(0, 1);
        }
        if (Number(nField.value.replace(/,/g, ""))) {
            var tmp = nField.value.replace(/,/g, "");
            tmp = tmp.toString().split('').reverse().join('').replace(/(\d{3})/g, '$1,').split('').reverse().join('').replace(/^,/, '');
            if (/\./g.test(tmp)) {
                tmp = tmp.split(".");
                tmp[1] = tmp[1].replace(/\,/g, "").replace(/ /, "");
                nField.value = tmp[0] + "." + tmp[1]
            }
            else {
                nField.value = tmp.replace(/ /, "");
            }
        }
        else {
            nField.value = nField.value.replace(/[^\d\,\.]/g, "").replace(/ /, "");
        }

    }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="overflow-x:auto;">

    
    <table style="width: 100%;">
    <tr>
    <td>
    
              <div class="panel panel-default">
                        <div class="panel-heading">Indigent Register</div>
                        <div class="panel-body">
<asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="False" class="panel-body"   
                                OnActiveStepChanged="Wizard1_ActiveStepChanged" 
                                OnFinishButtonClick="Wizard1_FinishButtonClick" style="width: 100%; margin-bottom: 0px;" 
                                ActiveStepIndex="0">
           <StartNextButtonStyle CssClass="btn btn-primary" />
           <FinishCompleteButtonStyle CssClass="btn btn-primary" />
           <StepNextButtonStyle CssClass="btn btn-primary" />
            <StepPreviousButtonStyle CssClass="btn btn-primary" />
            <StepNavigationTemplate>
             <asp:Button ID="StepPreviousButton" runat="server" CausesValidation="true" CommandName="MovePrevious" Text="Previous" CssClass="btn btn-primary"  />
            <asp:Button ID="StepNextButton" runat="server" CommandName="MoveNext" Text="Next" CssClass="btn btn-primary" />
             <asp:Button ID="StepFinishButton" runat="server" CommandName="Movelast" Text="Finish" CssClass="btn btn-primary" Visible="false"/>            
            </StepNavigationTemplate>
           <FinishPreviousButtonStyle CssClass="btn btn-primary" />
           <WizardSteps>
                  <asp:WizardStep ID="WizardStep1" runat="server" Title="Applicant Information" StepType="Start">
                <div class="content" style="width: 100%;"> 
                <div>
                <table width="100%">
                <tr>
                    <td  align="Right" class="style9">
                        Ref No:</td>
                    <td align="Right">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtRefno" runat="server" Enabled="False" 
                            ForeColor="#4D5767" Width="150px">New Indigent</asp:TextBox>
                    </td>
                 
                </tr>
                    <tr>
                        <td align="Right" class="style9">
                            Indigent Type</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboIndigentType" runat="server"  Height="25px" 
                                Width="291px" DataTextField="ITYPEDESC" DataValueField="ITYPEID">
                            </asp:DropDownList>
                        </td>
                        <td>
                             <asp:RequiredFieldValidator InitialValue="-1"  ID="RequiredFieldValidator2"
                                runat="server" ControlToValidate="cboIndigentType"
                                Text="*" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="Right" class="style9">
                            Title:</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboTitle" runat="server" DataTextField="TitleDesc" 
                                DataValueField="TitleID" Height="25px" Width="122px">
                            </asp:DropDownList>
                        </td>
                        <td>
                             <asp:RequiredFieldValidator InitialValue="-1"  ID="RequiredFieldValidator7"
                                runat="server" ControlToValidate="cboTitle"
                                Text="*" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="Right" class="style9">
                            Surname:</td>
                        <td align="Right">
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
                        <td align="Right" class="style9">
                            First Name :</td>
                        <td align="Right">
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
                    <td align="Right" class="style9">
            <asp:Label ID="Label44" runat="server"  Text="ID Number:" Width="81px"></asp:Label>
                    </td>
                    <td align="Right">
                        &nbsp;</td>
                    <td class="style4">
            <asp:TextBox ID="txtIDnumber" runat="server" Width="291px" MaxLength="13"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                            ControlToValidate="txtIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td align="Right" colspan="4">
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="txtIDnumber" runat="server" ErrorMessage="ID must contain 13 integers only" ValidationExpression="^\d{13,}$"></asp:RegularExpressionValidator>
                        
</td>
                </tr>
                    <tr>
                        <td align="Right" class="style9">
                            Population Group:</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                          <asp:DropDownList ID="cboRace" runat="server"  Height="25px" Width="291px" 
                                AutoPostBack="True" DataTextField="RaceDesc" DataValueField="RaceID">
                            </asp:DropDownList>                            
                           
                        </td>
                        <td>
                            <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator6"
                                runat="server" ControlToValidate="cboRace"
                                Text="*" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>

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
                        <td align="Right" class="style9">
                            Marital Status:</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:DropDownList ID="cboMaritalStatus" runat="server"  Height="25px" 
                                Width="291px" DataTextField="MStatusDesc" DataValueField="MID">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator3"
                                runat="server" ControlToValidate="cboMaritalStatus"
                                Text="*" ErrorMessage="ErrorMessage"></asp:RequiredFieldValidator>
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
                        <td align="Right" class="style9">
                            Disability:</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:RadioButtonList ID="RDesibilityStatus" runat="server" 
                                RepeatDirection="Horizontal" Width="164px">
                                <asp:ListItem>Yes</asp:ListItem>
                                <asp:ListItem Selected="True">No</asp:ListItem>
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
                        <td align="Right" class="style9">
                            Tel (H):</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtHtel" runat="server" Width="291px" MaxLength="15"></asp:TextBox>
                            </td>
                        <td colspan="6">
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtHtel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                   </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                <tr>
                    <td align="Right" class="style9">
                        Tel (W):</td>
                    <td align="Right">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtWTel" runat="server" Width="290px" MaxLength="15"></asp:TextBox>
                    </td>
                    <td class="style1" colspan="7"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="txtWTel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                        </td>
                </tr>
                <tr>
                    <td align="Right" class="style9">
                        Tel(C):</td>
                    <td align="Right">
                        &nbsp;</td>
                    <td class="style4">
                        <asp:TextBox ID="txtCell" runat="server" Width="289px" MaxLength="15"></asp:TextBox>
                    </td>
                    <td colspan="7" >
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="txtCell" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                    <tr>
                        <td align="Right" class="style9">
                            Email:</td>
                        <td align="Right">
                            &nbsp;</td>
                        <td class="style4">
                            <asp:TextBox ID="txtEmail" runat="server" Width="289px"></asp:TextBox>
                        </td>
                        <td colspan="6"><asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter valid Email Id"

                            ControlToValidate="txtEmail" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" > </asp:RegularExpressionValidator>
                            </td>
                        <td>
                            &nbsp;</td>
                    </tr>
            </table></div></div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep2" runat="server" Title="Account Information" StepType="Step">
                   <div class="content">

                  <table>
                                        <tr>
                                            <td align="left" colspan="3">&nbsp;</td>
                                           
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Account Number:</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td>
                                                <asp:TextBox ID="txtAccountNumber" runat="server" Width="292px" MaxLength="15"></asp:TextBox>
                                            </td>
                                            <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtAccountNumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </td>
                                            <td>
                                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="txtAccountNumber" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                                </td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Ward</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td>
                                                <asp:DropDownList ID="cboWard" runat="server" DataTextField="WDesc" 
                                                    DataValueField="WID" Height="25px" Width="292px">                                                  
                                                </asp:DropDownList>
                                            </td>
                                            <td> <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                ControlToValidate="cboWard" InitialValue="-1" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                ERF Number:</td>
                                            <td align="Right" class="style2">
                                                &nbsp</td>
                                            <td>
                                                <asp:TextBox ID="txtERF" runat="server" Width="292px" Wrap="False"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                            ControlToValidate="txtERF" ErrorMessage="*"></asp:RequiredFieldValidator> </td>
                                            <td>
                                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="txtERF" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator> </td>
                                        </tr>
                                        <tr>
                                            <td align="Right">
                                                Street:</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td>
            <asp:TextBox ID="txtstreet" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                            ControlToValidate="txtstreet" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Suburb:</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td class="style50">
                                                <asp:TextBox ID="txtsuburb" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                    ControlToValidate="txtsuburb" ErrorMessage="*"></asp:RequiredFieldValidator>

                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                City:</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td class="style50">
            <asp:TextBox ID="txtcity" runat="server" Width="292px"></asp:TextBox>
                                            </td>
                                            <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                                    ControlToValidate="txtcity" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style1" align="Right">
                                                Province:</td>
                                            <td align="Right" class="style3">
                                                &nbsp;</td>
                                            <td class="style1">
            <asp:DropDownList ID="cboProvince" runat="server" Height="25px" Width="292px">
                <asp:ListItem Value="1">NORTHERN CAPE</asp:ListItem>               
            </asp:DropDownList>
                                            </td>
                                            <td class="style1">
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                ControlToValidate="cboWard" InitialValue="-1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                 </td>
                                            <td class="style1">
                                                </td>
                                        </tr>
                                        <tr>
                                            <td class="style47" align="Right">
                                                Code:</td>
                                            <td align="Right" class="style2">
                                                &nbsp;</td>
                                            <td class="style50">
            <asp:TextBox ID="txtcode" runat="server" Width="292px" MaxLength="4"></asp:TextBox>
                                            </td>
                                            <td>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server"
                                                    ControlToValidate="txtcode" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                            <td colspan="2">
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtcode" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                  </table>
                            
             </div>
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep3" runat="server" Title="Household Information" StepType="Step">
                    <div class="row">
                <div class="col-md-12">

                    <div class="content" style="width:100%;">  
                  <table> 
    <tr>
        <td>
            <table  align="left">
                <tr>
                    <td class="style10">
                        <span>ARE YOU THE OWNER OF THE HOUSE?</span></td>
                    <td class="style11">
                        :</td>
                    <td>
                        <asp:RadioButtonList ID="ROwnerStatus" runat="server" CellSpacing="2" 
                            RepeatDirection="Horizontal" Width="87px">
                            <asp:ListItem Selected="True">Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <span>IF NO, ARE YOU THE LAWFUL OCCUPIER OF THE HOUSE?</span></td>
                    <td class="style11">
                        :</td>
                    <td>
                        <asp:RadioButtonList ID="ROccupierStatus" runat="server" CellSpacing="2" 
                            RepeatDirection="Horizontal" Width="87px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <span>HOW MANY ADULTS RESIDE FULL TIME IN THE HOUSE?</span></td>
                    <td class="style11">
                        :</td>
                    <td>
                        <asp:TextBox ID="txtAdultResidents" runat="server" Width="99px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" 
                                ControlToValidate="txtAdultResidents" ErrorMessage="*"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="txtAdultResidents" ErrorMessage="Only Numbers allowed" 
                            ValidationExpression="\d+"></asp:RegularExpressionValidator>
                            
                             
                    </td>
                    <td>
                               </td>
                </tr>
                <tr>
                    <td class="style10">
                        <span>HOW MANY ADULTS HAVE A REGULAR INCOME/FULL TIME OR PART TIME WORK?</span></td>
                    <td class="style11">
                        :</td>
                    <td class="style4">
                        <asp:TextBox ID="txtAdultsIncome" runat="server" Width="99px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" 
                                ControlToValidate="txtAdultsIncome" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="txtAdultsIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
          
                       
                    </td>
                    <td>
                                   </td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp; 
                                               
                    </td>
                    <td class="style11">
                       
                        &nbsp;</td>
                    <td class="style4">
                    </td>
                </tr>
                </table>
        </td>
    </tr>
</table>
                      <table class="style5">
                          <tr>
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
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td colspan="7">
                                  <span class="style12">DETAILS OF ALL OCCUPANTS IN THE HOUSE OR ON THE PROPERTY</span></td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
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
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  RELATIONSHIP</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  FIRSTNAME</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  SURNAME</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  ID NUMBER</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  EMPLOYER DETAILS</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  MONTHLY INCOME</td>
                              <td bgcolor="#3366CC" 
                                  style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">
                                  &nbsp;</td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                          <tr>
                              <td>
                                  <asp:TextBox ID="txtOccRelation" runat="server"></asp:TextBox>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtOCCFirstname" runat="server" Width="129px"></asp:TextBox>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtOCCSurname" runat="server"></asp:TextBox>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtOCCIDnumber" runat="server"></asp:TextBox>
                                  
                              </td>
                              <td>
                                  <asp:TextBox ID="txtOCCEmployer" runat="server"></asp:TextBox>
                              </td>
                              <td>
                                  <asp:TextBox ID="txtOCCMonthly" runat="server" Width="127px" ></asp:TextBox>
                              </td>
                              <td>
                                  <asp:Button ID="cmdAddOccupant" runat="server" class="btn btn-inverse" 
                                      Text="ADD OCCUPANT" Width="148px" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS" />
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>

                             <tr>
                              <td>
                                 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOccRelation" ErrorMessage="*"></asp:RequiredFieldValidator>
                              </td>
                              <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOCCFirstname" ErrorMessage="*"></asp:RequiredFieldValidator>
                              </td>
                              <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOCCSurname" ErrorMessage="*"></asp:RequiredFieldValidator>
                              </td>
                              <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOCCIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="txtOCCIDnumber" runat="server" ErrorMessage="ID must contain 13 integers only" ValidationExpression="^\d{13,}$"></asp:RegularExpressionValidator>
                              </td>
                              <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOCCEmployer" ErrorMessage="*"></asp:RequiredFieldValidator>
                              </td>
                              <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                ControlToValidate="txtOCCMonthly" ErrorMessage="*"></asp:RequiredFieldValidator>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator32" ControlToValidate="txtOCCMonthly" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?"></asp:RegularExpressionValidator>

                              </td>
                              <td>
                                
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                       
                          <tr>
                              <td colspan="7">
                                  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" AllowSorting="true"
                                      Width="100%">
                                      <RowStyle BackColor="#A1DCF2" />
                                      <AlternatingRowStyle BackColor="White" ForeColor="Black" />
                                      <Columns>
                                          <asp:TemplateField>
                                              <ItemTemplate>
                                                  <asp:Label ID="ID0" runat="server" Text='<%#Eval("ID") %>' />
                                              </ItemTemplate>
                                          </asp:TemplateField>
                                          <asp:BoundField DataField="INDRelation" HeaderText="Relation" />
                                          <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                                          <asp:BoundField DataField="LastName" HeaderText="LastName" />
                                          <asp:BoundField DataField="IDnumber" HeaderText="IDnumber" />
                                          <asp:BoundField DataField="MonthlyIncome" HeaderText="Monthly Income" />
                                          <asp:TemplateField>
                                              <ItemTemplate>
                                                  <asp:LinkButton ID="btnDelete0" runat="server" CommandName="Delete" 
                                                      Text="Delete" />
                                              </ItemTemplate>
                                              <ItemStyle HorizontalAlign="Center" />
                                          </asp:TemplateField>
                                      </Columns>
                                      <HeaderStyle BackColor="#3AC0F2" ForeColor="White" />
                                  </asp:GridView>
                              </td>
                              <td>
                                  &nbsp;</td>
                          </tr>
                      </table>
               </div>

                    </div>
                        </div>
                  
               </asp:WizardStep>
               <asp:WizardStep ID="WizardStep4" runat="server" Title="Household Income" StepType="Step">
                  <div class="content" style="width:100%; ">  
                  <table width="600px"> 
    <tr>
        <td>
            <table  align="left">
                <tr>
                    <td class="style1">
                        <span>WHAT IS YOUR TOTAL INCOME PER MONTH?</span></td>
                    <td>
                        <asp:TextBox ID="txtApplicantIncomePerMonth" runat="server" Width="99px" onchange="Appendpermonth(this);"></asp:TextBox>
                   
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server"
                                ControlToValidate="txtApplicantIncomePerMonth" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" ControlToValidate="txtApplicantIncomePerMonth" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1"><span>WHAT IS THE TOTAL INCOME PER MONTH OF OTHER ADULTS LIVING IN THE HOUSE?</span></td>
                    <td>
                        <asp:TextBox ID="txtAudaltsTotalIncome" runat="server" Width="99px" ></asp:TextBox>

                    </td>
                    <td>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server"
                                ControlToValidate="txtAudaltsTotalIncome" ErrorMessage="*"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator31" ControlToValidate="txtAudaltsTotalIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr>
                    <td class="style1">
                       
                        </td>
                            <td>
                        &nbsp;</td></tr><tr>
                    <td class="style1" colspan="2">
                        <span>WHAT ARE THE SOURCES OF YOUR INCOME AND THAT OF THE OTHER ADULTS LIVING IN 
                        THE HOUSE?</span></td></tr><tr>
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
                                <td>SALARY</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRSalary" runat="server" onkeypress="javascript:return ValidateNumeral();"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtSalary" runat="server" ></asp:TextBox>

                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="txtRSalary" runat="server" ErrorMessage="Only number allowed" ValidationExpression="\d+" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" ControlToValidate="txtSalary" runat="server" ErrorMessage="Only number allowed" Font-Size="Small" ValidationExpression="\d+(\.\d+)?" Display="Dynamic" ></asp:RegularExpressionValidator>
                                </td>

                                </tr>
                            <tr>


                                <td>OLD AGE PENSION(GOVERNAMENT)</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtOldAgePensionRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtOldAgePension" runat="server" ></asp:TextBox>

                                </td>
                              <td>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator15" ControlToValidate="txtOldAgePensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" Font-Size="Small" ValidationExpression="\d+" Display="Dynamic"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" ControlToValidate="txtOldAgePension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>

                                <td>DISABILITY PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDisabilityPensionRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtDisabilityPension" runat="server"></asp:TextBox>

                                </td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator30" ControlToValidate="txtDisabilityPensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" ControlToValidate="txtDisabilityPension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>

                                <td>RETIREMENT PENSION</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRetirementPensionRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtRetirementPension" runat="server" ></asp:TextBox></td>
                              <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" ControlToValidate="txtRetirementPensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator19" ControlToValidate="txtRetirementPension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                
                                <td>INFORMAL BUSINESS INCOME</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtInformalBusinessIncomeRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtInformalBusinessIncome" runat="server" ></asp:TextBox></td>
                            <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator20" ControlToValidate="txtInformalBusinessIncomeRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small"   Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator21" ControlToValidate="txtInformalBusinessIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                
                                <td>RENTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtRentalRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtRental" runat="server" ></asp:TextBox></td>
                             <td>
                                      <asp:RegularExpressionValidator ID="RegularExpressionValidator22" ControlToValidate="txtRentalRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator23" ControlToValidate="txtRental" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                              
                                <td>UIF</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtUIFRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtUIF" runat="server" ></asp:TextBox></td>
                                <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator24" ControlToValidate="txtUIFRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator25" ControlToValidate="txtUIF" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                
                                <td>OTHER</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtOtherRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtOther" runat="server" ></asp:TextBox></td>
                             <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator26" ControlToValidate="txtOtherRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" ControlToValidate="txtOther" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                
                                <td>TOTAL</td>
                                <td class="style6">
                                    <asp:TextBox ID="txtTotalRecipents" runat="server"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtTotal" runat="server" ></asp:TextBox>
                                    
                                </td>
                              <td>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator28" ControlToValidate="txtTotalRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator29" ControlToValidate="txtTotal" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small"  Display="Dynamic"></asp:RegularExpressionValidator>
                                </td>

                            </tr>
                            <tr>
                                <td colspan="4">
                                       <asp:Button ID="calculate_total" CssClass="btn btn-primary" runat="server" Text="Calculate Total" />
                                </td>
                            </tr>
                        </table>
                    </td></tr></table></td></tr></table></div></asp:WizardStep>
               <asp:WizardStep ID="WizardStep5" runat="server" Title="Documents" StepType="Step">
                   <div class="content">
                       <p align="center" class="MsoNormal">
                           <u><span>Documents</span></u><span><p>
                           </p>
                           </span>
                           <p>
                           </p>
                             <table width="100%"><tr><td class="style1" valign="top">
                                 Indigent Applicant / Occupent :</td><td class="style4" valign="top">
                                     <asp:DropDownList ID="ddlIndigentAppOccu" runat="server" Height="25px" 
                                         Width="233px" AutoPostBack="True">
                                         <asp:ListItem>Applicant</asp:ListItem><asp:ListItem>Occupent</asp:ListItem></asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" 
                                ControlToValidate="ddlIndigentAppOccu" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                                                     </td><td class="style3" valign="top">
                                     &nbsp;</td><td class="style2">
                                     </input>
                                     &nbsp;</td><td class="style2">
        &nbsp;</td></tr><tr>
                                     <td class="style1" valign="top">
                                         Applicant Name / Occupent &nbsp;Name:</td><td class="style4" valign="top">
                                         <asp:DropDownList ID="ddlApplicantName" runat="server" Height="25px" 
                                             Width="233px" AutoPostBack="True" DataTextField="FirstName" 
                                             DataValueField="IDNumber">
                                         </asp:DropDownList>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                ControlToValidate="ddlApplicantName" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                     </td>
                                     <td class="style3" valign="top">
                                         &nbsp;</td><td class="style2">
                                         </input>
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td></tr><tr>
                                     <td class="style1" valign="top">
                                         Document Type:</td><td class="style4" valign="top">
                                         <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="233px">
                                             <asp:ListItem>Affidavit Document</asp:ListItem>
                                             <asp:ListItem>Letter From Employer</asp:ListItem>
                                             <asp:ListItem>Salary Advise</asp:ListItem>
                                             <asp:ListItem>Pension Slip</asp:ListItem>
                                             <asp:ListItem>Affidavit Self Employed</asp:ListItem>
                                             <asp:ListItem>Affidavit Un-Employed</asp:ListItem>
                                             <asp:ListItem>Letter From SARS</asp:ListItem>
                                             <asp:ListItem>Recent Municipal Account</asp:ListItem>
                                             <asp:ListItem>ID Document</asp:ListItem>
                                             <asp:ListItem>Birth Certificate</asp:ListItem>

                                         </asp:DropDownList>
                                              <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="DropDownList2" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                                            </td><td class="style3" valign="top">
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td></tr><tr>
                                     <td class="style1" valign="top">
                                         Doccument Comments:</td><td class="style4" valign="top">
                                         <asp:TextBox ID="txtDocumentComments" runat="server" TextMode="MultiLine" 
                                             Width="233px"></asp:TextBox></td><td class="style3" valign="top">
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td></tr><tr>
                                     <td class="style1" valign="top">
                                         <asp:Label ID="Span1" runat="server"></asp:Label></td><td class="style4" valign="top">
                                         <input ID="myfile" runat="server" class="btn btn-inverse" multiple="multiple" 
                                             size="80" type="file"></input> 
                                         </input> 
                                         </input>
                                         &nbsp;</td><td class="style3" valign="top">
                                         <asp:Button ID="cmdUploadDocuments" runat="server" class="btn btn-inverse" 
                                             Text="Upload" Width="148px" ValidationGroup="Document" />
                                     </td>
                                     <td class="style2">
                                         &nbsp;</td><td class="style2">
                                         &nbsp;</td></tr></table><asp:GridView ID="GridView2" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
            AutoGenerateColumns="false" Width="100%">
<AlternatingRowStyle BackColor="White" ForeColor="Black"></AlternatingRowStyle>
            <Columns>
            <asp:TemplateField>         
         <ItemTemplate>
              <asp:Label runat="server" ID="ID" Text='<%#Eval("ID") %>' />
            </ItemTemplate> 
         </asp:TemplateField>
                <asp:BoundField DataField="IndigentAPPMemberType" HeaderText="Memeber Type"/>
                <asp:BoundField DataField="FullName" HeaderText="Full Name"/>
                <asp:BoundField DataField="IDnumber" HeaderText="IDnumber"/>
                <asp:BoundField DataField="Name" HeaderText="File Name"/>
                <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton></ItemTemplate><ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
                 <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
                 <ItemTemplate>
        <asp:LinkButton ID="btnDelete"  Text="Delete" runat="server" CommandName="Delete" />
      </ItemTemplate>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:TemplateField>
            </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="#A1DCF2"></RowStyle>
        </asp:GridView>
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
                           <p>
                           </p>
                       </p>
                   </div>
               </asp:WizardStep>   
                <asp:WizardStep ID="WizardStep6" runat="server" Title="Verification" >
                
                  <br />
                  
                   <div class="row">
                        <div class="col-md-8">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                            <h3 class="panel-title">Documents Verification</h3>                          
                        </div>
                        <div class="panel-body">
                             <p class="MsoNormal">
                                       <span>An applicant wishing to apply for indigent support under the category 
                                       “income indigent” for a house hold must complete an application form as required 
                                       by the municipality which shall be accompanied by at least the following 
                                       Documents:</span></p>
                                   <p class="MsoNormal">
                                       </p>
                                   <p class="MsoNormal">
                                       <table>
                                             <tr>
                               <td class="style10">
                                   Description</td>
                                                 <td class="style8">
                                                     &nbsp;</td>
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
                               <td class="style10">
                                   <span>An affidavit declaring on oath employment status and/or income in respect 
                                   of all members of the household over 18 years of age and their full names and 
                                   identity numbers</span></td>
                               <td class="style8">
                                   &nbsp;</td>
                               <td valign="Top">
                                   <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" Width="150px" 
                                       ID="REmployementStatusAffidavit"><asp:ListItem>Yes</asp:ListItem>
<asp:ListItem>No</asp:ListItem>
</asp:RadioButtonList>

                               </td>
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
                               <td class="style10">
                                   &nbsp;</td>
                               <td class="style8">
                                   &nbsp;</td>
                               <td class="style21" valign="Top">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                <tr>
                    <td class="style10">
                        <span>Documentary proof of income in respect of all such persons (e.g. letter 
                        from employer, salary advice, pension slip, aﬃdavit of income if self-employed 
                        or unemployed, letter from SARS);</span></td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style21" valign="Top">
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
                               <td class="style10">
                                   &nbsp;</td>
                               <td class="style8">
                                   &nbsp;</td>
                               <td class="style21" valign="Top">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                <tr>
                    <td class="style10">
                        &nbsp;<span>The most recent municipal account in the name of the applicant in respect 
                        of the property in question</span></td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style21" valign="Top">
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
                               <td class="style10">
                                   &nbsp;</td>
                               <td class="style8">
                                   &nbsp;</td>
                               <td class="style21" valign="Top">
                                   &nbsp;</td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                <tr>
                    <td class="style9" align="Right">
                        <span>A copy of the applicant&#39;s identity document and the identity documents or 
                        birth certiﬁcates of all occupants in the property</span></td>
                    <td align="Right" class="style8">
                        &nbsp;</td>
                    <td class="style21" valign="Top">
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
                                       </table>
                                       
                                       </p>
                        </div>
                    </div></div></div>
                     <div class="row">
                        <div class="col-md-8">
                   <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">PRE-REGISTRATION SITE VERIFICATION</h3>                           
                        </div>
                        <div class="panel-body">
                        <table>
                              
                <tr>
                    <td class="style11" align="Right">
                   
                      
                        <span>SELECTED FOR PRE-REGISTRATION SITE VERIFICATION</span></td>
                    <td align="Right" class="style13">
                        &nbsp;</td>
                    <td class="style23">
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
                               <td align="Right" class="style12">
                                   DATE</td>
                               <td align="Right" class="style6">
                                   &nbsp;</td>
                               <td class="style23">
                                    <asp:TextBox ID="txtPREREGISTRATIONDate" runat="server" Width="160px" 
                                        placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="DateRecevied" 
                                        runat="server" Control="txtPREREGISTRATIONDate"     Format="yyyy mm dd"  />    </td>
                               <td class="style4">
                                   </td>
                               <td class="style4">
                                   </td>
                               <td class="style4">
                                   </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style11">
                                   <span>VERIFIED</span></td>
                               <td align="Right" class="style13">
                                   &nbsp;</td>
                               <td class="style23">
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
                               <td align="Right" class="style11">
                                   <span>OFFICIAL</span></td>
                               <td align="Right" class="style13">
                                   &nbsp;</td>
                               <td class="style23">
                                   <asp:DropDownList ID="cboPROfficer" runat="server" Height="25px" Width="177px" 
                                       DataTextField="Name" DataValueField="UserID">
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
                               <td align="Right" class="style11">
                                   DATE</td>
                               <td align="Right" class="style13">
                                   &nbsp;</td>
                               <td class="style23">
                                     <asp:TextBox ID="txtPREREGISTRATIONofficialdate" runat="server" Width="160px" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar1" runat="server" Control="txtPREREGISTRATIONofficialdate"     Format="yyyy mm dd"  /></td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                        </table>
                        </div>
                        </div>
                        </div>
                        </div>
                        <div class="row">
                        <div class="col-md-8">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">POST-REGISTRATION SITE VERIFICATION</h3>                             
                        </div>
                        <div class="panel-body">
                        <table>
                          <tr>
                               <td align="Right" class="style14">
                                   <span>SELECTED FOR POST-REGISTRATION SITE VERIFICATION </span>
                               </td>
                               <td align="Right" class="style16">
                                   &nbsp;</td>
                               <td class="style26">
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
                               <td align="Right" class="style15">
                                   DATE</td>
                               <td align="Right" class="style17">
                                   &nbsp;</td>
                               <td class="style26">
                                     <asp:TextBox ID="txtRPOSTREGISTRATIONDate" runat="server" Width="160px" 
                                         placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar2" 
                                         runat="server" Control="txtRPOSTREGISTRATIONDate"     Format="yyyy mm dd"  /></td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                           </tr>
                           <tr>
                               <td align="Right" class="style15">
                                   <span>VERIFIED</span></td>
                               <td align="Right" class="style17">
                                   &nbsp;</td>
                               <td class="style26">
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
                               <td align="Right" class="style15">
                                   <span>OFFICIAL</span></td>
                               <td align="Right" class="style17">
                                   &nbsp;</td>
                               <td class="style26">
                                   <asp:DropDownList ID="cboRPOOfficer" runat="server" Height="25px" Width="177px" 
                                       DataTextField="Name" DataValueField="UserID">
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
                               <td align="Right" class="style15">
                                   DATE</td>
                               <td align="Right" class="style17">
                                   &nbsp;</td>
                               <td class="style26">
                                     <asp:TextBox ID="txtRPOofficialDate" runat="server" Width="160px" 
                                         placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar3" 
                                         runat="server" Control="txtRPOofficialDate"     Format="yyyy mm dd"  /></td>
                               <td class="style25">
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                        </table>
                        </div>
                        </div>
                        </div></div>
                        
                                                <div class="row">
                        <div class="col-md-8">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">NOTIFICATION LETTER</h3>                             
                        </div>
                        <div class="panel-body">
                        <table>
                        <tr>
                               <td align="Right" class="style20">
                                   <p align="center" class="MsoNormal" 
                                       style="font-size: medium; text-align: right;">
                                       <span>NOTIFICATION LETTER SENT OUT
                                       </span>                                      
                                   </p>
                               </td>
                               <td align="Right" class="style22">
                                   &nbsp;</td>
                               <td class="style19" valign="top">
                                   <asp:RadioButtonList ID="RNotification" runat="server" 
                                       RepeatDirection="Horizontal" Width="150px">
                                       <asp:ListItem>Yes</asp:ListItem>
                                       <asp:ListItem>No</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                               <td class="style19">
                                   </td>
                               <td class="style19">
                                   </td>
                               <td class="style19">
                                   </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style20">
                                   <span>DEBT WRITTEN OFF</span></td>
                               <td align="Right" class="style22">
                                   &nbsp;</td>
                               <td class="style1">
                                     <asp:RadioButtonList ID="RDEBTWRITTENOFF" runat="server" RepeatDirection="Horizontal" 
                                         Width="150px">
                                         <asp:ListItem>Yes</asp:ListItem>
                                         <asp:ListItem>No</asp:ListItem>
                                     </asp:RadioButtonList>
                               </td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                               <td class="style1">
                                   &nbsp;</td>
                           </tr>
                            <tr>
                                <td align="Right" class="style20">
                                    DATE</td>
                                <td align="Right" class="style22">
                                    &nbsp;</td>
                                <td class="style1">
                                    <asp:TextBox ID="txtNotificationSentoutDate" runat="server" 
                                        placeholder="YYYY-MM-DD" Width="160px"></asp:TextBox>
                                    <rjs:PopCalendar ID="PopCalendar4" runat="server" 
                                        Control="txtNotificationSentoutDate" Format="yyyy mm dd" />
                                </td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                                <td class="style1">
                                    &nbsp;</td>
                            </tr>
                        </table>
                          </div>
                        </div>
                        </div></div>
                        
                                               <div class="row">
                        <div class="col-md-8">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">OFFICIAL’S COMMENTS/REASONS</h3>                             
                        </div>
                        <div class="panel-body">
                        <table>
                            <tr>
                               <td align="Right">REGISTERED</td>
                               <td class="style29">
                                   &nbsp;</td>
                                <td class="style1">
                                    <asp:RadioButtonList ID="RComments" runat="server" RepeatDirection="Horizontal" 
                                        Width="150px">
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
                               <td class="style30">
                                     &nbsp;</td>
                               <td>
                                   <asp:TextBox ID="txtRCommentsDate" runat="server" placeholder="YYYY-MM-DD" 
                                       Width="160px"></asp:TextBox>
                                   <rjs:PopCalendar ID="PopCalendar6" runat="server" Control="txtRCommentsDate" 
                                       Format="yyyy mm dd" />
                               </td>
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
                               <td class="style29">
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
                               <td align="Right" class="style54" colspan="5">
                                   <asp:TextBox ID="txtCommentsNotes" runat="server" Height="222px" TextMode="MultiLine" 
                                       Width="600px"></asp:TextBox>
                               </td>
                           </tr>
                        
                        </table>
                        </div>
                        </div>
                        </div></div>
                        
                                                                       <div class="row">
                        <div class="col-md-8">
                         <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 class="panel-title">QUALITY CONTROL</h3>                             
                        </div>
                        <div class="panel-body">
                        <table>
                             <tr>
                               <td align="Right" class="style31">
                                   OFFICIAL</td>
                                 <td align="Right" class="style7">
                                     &nbsp;</td>
                               <td class="style1">
                                   <asp:DropDownList ID="cboQualityPROfficer" runat="server" Height="25px" 
                                       Width="183px" DataTextField="Name" DataValueField="UserID">
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
                               <td align="Right" class="style31">
                                   DATE</td>
                               <td align="Right" class="style7">
                                   &nbsp;</td>
                               <td>
                                     <asp:TextBox ID="txtQualityOfficialDate" runat="server" Width="160px" 
                                         placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar7" 
                                         runat="server" Control="txtQualityOfficialDate"     Format="yyyy mm dd"  /></td>
                               <td>
                               </td>
                               <td>
                               </td>
                               <td>
                               </td>
                           </tr>
                           <tr>
                               <td align="Right" class="style31">
                                   Application Status:
                               </td>
                               <td align="Right" class="style7">
                                   &nbsp;</td>
                               <td>
                                          <asp:DropDownList ID="cboApplicationStatus" runat="server" Width="183px" 
                                              DataTextField="StatusDesc" DataValueField="StatusID">
                        </asp:DropDownList>
               </td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                               <td>
                                   &nbsp;</td>
                           </tr>
                        </table>
                        </div>
                        </div>
                        </div></div>                      
                       <br />
                    
               </asp:WizardStep>               
          </WizardSteps>
           <SideBarButtonStyle CssClass="btn btn-primary" />
           <NavigationButtonStyle CssClass="btn btn-primary" />
           <FinishNavigationTemplate>
               <asp:Button ID="FinishPreviousButton" runat="server" CausesValidation="False" 
                   CommandName="MovePrevious" CssClass="btn btn-primary" Text="Previous" />
               <asp:Button ID="FinishButton" runat="server" CommandName="MoveComplete" 
                   CssClass="btn btn-primary" Text="Finish" />
           </FinishNavigationTemplate>
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
    <td>
    
              &nbsp;</td>
    </tr>
    </table>
        
 </div>  
</asp:Content>

