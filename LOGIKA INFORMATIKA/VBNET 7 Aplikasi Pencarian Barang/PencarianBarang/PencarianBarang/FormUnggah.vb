Imports System.Data.Odbc
Public Class FormUnggah
    Sub buka()

    End Sub
    Sub kondisiawal()
        TextBox4.Text = ""
        TextBox1.Text = ""
        ComboBox1.Items.Clear()
        ComboBox1.Text = ""
        TextBox2.Text = ""
        TextBox3.Text = ""
        RichTextBox1.Text = ""
        TextBox4.Enabled = False
        TextBox1.Enabled = False
        TextBox2.Enabled = False
        TextBox3.Enabled = False
        ComboBox1.Enabled = False
        DateTimePicker1.Enabled = False
        RichTextBox1.Enabled = False
        Button1.Text = "INPUT"
        Button2.Text = "EDIT"
        Button3.Text = "HAPUS"
        Button4.Text = "TUTUP"
        Call koneksi()
        da = New OdbcDataAdapter("Select nomor,judul,kategori,tempatpenemuan,tglpenemuan,nohp,detail From tbl_inputan", con)
        ds = New DataSet
        da.Fill(ds, "tbl_inputan")
        DataGridView1.DataSource = ds.Tables("tbl_inputan")
        DataGridView1.ReadOnly = True
    End Sub
    Sub siapisi()
        TextBox4.Enabled = True
        TextBox1.Enabled = True
        ComboBox1.Enabled = True
        ComboBox1.Items.Add("Kendaraan")
        ComboBox1.Items.Add("Elektronik")
        ComboBox1.Items.Add("Aksesoris")
        ComboBox1.Items.Add("Dokumen")
        ComboBox1.Items.Add("Lain-lain")
        TextBox2.Enabled = True
        DateTimePicker1.Enabled = True
        TextBox3.Enabled = True
        RichTextBox1.Enabled = True
    End Sub

    Private Sub FormUnggah_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Call kondisiawal()
        DateTimePicker1.Format = DateTimePickerFormat.Custom
        DateTimePicker1.CustomFormat = "yyyy/MM/dd"
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Button1.Text = "INPUT" Then
            Button1.Text = "SIMPAN"
            Button2.Enabled = True
            Button3.Enabled = True
            Button4.Text = "BATAL"
            Call siapisi()
            cmd = New OdbcCommand("Select * From tbl_inputan where nomor in(Select max(nomor) from tbl_inputan)", con)
            Dim urutan As String
            Dim hitung As Long
            rd = cmd.ExecuteReader
            rd.Read()
            If Not rd.HasRows Then
                urutan = "NMR" + "001"
            Else
                hitung = Microsoft.VisualBasic.Right(rd.GetString(0), 3) + 1
                urutan = "NMR" + Microsoft.VisualBasic.Right("000" & hitung, 3)
            End If
            TextBox4.Text = urutan
        Else
            If TextBox4.Text = "" Or TextBox1.Text = "" Or ComboBox1.Text = "" Or TextBox2.Text = "" Or DateTimePicker1.Text = "" Or TextBox3.Text = "" Or RichTextBox1.Text = "" Then
                MsgBox("Silahkan isi semua field")
            Else
                Call koneksi()
                Dim inputdata As String = "Insert into tbl_inputan values('" & TextBox4.Text & "','" & TextBox1.Text & "','" & ComboBox1.Text & "','" & TextBox2.Text & "','" & DateTimePicker1.Text & "','" & TextBox3.Text & "','" & RichTextBox1.Text & "')"
                cmd = New OdbcCommand(inputdata, con)
                cmd.ExecuteNonQuery()
                MsgBox("Input data berhasil")
                Call kondisiawal()
            End If
        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        If Button2.Text = "EDIT" Then
            Button2.Text = "SIMPAN"
            Button1.Enabled = True
            Button3.Enabled = True
            Button4.Text = "BATAL"
            Call siapisi()
        Else
            If TextBox4.Text = "" Or TextBox1.Text = "" Or ComboBox1.Text = "" Or TextBox2.Text = "" Or DateTimePicker1.Text = "" Or TextBox3.Text = "" Or RichTextBox1.Text = "" Then
                MsgBox("Silahkan Isi semua field")
            Else
                Call koneksi()
                Dim updatedata As String = "Update tbl_inputan set judul='" & TextBox1.Text & "',kategori='" & ComboBox1.Text & "',tempatpenemuan='" & TextBox2.Text & "',tglpenemuan='" & DateTimePicker1.Text & "',nohp='" & TextBox3.Text & "',detail='" & RichTextBox1.Text & "' where nomor='" & TextBox4.Text & "'"
                cmd = New OdbcCommand(updatedata, con)
                cmd.ExecuteNonQuery()
                MsgBox("Update data berhasil")
                Call kondisiawal()
            End If
        End If
    End Sub
    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If Button3.Text = "HAPUS" Then
            Button3.Text = "DELETE"
            Button1.Enabled = True
            Button2.Enabled = True
            Button4.Text = "BATAL"
            Call siapisi()
        Else
            If TextBox1.Text = "" Or ComboBox1.Text = "" Or TextBox2.Text = "" Or DateTimePicker1.Text = "" Or TextBox3.Text = "" Or RichTextBox1.Text = "" Then
                MsgBox("Silahkan isi semua field")
            Else
                Call koneksi()
                Dim Hapusdata As String = "delete from tbl_inputan where nomor='" & TextBox4.Text & "'"
                cmd = New OdbcCommand(Hapusdata, con)
                cmd.ExecuteNonQuery()
                MsgBox("Hapus data berhasil")
                Call kondisiawal()
            End If
        End If
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If Button4.Text = "TUTUP" Then
            Me.Close()
        Else
            Call kondisiawal()
        End If
    End Sub

    Private Sub TextBox4_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox4.KeyPress
        If e.KeyChar = Chr(13) Then
            Call koneksi()
            cmd = New OdbcCommand("Select * From tbl_inputan where nomor='" & TextBox4.Text & "'", con)
            rd = cmd.ExecuteReader
            rd.Read()
            If Not rd.HasRows Then
                MsgBox("Nama tidak ada")
            Else
                TextBox4.Text = rd.Item("nomor")
                TextBox1.Text = rd.Item("judul")
                ComboBox1.Text = rd.Item("kategori")
                TextBox2.Text = rd.Item("tempatpenemuan")
                DateTimePicker1.Text = rd.Item("tglpenemuan")
                TextBox3.Text = rd.Item("nohp")
                RichTextBox1.Text = rd.Item("detail")
            End If
        End If
    End Sub

    Private Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub
End Class