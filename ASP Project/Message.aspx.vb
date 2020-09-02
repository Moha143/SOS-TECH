Imports System.Data.SqlClient
Partial Class Message
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String
        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "delete  from contact where name= '" & TextBox1.Text & "'"

        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data have been deleted", MsgBoxStyle.Information, "Delete")

        objcon.Close()
        Response.AppendHeader("refresh", "2")

       
    End Sub
End Class
