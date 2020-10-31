Imports System.Data.Odbc
Public Class FormLihat

    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        Call koneksi()
        da = New OdbcDataAdapter("Select nomor,judul,kategori,tempatpenemuan,tglpenemuan,nohp,detail From tbl_inputan", con)
        ds = New DataSet
        da.Fill(ds, "tbl_inputan")
        DataGridView1.DataSource = ds.Tables("tbl_inputan")
        DataGridView1.ReadOnly = True
        If e.KeyChar = Chr(13) Then
            Call koneksi()
            cmd = New OdbcCommand("Select * From tbl_inputan where nomor='" & TextBox1.Text & "'", con)
            rd = cmd.ExecuteReader
            rd.Read()
            If Not rd.HasRows Then
                MsgBox("nomor tidak ada")
            Else
                TextBox1.Text = rd.Item("nomor")
                TextBox2.Text = rd.Item("judul")
                TextBox3.Text = rd.Item("kategori")
                TextBox4.Text = rd.Item("tempatpenemuan")
                DateTimePicker1.Text = rd.Item("tglpenemuan")
                TextBox5.Text = rd.Item("nohp")
                RichTextBox1.Text = rd.Item("detail")
            End If
        End If
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Me.Close()
    End Sub

    Private Sub FormLihat_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        DateTimePicker1.Format = DateTimePickerFormat.Custom
        DateTimePicker1.CustomFormat = "yyyy/MM/dd"
    End Sub
End Class