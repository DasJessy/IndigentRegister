<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Indigentsreport.aspx.vb" Inherits="Indigentsreport" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <style type="text/css">
  .GridPager a, .GridPager span
    {
        display: block;
        height: 15px;
        width: 15px;
        font-weight: bold;
        text-align: center;
        text-decoration: none;
    }
    .GridPager a
    {
        background-color: #f5f5f5;
        color: #969696;
        border: 1px solid #969696;
    }
    .GridPager span
    {
        background-color: #A1DCF2;
        color: #000;
        border: 1px solid #3AC0F2;
    }
    
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="overflow:auto;">
    
 <asp:Button ID="btnExport" runat="server" Text="Export To Excel" OnClick = "ExportToExcel" />
 <br />
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
        RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
        runat="server" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging">
<RowStyle BackColor="#A1DCF2"></RowStyle>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

<AlternatingRowStyle BackColor="White" ForeColor="#000000"></AlternatingRowStyle>
             <PagerStyle HorizontalAlign="left" CssClass="GridPager" />
            
    </asp:GridView>
       </div>
    </form>
</body>
</html>
