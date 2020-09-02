Imports System.Data.SqlClient

Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()

        sql = " insert into user_info  values('" & UserID.Text & "','" & textName.Text & "', '" & textEmail.Text & "', '" & textNumber.Text & "','" & textUsername.Text & "', '" & textPassword.Text & "')"

        objcmd = New SqlCommand(sql, objcon)

        If UserID.Text = "" Or textUsername.Text = "" Or textPassword.Text = "" Or textName.Text = "" Or textNumber.Text = "" Or textEmail.Text = "" Then

            MsgBox("please fil all feilds ")
            Exit Sub
        Else
            objcmd.ExecuteNonQuery()
            objcon.Close()

            MsgBox("data has been saved", MsgBoxStyle.Information, "Success")

            Response.AppendHeader("refresh", "2")



        End If

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "update user_info set UserID = '" & UserID.Text & "' ,  Name = '" & textName.Text & "', Email = '" & textEmail.Text & "', Number = '" & textNumber.Text & "', Username = '" & textUsername.Text & "' , passwords = '" & textPassword.Text & "'where UserID = '" & searchbox.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data has been updated", MsgBoxStyle.Information, "Success")
        objcon.Close()
        Response.AppendHeader("refresh", "2")

    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String
        Dim dr As SqlDataReader


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "select * from user_info where UserID= '" & searchbox.Text & "'"

        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader


        If dr.Read Then
            UserID.Text = dr.GetValue(0)
            textName.Text = dr.GetValue(1)
            textEmail.Text = dr.GetValue(2)
            textNumber.Text = dr.GetValue(3)
            textUsername.Text = dr.GetValue(4)
            textPassword.Text = dr.GetValue(5)


        Else
            MsgBox("data not found", MsgBoxStyle.Information, "error")
            objcon.Close()


        End If

    End Sub
End Class
