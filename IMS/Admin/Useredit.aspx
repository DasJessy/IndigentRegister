<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/MasterAdmin.master" AutoEventWireup="false" CodeFile="Useredit.aspx.vb" Inherits="Admin_Useredit" %>

<%@ Register src="Usersedit.ascx" tagname="Usersedit" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                  
              <div class="panel panel-default">
                        <div class="panel-heading">User Edit</div>
                        <div class="panel-body">
                            <uc1:Usersedit ID="Usersedit1" runat="server" />
                        </div></div>
</asp:Content>

