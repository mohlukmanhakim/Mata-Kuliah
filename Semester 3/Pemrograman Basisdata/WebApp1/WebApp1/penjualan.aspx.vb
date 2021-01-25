Imports System.Data.SqlClient

Public Class penjualan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox1.Text = Format(Now, "dd/MM/yyyy")
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=penjualan")
        koneksi.Open()
        Dim input As String = "insert into hargaa(tanggal,no_faktur,kode_barang,nama_barang,harga_barang,jumlah_barang,jumlah_harga) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "')"
        Dim command As New SqlCommand(input, koneksi)
        Dim readers As SqlDataReader = command.ExecuteReader
        readers.Close()
        koneksi.Close()

        Dim koneksi1 As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=penjualan")
        koneksi1.Open()
        Dim hitung As String = "select sum(jumlah_harga) as hit,sum(jumlah_barang) as jum from hargaa where no_faktur='" + TextBox2.Text + "'"
        Dim command1 As New SqlCommand(hitung, koneksi1)
        Dim reader As SqlDataReader = command1.ExecuteReader
        If reader.Read Then
            TextBox8.Text = reader("hit").ToString
            TextBox9.Text = reader("jum").ToString
        End If
        reader.Close()
        koneksi1.Close()

        Dim koneksi3 As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=penjualan")
        koneksi3.Open()
        Dim tampil3 As String = "select * from hargaa where no_faktur='" + TextBox2.Text + "'"
        Dim adapter3 As New SqlDataAdapter(tampil3, koneksi3)
        Dim dataset3 As New DataSet
        adapter3.Fill(dataset3)
        Dim tabel3 As DataTable = dataset3.Tables(0)
        GridView1.DataSource = tabel3
        GridView1.DataBind()

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=penjualan")
        koneksi.Open()
        Dim tampil As String = "select * from stock where kode_barang='" & TextBox3.Text & "'"
        Dim command As New SqlCommand(tampil, koneksi)
        Dim reader As SqlDataReader = Command.ExecuteReader
        If reader.Read Then

            TextBox4.Text = reader("nama")
            TextBox5.Text = reader("harga")
            
        Else
            MsgBox("kode barang tidak ada")
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click

        Dim harga, jumlah, jum_hrg As Integer
        harga = Val(TextBox5.Text)
        jumlah = Val(TextBox6.Text)
        jum_hrg = Val(TextBox7.Text)
        jum_hrg = harga * jumlah
        TextBox7.Text = jum_hrg
    End Sub
End Class