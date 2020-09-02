Imports System.Data.SqlClient

Partial Class customerRegistration
    Inherits System.Web.UI.Page

    Protected Sub SqlDataSource1_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles SqlDataSource1.Selecting

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()


        sql = " insert into customer values('" & TextBox1.Text & "','" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & TextBox4.Text & "','" & TextBox5.Text & "')"
        objcmd = New SqlCommand(sql, objcon)
        If TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Then
            MsgBox("please fil all feilds ")
            Exit Sub
        Else
            objcmd.ExecuteNonQuery()
            MsgBox("data has been saved", MsgBoxStyle.Information, "Success")
            objcon.Close()
            Response.AppendHeader("refresh", "2")
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String
        Dim dr As SqlDataReader


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "select * from customer where cust_id= '" & TextBox6.Text & "'"

        objcmd = New SqlCommand(sql, objcon)
        dr = objcmd.ExecuteReader


        If dr.Read Then
            TextBox1.Text = dr.GetValue(0)
            TextBox2.Text = dr.GetValue(1)
            TextBox3.Text = dr.GetValue(2)
            TextBox4.Text = dr.GetValue(3)
            TextBox5.Text = dr.GetValue(4)


        Else
            MsgBox("data not found", MsgBoxStyle.Information, "error")
            objcon.Close()


        End If



    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        sql = "update customer set cust_name = '" & TextBox2.Text & "' ,  cust_tell = '" & TextBox3.Text & "', cust_Email = '" & TextBox4.Text & "', cust_services = '" & TextBox5.Text & "' where cust_id = '" & TextBox6.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data has been updated", MsgBoxStyle.Information, "Success")
        objcon.Close()
        Response.AppendHeader("refresh", "2")




    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Dim objcon As New SqlConnection
        Dim objcmd As New SqlCommand
        Dim sql As String


        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()

        sql = "delete from customer where cust_id= '" & TextBox6.Text & "'"
        objcmd = New SqlCommand(sql, objcon)
        objcmd.ExecuteNonQuery()
        MsgBox("data have been deleted", MsgBoxStyle.Information, "Delete")

        objcon.Close()
        Response.AppendHeader("refresh", "2")
    End Sub


End Class
