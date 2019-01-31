<%@ Page Title="" Language="VB" MasterPageFile="~/officer_mobile/MasterPageMobile.master" AutoEventWireup="false" CodeFile="Register_page_test2.aspx.vb" Inherits="mobile_Register_page_test2" ValidateRequest="false" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>
<%@ Register assembly="RJS.Web.WebControl.PopCalendar.Net.2008" namespace="RJS.Web.WebControl" tagprefix="rjs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
     <style type="text/css">
         
         .text-label {
	color: #cdcdcd;
	font-weight: bold;
}

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
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewApplicant_information" runat="server">
            <div id="tabs-1" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Applicant Information</h5>
                            </div>
                            <div class="panel-body">

                                <div class="content" style="width: 100%;">
                                    <div>
                                        <table width="100%">
                                            <tr>
                                                <td align="left" class="style9">Ref No:</td>
                                            </tr>
                                            <tr>


                                                <td class="style4">
                                                    <asp:TextBox ID="txtRefno" runat="server" Enabled="false" title="New Indigent" 
                                                        ForeColor="#4D5767" Width="100%"  > </asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Indigent Type
                                          <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator26"
                                              runat="server" ControlToValidate="cboIndigentType"
                                              Text="*" ErrorMessage="ErrorMessage" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:DropDownList ID="cboIndigentType" runat="server" Height="25px"
                                                        Width="100%" DataTextField="ITYPEDESC" DataValueField="ITYPEID">
                                                    </asp:DropDownList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Title:

                                          <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator7"
                                              runat="server" ControlToValidate="cboTitle"
                                              Text="*" ErrorMessage="ErrorMessage" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:DropDownList ID="cboTitle" runat="server" DataTextField="TitleDesc"
                                                        DataValueField="TitleID" Height="25px" Width="100%">
                                                    </asp:DropDownList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Surname:

                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server"
                                              ControlToValidate="txtSurname" ErrorMessage="*" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:TextBox ID="txtSurname" runat="server" Width="100%" Class="validate[required]" title=""></asp:TextBox>
                                                </td>


                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">First Name :

                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server"
                                              ControlToValidate="txtFirstname" ErrorMessage="*" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:TextBox ID="txtFirstname" runat="server" Width="100%" title="Enter First Name"></asp:TextBox>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="left" class="style9">
                                                    <asp:Label ID="Label44" runat="server" Text="ID Number:" Width="81px"></asp:Label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="txtIDnumber" ErrorMessage="*" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator Display="Dynamic" Font-Size="Small" ID="RegularExpressionValidator2" ControlToValidate="txtIDnumber" runat="server" ErrorMessage="ID must contain 13 integers only" ValidationExpression="^\d{13,}$"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>


                                                <td class="style4">
                                                    <asp:TextBox ID="txtIDnumber" runat="server" Width="100%" MaxLength="13" title="Enter ID no."></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Population Group:

                                          <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator6"
                                              runat="server" ControlToValidate="cboRace"
                                              Text="*" ErrorMessage="ErrorMessage" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                                    <asp:DropDownList ID="cboRace" runat="server" Height="25px" Width="100%"
                                                        AutoPostBack="True" DataTextField="RaceDesc" DataValueField="RaceID">
                                                    </asp:DropDownList>

                                                </td>


                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Marital Status:
                                          <asp:RequiredFieldValidator InitialValue="-1" ID="RequiredFieldValidator3"
                                              runat="server" ControlToValidate="cboMaritalStatus"
                                              Text="*" ErrorMessage="ErrorMessage" Display="Dynamic" Font-Size="Small"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>


                                                <td class="style4">
                                                    <asp:DropDownList ID="cboMaritalStatus" runat="server" Height="25px"
                                                        Width="100%" DataTextField="MStatusDesc" DataValueField="MID">
                                                    </asp:DropDownList>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Disability:

                                                </td>

                                            </tr>
                                            <tr>
                                                <td class="style4">
                                                    <asp:RadioButtonList ID="RDesibilityStatus" runat="server"
                                                        RepeatDirection="Horizontal" Width="164px">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem Selected="True">No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Tel (H):

                                          <asp:RegularExpressionValidator Display="Dynamic" Font-Size="Small" ID="RegularExpressionValidator1" ControlToValidate="txtHtel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                </td>

                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:TextBox ID="txtHtel" runat="server" Width="100%" MaxLength="15" title="Enter Home Tel"></asp:TextBox>
                                                </td>


                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Tel (W):
                                          <asp:RegularExpressionValidator Display="Dynamic" Font-Size="Small" ID="RegularExpressionValidator3" ControlToValidate="txtWTel" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                                </td>

                                            </tr>
                                            <tr>


                                                <td class="style4">
                                                    <asp:TextBox ID="txtWTel" runat="server" Width="100%" MaxLength="15" title="Enter Work tel"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Tel(C):

                                      
                                          <asp:RegularExpressionValidator Display="Dynamic" Font-Size="Small" ID="RegularExpressionValidator4" ControlToValidate="txtCell" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                                </td>
                                            </tr>
                                            <tr>


                                                <td class="style4">
                                                    <asp:TextBox ID="txtCell" runat="server" Width="100%" MaxLength="15" title="Enter Cell no"></asp:TextBox>
                                                </td>

                                            </tr>
                                            <tr>
                                                <td align="left" class="style9">Email:

                                      
                                          <asp:RegularExpressionValidator Display="Dynamic" Font-Size="Small" ID="RegularExpressionValidator8" runat="server" ErrorMessage="Enter valid Email Id"
                                              ControlToValidate="txtEmail" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"> </asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>

                                                <td class="style4">
                                                    <asp:TextBox ID="txtEmail" runat="server" Width="100%" title="Enter Email eg.(Example@indigent.com) "></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align:right;">
                                                    <div style="width:45%; float:right; margin-top:30px;">
                                                        <asp:Button ID="step2button" runat="server" Width="100%" Text="Next>>" CssClass="btn btn-primary" OnClick="step2button_Click" />
                                                    </div>
                                                    
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
        </asp:View>



        <asp:View ID="ViewAccount_Information" runat="server">

            <div id="tabs-2" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Account Information</h5>
                            </div>
                            <div class="panel-body">

                                <div class="content" style="width:100%;">

                                    <table style="width:100%;">
                                        <tr>
                                            <td align="left" colspan="3">&nbsp;</td>

                                        </tr>
                                        <tr>
                                            <td align="left">Account Number:
                                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" Font-Size="Small"
                                                                            ControlToValidate="txtAccountNumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="txtAccountNumber" runat="server" Display="Dynamic" Font-Size="Small" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtAccountNumber" runat="server" Width="100%" MaxLength="15" title=" Enter Account no."></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="left">Ward

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="cboWard" InitialValue="-1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>


                                            <td>
                                                <asp:DropDownList ID="cboWard" runat="server" DataTextField="WDesc"
                                                    DataValueField="WID" Height="25px" Width="100%">
                                                </asp:DropDownList>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="left">ERF Number:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="txtERF" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="txtERF" runat="server" Display="Dynamic" Font-Size="Small" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>


                                            </td>
                                        </tr>
                                        <tr>


                                            <td>
                                                <asp:TextBox ID="txtERF" runat="server" Width="100%" Wrap="False" title="Enter ERF no."></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td align="left">Street:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" Display="Dynamic" Font-Size="Small"
                                             ControlToValidate="txtstreet" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtstreet" runat="server" Width="100%" title="Enter Street."></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style47" align="left">Suburb:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="txtsuburb" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>


                                            <td class="style50">
                                                <asp:TextBox ID="txtsuburb" runat="server" Width="100%" title="Enter Suburb"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style47" align="left">City:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="txtcity" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>


                                            <td class="style50">
                                                <asp:TextBox ID="txtcity" runat="server" Width="100%" title="Enter City"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style1" align="left">Province:

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="cboWard" InitialValue="-1" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style1">
                                                <asp:DropDownList ID="cboProvince" runat="server" Height="25px" Width="100%">
                                                    <asp:ListItem Value="1">NORTHERN CAPE</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style47" align="left">Code:

                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" Display="Dynamic" Font-Size="Small"
                                            ControlToValidate="txtcode" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtcode" runat="server" Display="Dynamic" Font-Size="Small" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                            </td>
                                        </tr>
                                        <tr>

                                            <td class="style50">
                                                <asp:TextBox ID="txtcode" runat="server" Width="100%" MaxLength="4" title="Enter Code"></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                                                        <div style="width:45%; float:right; margin-top:30px;">
                                                  <asp:Button ID="btnGo_to_step3" runat="server" Width="100%" Text="Next>>" CssClass="btn btn-primary" OnClick="btnGo_to_step3_Click" />
                                            </div>
                                           
                                          
                                                </td>
                                        </tr>
                                    </table>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </asp:View>


        <asp:View ID="ViewHousehold_information" runat="server">

            <div id="tabs-3" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">

                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Household Information</h5>
                            </div>
                            <div class="panel-body">

                                <div class="content" style="width: 100%;">

                                   <table style="width: 100%;">
                                        <tr>
                                            <td class="style10">
                                                <span>ARE YOU THE OWNER OF THE HOUSE?</span></td>

                                        </tr>
                                        <tr>
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

                                        </tr>
                                        <tr>

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
                                                <span>HOW MANY ADULTS RESIDE FULL TIME IN THE HOUSE?
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server"
                                                ControlToValidate="txtAdultResidents" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"
                                                ControlToValidate="txtAdultResidents" ErrorMessage="Only Numbers allowed"
                                                ValidationExpression="\d+"></asp:RegularExpressionValidator>

                                                </span></td>

                                        </tr>
                                      
                                        <tr>

                                            <td>
                                                <asp:TextBox ID="txtAdultResidents" runat="server" Width="100%" title="Enter No Of Adults"></asp:TextBox>


                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style10">
                                                <span>HOW MANY ADULTS HAVE A REGULAR INCOME/FULL TIME OR PART TIME WORK?

                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server"
                                                ControlToValidate="txtAdultsIncome" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="txtAdultsIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                                </span></td>

                                        </tr>
                                       
                                        <tr>

                                            <td class="style4">
                                                <asp:TextBox ID="txtAdultsIncome" runat="server" Width="100%" title="Enter No Of Adult"></asp:TextBox>
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
                                <h5 class="panel-title">DETAILS OF ALL OCCUPANTS IN THE HOUSE OR ON THE PROPERTY</h5>
                            </div>
                            <div class="panel-body">
                                <table class="style5" style="width:100%;">

                                    <tr>
                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">RELATIONSHIP
                                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                 ControlToValidate="txtOccRelation" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOccRelation" runat="server" Width="100%" title="Enter Relationship"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">FIRSTNAME
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                ControlToValidate="txtOCCFirstname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOCCFirstname" runat="server" Width="100%" title="Enter First Name"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>


                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">SURNAME
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                ControlToValidate="txtOCCSurname" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOCCSurname" runat="server" Width="100%" title="Enter Surname"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">ID NUMBER
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                ControlToValidate="txtOCCIDnumber" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="txtOCCIDnumber" runat="server" ErrorMessage="ID must contain 13 integers only" ValidationExpression="^\d{13,}$"></asp:RegularExpressionValidator>
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOCCIDnumber" runat="server" MaxLength="13" Width="100%" title="Enter ID No."></asp:TextBox>

                                        </td>

                                    </tr>
                                    <tr>
                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">EMPLOYER DETAILS

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                ControlToValidate="txtOCCEmployer" ErrorMessage="*"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOCCEmployer" runat="server" Width="100%" title="Enter Employer Details"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">MONTHLY INCOME
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS"
                                                                ControlToValidate="txtOCCMonthly" ErrorMessage="*"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator32" ControlToValidate="txtOCCMonthly" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtOCCMonthly" runat="server" Width="100%"  title="Enter Monthly Income"></asp:TextBox>
                                        </td>

                                    </tr>
                                    <tr>

                                        <td bgcolor="#3366CC"
                                            style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FFFFFF">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="cmdAddOccupant" runat="server" class="btn btn-inverse"
                                                Text="ADD OCCUPANT" Width="148px" ValidationGroup="DETAILS_OF_ALL_OCCUPANTS" />
                                        </td>

                                    </tr>
                                    <tr>

                                        <td>&nbsp;</td>
                                    </tr>


                                
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">DETAILS OF ALL OCCUPANTS</h5>
                            </div>
                            <div class="panel-body" style="overflow-x:auto;">
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
                                        
                            </div>
                           
                            <div style="width:45%; float:right; margin-top:30px;">
                                <asp:Button ID="btnGo_to_step4" runat="server" Text="Next>>" Width="100%" CssClass="btn btn-primary" onclick="btnGo_to_step4_Click"/>
                            </div>
                        </div>
                    </div>

                </div>
        </asp:View>
        <asp:View ID="ViewHousehold_income" runat="server">

            <div id="tabs-4" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Household Information</h5>
                            </div>
                            <div class="panel-body">
                                <div class="content" style="width: 100%;">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>WHAT IS YOUR TOTAL INCOME PER MONTH?
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtApplicantIncomePerMonth" runat="server" Width="100%"  title="Enter Total Income "></asp:TextBox>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="txtApplicantIncomePerMonth" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator33" ControlToValidate="txtApplicantIncomePerMonth" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>WHAT IS THE TOTAL INCOME PER MONTH OF OTHER ADULTS LIVING IN THE HOUSE?</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:TextBox ID="txtAudaltsTotalIncome" runat="server" Width="100%"  title="Enter Total Income"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server"
                                                    ControlToValidate="txtAudaltsTotalIncome" ErrorMessage="*"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator31" ControlToValidate="txtAudaltsTotalIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>WHAT ARE THE SOURCES OF YOUR INCOME AND THAT OF THE OTHER ADULTS LIVING IN THE HOUSE?
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div  style="width: 50%; float:left;"><b>NO. OF RECIPIENTS </b></div>
                                                <div  style="width: 50%; float:right;"><b> Amount Per Month</b></div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>SALARY</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="txtRSalary" runat="server" ErrorMessage="Only number allowed" ValidationExpression="\d+" Display="Dynamic" Font-Size="Small"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator14" ControlToValidate="txtSalary" runat="server" ErrorMessage="Only number allowed" Font-Size="Small" ValidationExpression="\d+(\.\d+)?" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                            <tr>
                                            <td >
                                                <div  style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtRSalary" Width="100%" float="left" runat="server" onkeypress="javascript:return ValidateNumeral();" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div  style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtSalary" Width="100%" float="right" runat="server"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>


                                            <td><b>OLD AGE PENSION(GOVERNAMENT)</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator15" ControlToValidate="txtOldAgePensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" Font-Size="Small" ValidationExpression="\d+" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator16" ControlToValidate="txtOldAgePension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtOldAgePensionRecipents" width="100%" runat="server" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    
                                                <asp:TextBox ID="txtOldAgePension" runat="server" width="100%"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td><b>DISABILITY PENSION</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator30" ControlToValidate="txtDisabilityPensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator17" ControlToValidate="txtDisabilityPension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtDisabilityPensionRecipents" Width="100%" runat="server" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtDisabilityPension" Width="100%" runat="server"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>

                                            <td><b>RETIREMENT PENSION</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator18" ControlToValidate="txtRetirementPensionRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator19" ControlToValidate="txtRetirementPension" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                      <asp:TextBox ID="txtRetirementPensionRecipents" Width="100%" runat="server" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtRetirementPension" Width="100%" runat="server"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><b>INFORMAL BUSINESS INCOME</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator20" ControlToValidate="txtInformalBusinessIncomeRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator21" ControlToValidate="txtInformalBusinessIncome" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtInformalBusinessIncomeRecipents" runat="server" Width="100%" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtInformalBusinessIncome"  runat="server" Width="100%"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>
                                        </tr>
                                         <tr>

                                            <td><b>RENTAL</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator22" ControlToValidate="txtRentalRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator23" ControlToValidate="txtRental" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtRentalRecipents" runat="server" Width="100%" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtRental" runat="server" Width="100%"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                                
                                                

                                            </td>
                                        </tr>
                                       <tr>

                                            <td><b>UIF</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator24" ControlToValidate="txtUIFRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator25" ControlToValidate="txtUIF" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtUIFRecipents" runat="server" Width="100%" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtUIF" runat="server" Width="100%"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                                
                                                </td>
                                        </tr>
                                        <tr>

                                            <td><b>OTHER</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator26" ControlToValidate="txtOtherRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator27" ControlToValidate="txtOther" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtOtherRecipents" Width="100%" runat="server" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtOther" Width="100%" runat="server"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                                </td>
                                        </tr>
                                        <tr>

                                            <td><b>TOTAL</b>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator28" ControlToValidate="txtTotalRecipents" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator29" ControlToValidate="txtTotal" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+(\.\d+)?" Font-Size="Small" Display="Dynamic"></asp:RegularExpressionValidator>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td >
                                                <div style="width: 50%; float:left;">
                                                    <asp:TextBox ID="txtTotalRecipents" Width="100%" runat="server" title="NO. OF RECIPIENTS"></asp:TextBox>
                                                </div>
                                                <div style="width: 50%; float:right;">
                                                    <asp:TextBox ID="txtTotal" Width="100%" runat="server"  title="Amount Per Month"></asp:TextBox>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Button ID="calculate_total" CssClass="btn btn-primary" Width="100%" runat="server" Text="Calculate Total" />
                                            </td>
                                        </tr>
                                    </table>
                                
                            <div style="width:45%; float:right; margin-top:30px;">
                                <asp:Button ID="btnGo_to_step5" runat="server" Text="Next>>" Width="100%" CssClass="btn btn-primary" OnClick="btnGo_to_step5_Click" />
                            </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
        </asp:View>
        <asp:View ID="ViewDocuments" runat="server">

            <div id="tabs-5" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">
                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Documents</h5>
                            </div>
                            <div class="panel-body">

                                <div class="content">
                                    <p align="center" class="MsoNormal">
                                        <u><span>Documents</span></u><span><p>
                                        </p>
                                        </span>
                                        <p>
                                        </p>
                                    <table width="100%">
                                        <tr>
                                            <td class="style1" valign="top">Indigent Applicant / Occupent :</td>

                                        </tr>
                                        <tr>
                                            <td class="style4" valign="top">
                                                <asp:DropDownList ID="ddlIndigentAppOccu" runat="server" Height="25px"
                                                    Width="100%" AutoPostBack="True">
                                                    <asp:ListItem>Applicant</asp:ListItem>
                                                    <asp:ListItem>Occupent</asp:ListItem>
                                                </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" 
                                ControlToValidate="ddlIndigentAppOccu" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style1" valign="top">Applicant Name / Occupent &nbsp;Name:</td>
                                        </tr>
                                        <tr>

                                            <td class="style4" valign="top">
                                                <asp:DropDownList ID="ddlApplicantName" runat="server" Height="25px"
                                                    Width="100%" AutoPostBack="True" DataTextField="FirstName"
                                                    DataValueField="IDNumber">
                                                </asp:DropDownList>
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" 
                                ControlToValidate="ddlApplicantName" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="style1" valign="top">Document Type:</td>
                                        </tr>
                                        <tr>

                                            <td class="style4" valign="top">
                                                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="100%">
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
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" 
                                ControlToValidate="DropDownList2" InitialValue="-1" ErrorMessage="*" ValidationGroup="Document"></asp:RequiredFieldValidator>
                                            </td>

                                        </tr>
                                        <tr>
                                            <td class="style1" valign="top">Doccument Comments:</td>
                                        </tr>
                                        <tr>

                                            <td class="style4" valign="top">
                                                <asp:TextBox ID="txtDocumentComments" runat="server" TextMode="MultiLine"
                                                    Width="100%"></asp:TextBox></td>

                                        </tr>
                                        <tr>
                                            <td class="style1" valign="top">
                                                <asp:Label ID="Span1" runat="server"></asp:Label></td>
                                        </tr>
                                        <tr>

                                            <td class="style4" valign="top">

                                              <!--  <input id="myfile" runat="server" class="btn btn-inverse" multiple="multiple"
                                                    size="80" type="file" width="100%">-->
                                                <asp:FileUpload ID="FileUpload1" runat="server" class="btn btn-inverse" multiple="multiple"
                                                    size="80" type="file" width="100%" />
                                            </td>
                                            

                                        </tr>
                                        <tr>
                                            <td>

                                                <asp:Button ID="cmdUploadDocuments" runat="server" class="btn btn-inverse"
                                                    Text="Upload" Width="100%"  ValidationGroup="Document" />

                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="margin-top: 10px;">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="padding: 10px;">
                                <h5 class="panel-title">Documents Detail</h5>
                            </div>
                            <div class="panel-body" style="width: 100%; overflow-x: auto;">

                                <asp:GridView ID="GridView2" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                                    RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                                    AutoGenerateColumns="false" Width="100%">
                                    <AlternatingRowStyle BackColor="White" ForeColor="Black"></AlternatingRowStyle>
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:Label runat="server" ID="ID" Text='<%#Eval("ID") %>' />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="IndigentAPPMemberType" HeaderText="Memeber Type" />
                                        <asp:BoundField DataField="FullName" HeaderText="Full Name" />
                                        <asp:BoundField DataField="IDnumber" HeaderText="IDnumber" />
                                        <asp:BoundField DataField="Name" HeaderText="File Name" />
                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                                                    CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                        <asp:TemplateField ItemStyle-HorizontalAlign="Center">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnDelete" Text="Delete" runat="server" CommandName="Delete" />
                                            </ItemTemplate>

                                            <ItemStyle HorizontalAlign="Center"></ItemStyle>
                                        </asp:TemplateField>
                                    </Columns>

                                    <HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

                                    <RowStyle BackColor="#A1DCF2"></RowStyle>
                                </asp:GridView>

                            </div>
                        </div>
                        
                            <div style="width:45%; float:right; margin-top:30px;">
                                <asp:Button ID="btnGo_to_step6" runat="server" Text="Next>>" CssClass="btn btn-primary" Width="100%" />
                            </div>
                    </div>
                </div>
        </asp:View>
        <asp:View ID="ViewVerification" runat="server">

            <div id="tabs-6" class="row" style="margin-left: -15px; margin-right: -15px; margin-top: 0px">

                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">Documents Verification</h3>
                            </div>
                            <div class="panel-body">
                                <div style="width: 100%">
                                    <p class="MsoNormal">
                                        <span>An applicant wishing to apply for indigent support under the category 
                                       “income indigent” for a house hold must complete an application form as required 
                                       by the municipality which shall be accompanied by at least the following 
                                       Documents:</span>
                                    </p>
                                </div>
                                <hr>
                                <p class="MsoNormal">
                                    <table style="width: 100%;">
                                        <tr>
                                            <td>
                                                <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                                

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <div style="width: 100%; float: left;">
                                                    <span>An affidavit declaring on oath employment status and/or income in respect 
                                   of all members of the household over 18 years of age and their full names and 
                                   identity numbers</span>
                                                </div>
                                                <div style="width: 100%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                                <div style="width: 50%; float:left;">
                                                    <asp:RadioButtonList runat="server" RepeatDirection="Horizontal" Width="100%"
                                                        ID="REmployementStatusAffidavit">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem>No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>
                                        <hr style="width:100%;">        
                                            </td>

                                        </tr>
                                        
                                        <tr>
                                            <td>

                                                <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                                <div style="width: 100%; float: left;">
                                                    <span>Documentary proof of income in respect of all such persons (e.g. letter 
                        from employer, salary advice, pension slip, aﬃdavit of income if self-employed 
                        or unemployed, letter from SARS);</span>
                                                </div>
                                                        <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                                <div style="width: 50%; ">
                                                    <asp:RadioButtonList ID="RProofOfIncomeDocuments" runat="server"
                                                        RepeatDirection="Horizontal" Width="100%">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem>No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                                <hr style="width:100%;">
                                            </td>

                                        </tr>

                                        <tr>
                                            <td>
                                                <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                                <div style="width: 100%; float: left;">
                                                    <span>The most recent municipal account in the name of the applicant in respect 
                        of the property in question</span>
                                                </div>
                                                        <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                                <div style="width: 50%; ">
                                                    <asp:RadioButtonList ID="RMunicipalAccountNameofTheApplicant" runat="server"
                                                        RepeatDirection="Horizontal" Width="100%">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem>No</asp:ListItem>
                                                    </asp:RadioButtonList>

                                                </div>

                                                <hr style="width:100%;">
                                            </td>

                                        </tr>

                                        <tr>
                                            <td>
                                                <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                                <div style="width: 100%; float: left;">
                                                    <span>A copy of the applicant's identity document and the identity documents or 
                        birth certiﬁcates of all occupants in the property</span>
                                                </div>
                                                        <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                                <div style="width: 50%; ">
                                                    <asp:RadioButtonList ID="RApplicantAndOccupentIDDocuments" runat="server"
                                                        RepeatDirection="Horizontal" Width="100%">
                                                        <asp:ListItem>Yes</asp:ListItem>
                                                        <asp:ListItem>No</asp:ListItem>
                                                    </asp:RadioButtonList>
                                                </div>

                                                <hr style="width:100%;">
                                            </td>

                                        </tr>
                                    </table>

                                </p>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">PRE-REGISTRATION SITE VERIFICATION</h3>
                            </div>
                            <div class="panel-body">
                                <table style="width: 100%;">

                                    <tr>
                                        <td>

                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>SELECTED FOR PRE-REGISTRATION SITE VERIFICATION</span>
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%;">
                                                <asp:RadioButtonList ID="RPRSiteVerification" runat="server"
                                                    RepeatDirection="Horizontal" Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>

                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                                   
                                            <div style="width: 100%;">
                                                <asp:TextBox ID="txtPREREGISTRATIONDate" runat="server" Width="100%"
                                                    placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="DateRecevied"
                                                        runat="server" Control="txtPREREGISTRATIONDate" Format="yyyy mm dd" />
                                            </div>
                                            <hr style="width:100%;">
                                            
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>VERIFIED</span>
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%;">
                                                <asp:RadioButtonList ID="RPRVerified" runat="server"
                                                    RepeatDirection="Horizontal" Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>

                                            </div>
                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>OFFICIAL</span>
                                            </div>
                                                  
                                            <div style="width: 100%;">
                                                <asp:DropDownList ID="cboPROfficer" runat="server" Height="25px" Width="100%"
                                                    DataTextField="Name" DataValueField="UserID">
                                                </asp:DropDownList>
                                            </div>
                                            
                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>

                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                                   
                                            <div style="width: 100%; ">
                                                <asp:TextBox ID="txtPREREGISTRATIONofficialdate" runat="server" Width="100%" placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar1" runat="server" Control="txtPREREGISTRATIONofficialdate" Format="yyyy mm dd" />
                                            </div>

                                           <hr style="width:100%;"> 
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>


                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">POST-REGISTRATION SITE VERIFICATION</h3>
                            </div>
                            <div class="panel-body">
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>SELECTED FOR POST-REGISTRATION SITE VERIFICATION </span>
                                            </div>
                                                    <div style="width: 100%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%; float:left;">
                                                <asp:RadioButtonList ID="RPOSiteVerification" runat="server"
                                                    RepeatDirection="Horizontal" Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                                                                                <div style="width: 100%;">
                                                <asp:TextBox ID="txtRPOSTREGISTRATIONDate" runat="server" Width="100%"
                                                    placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar2"
                                                        runat="server" Control="txtRPOSTREGISTRATIONDate" Format="yyyy mm dd" />
                                            </div>
                                            <hr style="width:100%;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>VERIFIED</span>
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%;">
                                                <asp:RadioButtonList ID="RPOVerified" runat="server"
                                                    RepeatDirection="Horizontal" Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <hr style="width:100%;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>OFFICIAL</span>
                                            </div>
                                                    
                                            <div style="width: 100%; ">
                                                <asp:DropDownList ID="cboRPOOfficer" runat="server" Height="25px" Width="100%"
                                                    DataTextField="Name" DataValueField="UserID">
                                                </asp:DropDownList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                                    
                                            <div style="width: 100%; ">
                                                <asp:TextBox ID="txtRPOofficialDate" runat="server" Width="100%"
                                                    placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar3"
                                                        runat="server" Control="txtRPOofficialDate" Format="yyyy mm dd" />
                                            </div>


                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">NOTIFICATION LETTER</h3>
                            </div>
                            <div class="panel-body">
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <p align="center" class="MsoNormal"
                                                    style="font-size: medium; text-align: left;">
                                                    <span>NOTIFICATION LETTER SENT OUT
                                                    </span>
                                                </p>
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%; ">
                                                <asp:RadioButtonList ID="RNotification" runat="server"
                                                    RepeatDirection="Horizontal" Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>


                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                <span>DEBT WRITTEN OFF</span>
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%; ">
                                                <asp:RadioButtonList ID="RDEBTWRITTENOFF" runat="server" RepeatDirection="Horizontal"
                                                    Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>

                                            <div style="width: 100%; ">
                                                <asp:TextBox ID="txtNotificationSentoutDate" runat="server"
                                                    placeholder="YYYY-MM-DD" Width="100%"></asp:TextBox>
                                                <rjs:PopCalendar ID="PopCalendar4" runat="server"
                                                    Control="txtNotificationSentoutDate" Format="yyyy mm dd" />
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">OFFICIAL’S COMMENTS/REASONS</h3>
                            </div>
                            <div class="panel-body">
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                REGISTERED
                                            </div>
                                                    <div style="width: 50%; float:left;">
                                                    <b>Received:</b>
                                                </div>
                                            <div style="width: 50%; ">
                                                <asp:RadioButtonList ID="RComments" runat="server" RepeatDirection="Horizontal"
                                                    Width="100%">
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </div>
                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                    <b>Description</b>
                                                </div>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                            <div style="width: 100%; ">
                                                <asp:TextBox ID="txtRCommentsDate" runat="server" placeholder="YYYY-MM-DD"
                                                    Width="100%"></asp:TextBox>
                                                <rjs:PopCalendar ID="PopCalendar6" runat="server" Control="txtRCommentsDate"
                                                    Format="yyyy mm dd" />
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>

                                    <tr>
                                        <td>
                                            <asp:TextBox ID="txtCommentsNotes" runat="server" Height="222px" TextMode="MultiLine"
                                                Width="100%"></asp:TextBox>
                                            <hr style="width:100%;">
                                        </td>
                                    </tr>

                                </table>
                            </div>
                        </div>
                    </div>



                    <div class="col-md-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3 class="panel-title">QUALITY CONTROL</h3>
                            </div>
                            <div class="panel-body">
                                <table style="width: 100%;">
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                OFFICIAL
                                            </div>
                                            <div style="width:100%;" >

                                                <asp:DropDownList ID="cboQualityPROfficer" runat="server" Height="25px"
                                                    Width="100%" DataTextField="Name" DataValueField="UserID">
                                                </asp:DropDownList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float: left;">
                                                DATE
                                            </div>
                                            <div style="width: 100%; ">
                                                <asp:TextBox ID="txtQualityOfficialDate" runat="server" Width="100%"
                                                    placeholder="YYYY-MM-DD"></asp:TextBox><rjs:PopCalendar ID="PopCalendar7"
                                                        runat="server" Control="txtQualityOfficialDate" Format="yyyy mm dd" />
                                            </div>

                                            <hr style="width:100%;">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div style="width: 100%; float:left">
                                                Application Status:
                                            </div>
                                            <div style="width: 100%; ">
                                                <asp:DropDownList ID="cboApplicationStatus" runat="server" Width="100%"
                                                    DataTextField="StatusDesc" DataValueField="StatusID">
                                                </asp:DropDownList>
                                            </div>

                                            <hr style="width:100%;">
                                        </td>

                                    </tr>
                                </table>
                              
                            <div style="width:45%; float:right; margin-top:30px;">
                                <asp:Button ID="btnFinish" runat="server" Text="Finish" Width="100%" CssClass="btn btn-primary" OnClick="btnFinish_Click" />
                            </div>
                            </div>
                        </div>
                    </div>

                </div>
        </asp:View>


    </asp:MultiView>
</asp:Content>

