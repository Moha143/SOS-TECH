Imports System.Data.SqlClient
Partial Class contact
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String
        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = " insert into contact values ('" & textName.Text & "', '" & txtEmail.Text & "', '" & txtMessage.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        If textName.Text = "" Or txtEmail.Text = "" Or txtMessage.Text = "" Then
            MsgBox("please fil all feilds ")
            Exit Sub
        Else
            objcmd.ExecuteNonQuery()
            MsgBox("data has been saved")
            objcon.Close()

        End If

    End Sub
End Class
