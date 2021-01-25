Imports System
Imports System.Data.SqlClient
Public Class tampildata
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=wik")
        koneksi.Open()
        Dim tampil As String = "select * from wik"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
    End Sub
End Class