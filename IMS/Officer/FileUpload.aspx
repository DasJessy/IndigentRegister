<%@ Page Language="VB" AutoEventWireup="false" CodeFile="FileUpload.aspx.vb" Inherits="Officer_FileUpload" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
  <table width="100%"><tr><td>
  <asp:Label ID="Span1" runat="server"></asp:Label>
    <input type="file" id="myfile" multiple="multiple" name="myfile" runat="server" size="80" class="btn btn-inverse"/>
    </td>
    <td>
    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" class="btn btn-inverse"  />
    </td>
    </tr></table>
    <asp:GridView ID="GridView1" runat="server" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
            RowStyle-BackColor="#A1DCF2" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
            AutoGenerateColumns="false" Width="100%">
            <Columns>
            <asp:TemplateField>         
         <ItemTemplate>
              <asp:Label runat="server" ID="ID" Text='<%#Eval("ID") %>' />
            </ItemTemplate> 
         </asp:TemplateField>
                <asp:BoundField DataField="Name" HeaderText="File Name"/>
                <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField ItemStyle-HorizontalAlign = "Center">
                 <ItemTemplate>
        <asp:LinkButton ID="btnDelete"  Text="Delete" runat="server" CommandName="Delete" />
      </ItemTemplate></asp:TemplateField>
            </Columns>
        </asp:GridView>
</form>
</body>
</html>
