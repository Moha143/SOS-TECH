Imports System.Data.SqlClient
Imports System.Data

Partial Class login
    Inherits System.Web.UI.Page

    Private Property HyperLink As SqlDataAdapter

    Protected Sub login_Click(sender As Object, e As EventArgs) Handles login.Click
        Dim objcon As New SqlConnection

        objcon.ConnectionString = "data source =LAPTOP-EVUT5GL0;initial catalog=SOS;integrated security=true"
        objcon.Open()
        Dim command As New SqlCommand("select * from user_info where username = @username and passwords = @passwords", objcon)

        command.Parameters.Add("@username", SqlDbType.VarChar).Value = TextBox1.Text

        command.Parameters.Add("@passwords", SqlDbType.VarChar).Value = TextBox2.Text

        Dim adapter As New SqlDataAdapter(command)
        Dim table As New DataTable()
        adapter.Fill(table)

        If table.Rows.Count() <= 0 Then

            MsgBox("Username Or Password Are Invalid")

        Else
           
            Response.Redirect("AdminHome.aspx")

        End If


    End Sub
End Class
