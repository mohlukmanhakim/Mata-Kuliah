Imports System.Data.Odbc
Module Module1
    Public con As New OdbcConnection
    Public da As OdbcDataAdapter
    Public ds As DataSet
    Public rd As OdbcDataReader
    Public cmd As OdbcCommand
    Public MyDb As String
    Public Sub koneksi()
        MyDb = "Driver={Mysql ODBC 3.51 Driver};Database=db_pencarian;server=localhost;uid=root"
        con = New OdbcConnection(MyDb)
        If con.State = ConnectionState.Closed Then con.Open()
    End Sub
End Module
