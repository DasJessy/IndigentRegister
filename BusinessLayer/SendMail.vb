Imports Microsoft.VisualBasic
Imports System.net.Mail
Imports System.Web
Public Class Sendmail
    Public SMTPIP As String
    Public Function GetSMTPIP() As String
        SMTPIP = "10.130.63.12"
        Return SMTPIP
    End Function
    'Public Sub SendEmailMessage(ByVal strFrom As String, ByVal strTo() As String, ByVal strSubject As String, ByVal strMessage As String, ByVal fileList As Attachment)
    '    'This procedure takes string array parameters for multiple recipients and files
    '    GetSMTPIP()
    '    Try
    '        For Each item As String In strTo
    '            'For each to address create a mail message
    '            Dim MailMsg As New MailMessage(New MailAddress(strFrom.Trim()), New MailAddress(item))
    '            'MailMsg.BodyEncoding = Encoding.Default
    '            MailMsg.Subject = strSubject.Trim()
    '            MailMsg.Body = strMessage.Trim() & vbCrLf
    '            MailMsg.Priority = MailPriority.High
    '            MailMsg.IsBodyHtml = True

    '            'attach each file attachment
    '            'For Each strfile As String In fileList
    '            'If Not strfile = "" Then
    '            Dim MsgAttach As New Attachment(c)
    '            MailMsg.Attachments.Add(MsgAttach)
    '            'End If
    '            'Next

    '            'Smtpclient to send the mail message
    '            Dim SmtpMail As New SmtpClient
    '            SmtpMail.Host = SMTPIP
    '            SmtpMail.Send(MailMsg)
    '        Next
    '        'Message Successful
    '    Catch ex As Exception
    '        'Message Error
    '    End Try
    'End Sub

    Public Sub SendEmail(ByVal strFrom As String, ByVal strTo As String, ByVal strSubject As String, ByVal strMessage As String)
        'This procedure overrides the first procedure and accepts a single
        'string for the recipient and file attachement 
        GetSMTPIP()
        Try
            Dim MailMsg As New MailMessage(New MailAddress(strFrom.Trim()), New MailAddress(strTo))

            MailMsg.Subject = strSubject.Trim()

            Dim Htmlbody As String
            Htmlbody = strMessage.Trim() & vbCrLf
            'Htmlbody = Htmlbody & "<A HREF=" & strMessage & ">Register Learnership Programe</A>" & vbCrLf

            MailMsg.Body = Htmlbody.Trim() & vbCrLf
            MailMsg.Priority = MailPriority.High
            MailMsg.IsBodyHtml = True

            'Smtpclient to send the mail message
            Dim SmtpMail As New SmtpClient
            SmtpMail.Host = SMTPIP
            SmtpMail.Send(MailMsg)
        Catch ex As Exception
            'Message Error
        End Try
    End Sub
    Public Sub SendAcknowledgedEmail(ByVal strfrom As String, ByVal strTo As String, ByVal subject As String, ByVal body As String, ByVal AttechementFilePath As String, ByVal sName As String, Optional ByVal bcc As String = "", Optional ByVal cc As String = "", Optional ByVal sDepartment As String = "")
        Try
            Dim mMailMessage As New MailMessage()
            'Dim bcc As String = ""
            'Dim cc As String = ""
            Dim objCnf As New System.Configuration.AppSettingsReader
            mMailMessage.From = New MailAddress(strfrom)
            mMailMessage.To.Add(New MailAddress(strTo))
            'mMailMessage.To.Add(New MailAddress("dev@devinfosys.co.za"))

            If Not bcc Is Nothing And bcc <> String.Empty Then
                mMailMessage.Bcc.Add(New MailAddress(bcc))
            End If
            If Not cc Is Nothing And cc <> String.Empty Then
                mMailMessage.CC.Add(New MailAddress(cc))
            End If
        
            Dim Htmlbody As String


            Htmlbody = "<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN"">" & vbCrLf
            Htmlbody = Htmlbody & "<html>" & vbCrLf
            Htmlbody = Htmlbody & "<head>" & vbCrLf
            Htmlbody = Htmlbody & "<title></title>" & vbCrLf
            Htmlbody = Htmlbody & "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"">" & vbCrLf
            Htmlbody = Htmlbody & "</head>" & vbCrLf
            Htmlbody = Htmlbody & "<body>" & vbCrLf
            Htmlbody = Htmlbody & "<div > " & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:black'>Dear " & sName & ", " & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:black'><o:p>" & body & " " & vbCrLf
            Htmlbody = Htmlbody & "  </o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & " <p><font size=2.8 face=Calibri><span style='color:black'>Trusting the above " & vbCrLf
            Htmlbody = Htmlbody & "   is in order, should you have any queries please feel free to contact me.<o:p></o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & " <p><font size=2.8 face=Calibri><span style='color:black'>Thanking You<o:p></o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><b><span lang=EN-ZA style='color:black'>ComplaintSupport " & vbCrLf
            Htmlbody = Htmlbody & "    l</span></b><span lang=EN-ZA style='color:red'> </span><span lang=EN-ZA style='color:black'>Authorised " & vbCrLf
            Htmlbody = Htmlbody & "    Representative</span><b><span lang=EN-ZA style='color:black'> " & vbCrLf
            Htmlbody = Htmlbody & "    l</span></b><span lang=EN-ZA style='color:black'> <b>Complaint Support " & vbCrLf
            Htmlbody = Htmlbody & "    <o:p><br>" & vbCrLf
            Htmlbody = Htmlbody & "    </o:p></b>Tel +27 12 352 1000 <b>l</b> Fax 012 325 8382 <b>l" & vbCrLf
            Htmlbody = Htmlbody & "   </b></span><b><u><span lang=EN-ZA style='color:blue'>Complaintsupport@opsc.gov.za</span></u><span lang=EN-ZA style='color:black'><o:p></o:p></span></b></font></p>"
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span lang=EN-ZA style='color:black'>Public service Commission"
            Htmlbody = Htmlbody & "    South Africa <b>l</b> Private Bag X121, Commission(House),cnr. Hamilton & Ziervogel Streets,Pretoria - 0083"
            Htmlbody = Htmlbody & "    <br>"
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:#1F497D'><img width=100% height=180 id=""Picture_x0020_1"" src=""http://www.psc.gov.za/site/design/images/top.jpg"" alt=""cid:29095012-1E4C-4B45-B014-DB9808E5E7F5@home.gateway""></span><span style='color:black'><o:p></o:p><o:p>&nbsp;</o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:black'>This e-mail message " & vbCrLf
            Htmlbody = Htmlbody & "    and any attachments thereto contains privileged and confidential information " & vbCrLf
            Htmlbody = Htmlbody & "   intended for a specific addressee and purpose only. If you are not the intended " & vbCrLf
            Htmlbody = Htmlbody & "   recipient or have received the message in error you are hereby notified that " & vbCrLf
            Htmlbody = Htmlbody & "   any dissemination, distribution or copying of this e-mail is strictly prohibited. " & vbCrLf
            Htmlbody = Htmlbody & "   The opinions or views expressed or implied in the message (and its attachments) " & vbCrLf
            Htmlbody = Htmlbody & "   are those of the sender and do not constitute the opinion or view of the company " & vbCrLf
            Htmlbody = Htmlbody & "   or of its management unless it is clearly stated to be the case. This e-mail " & vbCrLf
            Htmlbody = Htmlbody & "  message has been swept for the presence of computer viruses and accepts.&nbsp;&nbsp;&nbsp; " & vbCrLf
            Htmlbody = Htmlbody & "  <o:p></o:p></span><span style='font-size:10.0pt;color:black'><o:p></o:p></span></font></p> " & vbCrLf
            Htmlbody = Htmlbody & "</div> " & vbCrLf
            Htmlbody = Htmlbody & "</body>" & vbCrLf
            Htmlbody = Htmlbody & "</html>" & vbCrLf

            mMailMessage.Subject = subject
            mMailMessage.Body = Htmlbody

            'att = New Attachment(AttechementFilePath)
            'mMailMessage.Attachments.Add(att)

            'mMailMessage.IsBodyHtml = True
            'mMailMessage.Priority = MailPriority.High

            'Me.att = New Attachment(AttechementFilePath)
            'mMailMessage.Attachments.Add(Me.att)

            mMailMessage.IsBodyHtml = True
            mMailMessage.Priority = MailPriority.High

            Dim mSmtpClient As New SmtpClient
            mSmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network
            'mSmtpClient.Host = "mail.devinfosys.co.za"
            'mSmtpClient.Credentials = New Net.NetworkCredential("dev@devinfosys.co.za", "")

            mSmtpClient.Host = "10.130.63.12"
            mSmtpClient.Credentials = New Net.NetworkCredential("complaints@opsc.gov.za", "@scone169")
            mSmtpClient.Send(mMailMessage)
            mSmtpClient.Timeout = 300000
            mMailMessage.Dispose()

        Catch ex As Exception
            'Message Error
        End Try
    End Sub
    Public Sub Sendmail(ByVal strfrom As String, ByVal strTo As String, ByVal subject As String, ByVal body As String, ByVal sName As String)
        Try
            Dim mMailMessage As New MailMessage()
            'Dim bcc As String = ""
            'Dim cc As String = ""
            Dim objCnf As New System.Configuration.AppSettingsReader
            mMailMessage.From = New MailAddress(strfrom)
            mMailMessage.To.Add(New MailAddress(strTo))
            'mMailMessage.To.Add(New MailAddress("dev@devinfosys.co.za"))

            Dim Htmlbody As String


            Htmlbody = "<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN"">" & vbCrLf
            Htmlbody = Htmlbody & "<html>" & vbCrLf
            Htmlbody = Htmlbody & "<head>" & vbCrLf
            Htmlbody = Htmlbody & "<title>Untitled Document</title>" & vbCrLf
            Htmlbody = Htmlbody & "<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"">" & vbCrLf
            Htmlbody = Htmlbody & "</head>" & vbCrLf
            Htmlbody = Htmlbody & "<body>" & vbCrLf
            Htmlbody = Htmlbody & "<div >" & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:black'><o:p>" & body & " " & vbCrLf
            Htmlbody = Htmlbody & "  </o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & " <p><font size=2.8 face=Calibri><span style='color:black'>Trusting the above " & vbCrLf
            Htmlbody = Htmlbody & "   is in order, should you have any queries please feel free to contact me.<o:p></o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & " <p><font size=2.8 face=Calibri><span style='color:black'>Thanking You<o:p></o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><b><span lang=EN-ZA style='color:black'>Indigent Support " & vbCrLf
            Htmlbody = Htmlbody & "    l</span></b><span lang=EN-ZA style='color:red'> </span><span lang=EN-ZA style='color:black'>Authorised " & vbCrLf
            Htmlbody = Htmlbody & "    Representative</span><b><span lang=EN-ZA style='color:black'> " & vbCrLf
            Htmlbody = Htmlbody & "    l</span></b><span lang=EN-ZA style='color:black'> <b>Indigent Support " & vbCrLf
            Htmlbody = Htmlbody & "    <o:p><br>" & vbCrLf
            'Htmlbody = Htmlbody & "    </o:p></b>Tel +27 12 352 1000 <b>l</b> Fax 012 325 8382 <b>l" & vbCrLf
            Htmlbody = Htmlbody & "   </b></span><b><u><span lang=EN-ZA style='color:blue'>indigentsupport@solpaatje.com</span></u><span lang=EN-ZA style='color:black'><o:p></o:p></span></b></font></p>"
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span lang=EN-ZA style='color:black'>Solplaatje"
            Htmlbody = Htmlbody & "    South Africa <b>l</b> Private Bag X121, Commission(House),cnr. Hamilton & Ziervogel Streets,Pretoria - 0083"
            Htmlbody = Htmlbody & "    <br>"
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:#1F497D'><img width=100% height=180 id=""Picture_x0020_1"" src=""http://www.psc.gov.za/site/design/images/top.jpg"" alt=""cid:29095012-1E4C-4B45-B014-DB9808E5E7F5@home.gateway""></span><span style='color:black'><o:p></o:p><o:p>&nbsp;</o:p></span></font></p>" & vbCrLf
            Htmlbody = Htmlbody & "  <p><font size=2.8 face=Calibri><span style='color:black'>This e-mail message " & vbCrLf
            Htmlbody = Htmlbody & "    and any attachments thereto contains privileged and confidential information " & vbCrLf
            Htmlbody = Htmlbody & "   intended for a specific addressee and purpose only. If you are not the intended " & vbCrLf
            Htmlbody = Htmlbody & "   recipient or have received the message in error you are hereby notified that " & vbCrLf
            Htmlbody = Htmlbody & "   any dissemination, distribution or copying of this e-mail is strictly prohibited. " & vbCrLf
            Htmlbody = Htmlbody & "   The opinions or views expressed or implied in the message (and its attachments) " & vbCrLf
            Htmlbody = Htmlbody & "   are those of the sender and do not constitute the opinion or view of the company " & vbCrLf
            Htmlbody = Htmlbody & "   or of its management unless it is clearly stated to be the case. This e-mail " & vbCrLf
            Htmlbody = Htmlbody & "  message has been swept for the presence of computer viruses and accepts.&nbsp;&nbsp;&nbsp; " & vbCrLf
            Htmlbody = Htmlbody & "  <o:p></o:p></span><span style='font-size:10.0pt;color:black'><o:p></o:p></span></font></p> " & vbCrLf
            Htmlbody = Htmlbody & "</div> " & vbCrLf
            Htmlbody = Htmlbody & "</body>" & vbCrLf
            Htmlbody = Htmlbody & "</html>" & vbCrLf

            mMailMessage.Subject = subject
            mMailMessage.Body = body

            mMailMessage.IsBodyHtml = True
            mMailMessage.Priority = MailPriority.High

            Dim mSmtpClient As New SmtpClient
            mSmtpClient.DeliveryMethod = SmtpDeliveryMethod.Network
            mSmtpClient.Host = "10.130.63.12"
            mSmtpClient.Credentials = New Net.NetworkCredential("complaints@opsc.gov.za", "@scone169")
            mSmtpClient.Send(mMailMessage)
            mSmtpClient.Timeout = 300000
            mMailMessage.Dispose()

        Catch ex As Exception
            'Message Error
        End Try
    End Sub
End Class
