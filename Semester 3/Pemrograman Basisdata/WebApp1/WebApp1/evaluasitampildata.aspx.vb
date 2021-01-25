Imports System
Imports System.Data.SqlClient
Public Class evaluasitampildata
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub Button6_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button6.Click
        TextBox4.Text = Left(TextBox1.Text, 4)
        If Mid(TextBox1.Text, 5, 2) = "51" Then
            TextBox3.Text = "Teknik Informatika"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "52" Then
            TextBox3.Text = "Sistem Informasi"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "53" Then
            TextBox3.Text = "Teknik Elektro"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "54" Then
            TextBox3.Text = "Teknik Industri"
            TextBox2.Focus()
        ElseIf Mid(TextBox1.Text, 5, 2) = "55" Then
            TextBox3.Text = "Teknik Mesin"
            TextBox2.Focus()
        Else
            TextBox3.Text = "Salah Input"
            TextBox1.Focus()
            TextBox4.BackColor = Drawing.Color.BlueViolet
        End If
    End Sub
    Protected Sub Button5_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim cari As String = "select * from pinjam where nim='" & TextBox1.Text & "'"
        Dim command1 As New SqlCommand(cari, koneksi)
        Dim readers1 As SqlDataReader = command1.ExecuteReader
        If readers1.Read() Then
            MsgBox("data sudah diinput")
        Else
            Dim koneksi1 As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
            koneksi1.Open()
            Dim input As String = "insert into pinjam(nim,nama,prodi,angkatan,tglpinjam,judulbuku,pengarang,penerbit,bayar) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox18.Text & "')"
            Dim command As New SqlCommand(input, koneksi1)
            Dim readers As SqlDataReader = command.ExecuteReader
            readers.Close()
            koneksi.Close()
            TextBox1.Text = ""
            TextBox2.Text = ""
            TextBox3.Text = ""
            TextBox4.Text = ""
            TextBox5.Text = ""
            TextBox6.Text = ""
            TextBox7.Text = ""
            TextBox8.Text = ""
            TextBox18.Text = ""
            MsgBox("data berhasil diinput")
        End If
        'tampil data'
        Dim koneksi2 As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi2.Open()
        Dim tampil As String = "select * from pinjam where nim='" & TextBox1.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi2)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim tampil As String = "select * from pinjam where judulbuku='" & TextBox9.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
        TextBox9.Text = ""
    End Sub
    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim tampil As String = "select * from pinjam where nama='" & TextBox10.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
        TextBox10.Text = ""
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim tampil As String = "select * from pinjam where prodi='" & DropDownList1.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
        DropDownList1.Text = ""
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim tampil As String = "select * from pinjam where angkatan='" & DropDownList2.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
        DropDownList2.Text = ""
    End Sub

    Protected Sub Button7_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button7.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim tampil As String = "select * from pinjam where nim='" & TextBox11.Text & "'"
        Dim adapter As New SqlDataAdapter(tampil, koneksi)
        Dim dataset As New DataSet
        adapter.Fill(dataset)
        Dim tabel As DataTable = dataset.Tables(0)
        GridView1.DataSource = tabel
        GridView1.DataBind()
        TextBox11.Text = ""
    End Sub
    Protected Sub Button8_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button8.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=localhost;initial catalog=perpustakaan")
        koneksi.Open()
        Dim hitung As String = "select count(nim) as hit, MAX(bayar) as byr, MIN(bayar) as byrm, AVG(bayar) as avg,SUM(bayar) as sum,count(bayar) as count from pinjam"
        Dim command As New SqlCommand(hitung, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        If reader.Read Then

            TextBox12.Text = reader("hit").ToString
            TextBox13.Text = reader("byr").ToString
            TextBox14.Text = reader("byrm").ToString
            TextBox15.Text = reader("avg").ToString
            TextBox16.Text = reader("sum").ToString
            TextBox17.Text = reader("count").ToString

            reader.Close()
            koneksi.Close()
        Else
            MsgBox("data tidak ada")
        End If
    End Sub
End Class