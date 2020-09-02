Imports System.Data.SqlClient

Partial Class EmployeeRegistration
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()

        sql = " insert into emp_registration values('" & TxtID.Text & "','" & TxtName.Text & "', '" & TxtNumber.Text & "', '" & TxtEmail.Text & "','" & TxtGender.Text & "', '" & TxtQualification.Text & "', '" & TxtSalary.Text & "')"
        objcmd = New SqlCommand(sql, objcon)

        If TxtID.Text = "" Or TxtName.Text = "" Or TxtNumber.Text = "" Or TxtEmail.Text = "" Or TxtGender.Text = "" Or TxtQualification.Text = "" Or TxtSalary.Text = "" Then

            MsgBox("please fil all feilds ")
            Exit Sub
        Else
            objcmd.ExecuteNonQuery()
            MsgBox("data has been saved")
            objcon.Close()
            Response.AppendHeader("refresh", "2")
        End If

    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String
        Dim dr As SqlDataReader


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()

        sql = "select * from emp_registration where emp_id= '" & serchbox.Text & "'"


        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader


        If dr.Read Then
            TxtID.Text = dr.GetValue(0)
            TxtName.Text = dr.GetValue(1)
            TxtNumber.Text = dr.GetValue(2)
            TxtEmail.Text = dr.GetValue(3)
            TxtGender.Text = dr.GetValue(4)
            TxtQualification.Text = dr.GetValue(5)
            TxtSalary.Text = dr.GetValue(6)




        Else
            MsgBox("data not found", MsgBoxStyle.Information, "error")
            objcon.Close()
            Response.AppendHeader("refresh", "2")

        End If


    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()

        sql = "delete from emp_registration where emp_id= '" & serchbox.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data have been deleted", MsgBoxStyle.Information, "Delete")

        objcon.Close()
        Response.AppendHeader("refresh", "2")

    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "update emp_registration set emp_id = '" & TxtID.Text & "' ,  emp_name = '" & TxtName.Text & "', emp_tell = '" & TxtNumber.Text & "', emp_Email = '" & TxtEmail.Text & "',  gender = '" & TxtGender.Text & "',  qualification = '" & TxtQualification.Text & "' ,  salary = '" & TxtSalary.Text & "'where emp_id = '" & serchbox.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data has been updated", MsgBoxStyle.Information, "Success")
        objcon.Close()
        Response.AppendHeader("refresh", "2")


    End Sub
End Class
