<%@ Page Title="" Language="VB" MasterPageFile="~/Officer/MasterPageOfficer.master" AutoEventWireup="false" CodeFile="Main.aspx.vb" Inherits="Officer_Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="../js/jquery-1.10.2.min.js"></script>
   <!--  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">-->
 <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="wrapper" style="overflow-x:auto;">
            <div class="row">
                <div class="col-md-7">
                    <!--statistics start-->
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div  class="panel blue">
                                <div class="symbol">
                                    <i class="fa fa-gavel"></i>
                                </div>
                                <div class="state-value">                                    
                                    <asp:LinkButton ID="TotalIndigents" runat="server" class="value">                                                                          
                                    </asp:LinkButton>
                                    <!-- Total -->
                                    <div class="title">Total Inidigents <br />Applied</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div  class="panel green">
                                <div class="symbol">
                                    <i class="fa fa-tags"></i>
                                </div>
                                <div class="state-value">
                                     <asp:LinkButton ID="ApprovedIndigents" runat="server" class="value">                                                                          
                                    </asp:LinkButton>
                                    <div class="title">Approved <br />Indegents</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row state-overview">
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel purple">
                                <div class="symbol">
                                    <i class="fa fa-money"></i>
                                </div>
                                <div class="state-value">
                                     <asp:LinkButton ID="PendingIndigents" runat="server" class="value">                                                                          
                                    </asp:LinkButton>
                                    <div class="title">Pending <br />Indigents</div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 col-sm-6">
                            <div class="panel red">
                                <div class="symbol">
                                    <i class="fa fa-eye"></i>
                                </div>
                                <div class="state-value">
                                     <asp:LinkButton ID="DeclinedIndigents" runat="server" class="value">                                                                          
                                    </asp:LinkButton>
                                    <div class="title"> Declined <br />Indigents</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--statistics end-->
                </div>
                <div class="col-md-5" >
                    <!--more statistics box start-->
                    <div class="panel deep-purple-box" style="width:auto; min-width:313px;">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12" style="height:253.2px;">
                                    <div id="graph-donut" class="revenue-graph"style=" width:100%; height:70%; -webkit-align-content:center; align-content:center;"></div>
                                     <div style=" width:100%; height:20%;">
                                         <table  style="font-size:8px;">
                                             <tr>
                                                 <td >
                                                     <ul class="bar-legend" >
                                                    <li> <span class="blue" ></span> Applied Indigents</li>
                                                     </ul>
                                                 </td>
                                                 <td >
                                                     <ul class="bar-legend ">
                                                     <li><span class="green"></span> Approved Indigents</li>
                                                     </ul>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td >
                                                     <ul class="bar-legend ">
                                                     <li><span class="purple"></span> Pending Indigents</li>
                                                     </ul>
                                                 </td>
                                                 <td >
                                                     <ul class="bar-legend ">
                                                    <li> <span class="red"></span> Declined Indigents</li>
                                                     </ul>
                                                 </td>

                                             </tr>
                                                                                              
                                         </table>
                                </div>
                                </div>
                                
                              <!--  <div class="col-md-5 col-sm-5 col-xs-5">
                                    <ul class="bar-legend" >
                                        <li ><span class="blue"></span> Applied Indigents</li>
                                        <li ><span class="green"></span> Approved Indigents</li>
                                        <li ><span class="purple"></span> Pending Indigents</li>
                                        <li ><span class="red"></span> Declined Indigents</li>
                                    </ul>
                                </div>-->
                            </div>
                        </div>
                    </div>
                    <!--more statistics box end-->
                </div>
            </div>

        </div>

   <div id="ghrap_to_display" runat="server">
       

    </div>
     
</asp:Content>

