Imports System.Configuration.ConfigurationManager
Imports System.Net
Imports System.Xml
Imports System.Data
Imports System.Data.SqlClient
Imports System.IO
Imports System
Namespace db
    Public Class coneccion
        Public Shared Function getDataBase() As String
            Return ConnectionStrings("DBCDeveloper").ConnectionString.ToString
        End Function
    End Class
End Namespace


Public Class tools

    Public Shared Function getSinHTML(sText As String) As String
        Return System.Text.RegularExpressions.Regex.Replace(sText, "<[^>]*>", String.Empty)
    End Function

    Public Shared Function IsPair(ByVal Number As Integer) As Boolean
        If Number Mod 2 = 0 Then Return True Else Return False
    End Function

    Public Shared Function obtenerImagen(texto As String) As String
        Dim posicion As Integer = 0
        posicion = texto.IndexOf("<img ")
        Try
            texto = texto.Substring(posicion + 4)
            posicion = texto.IndexOf(">")
            texto = texto.Substring(0, posicion)
            texto = texto.Trim()
            posicion = texto.IndexOf("src=""")
            texto = texto.Substring(posicion + 5)
            posicion = texto.IndexOf("""")
            texto = texto.Substring(0, posicion)
            'Dim strArreglo() As String = {"AIS", "BMP", "BW", "CDR", "CDT", "CGM", "CMX", "CPT", "DCX", "DIB", "EMF", "GBR", "GIF", "GIH", "ICO", "IFF", "ILBM", "JFIF", "JIF", "JPE", "JPEG", "JPG", "KDC", "LBM", "MAC", "PAT", "PCD", "PCT", "PCX", "PIC", "PICT", "PNG", "PNTG", "PIX", "PSD", "PSP", "QTI", "QTIF", "RGB", "RGBA", "RIF", "RLE", "SGI", "TGA", "TIF", "TIFF", "WMF", "XCF"}
            'For i = 0 To strArreglo.Length - 1
            '    posicion = texto.IndexOf("." & strArreglo(i))
            '    If posicion > 0 Then
            '        texto = texto.Substring(posicion + 5)
            '    End If
            'Next
            obtenerImagen = texto
        Catch ex As Exception
            obtenerImagen = "default.png"
        End Try
    End Function

    Public Shared Function PageMenu(pagina As String) As Integer
        Dim visit As Integer = 0
        Select Case pagina
            Case "Default.aspx"
                visit = 1
            Case "Post.aspx"
                visit = 2
            Case "Config.aspx"
                visit = 3
            Case "Menu.aspx"
                visit = 4
            Case Else
                visit = 1
        End Select
        Return visit
    End Function

End Class

Public Class DatabaseCreator

    Private DBServer As String = ""
    Private DBName As String = ""
    Private DBCreateDataFile As String = ""
    Private SQL_CONNECTION_STRING As String = _
        "Server=" & DBServer & ";" & _
        "DataBase=;" & _
        "Integrated Security=SSPI;"
    Protected bolDidPreviouslyConnect As Boolean = False
    Protected connectionString As String = SQL_CONNECTION_STRING
    Private fileUrl As String = ""
    Private timeout As Integer = 600


    Private Function CreateInstanceDb(ByVal strUname As String, ByVal strPassword As String) As Boolean

        Dim strSQL As String = "IF EXISTS (SELECT [name] FROM Master..sysdatabases WHERE [name] = N'" & DBName & "')" & vbCrLf & _
                                "BEGIN" & vbCrLf & _
                                "EXEC dbo.clearDBUsers " & DBName & "" & vbCrLf & _
                                "DROP DATABASE " & DBName & "" & vbCrLf & _
                                "END" & vbCrLf & _
                                "CREATE DATABASE " & DBName


        Dim bolIsConnecting As Boolean = True
        While bolIsConnecting
            Try
                ' The SqlConnection class allows you to communicate with SQL Server.
                ' The constructor accepts a connection string as an argument.  This
                ' connection string uses Integrated Security, which means that you 
                ' must have a login in SQL Server, or be part of the Administrators
                ' group for this to work.
                Dim northwindConnection As New SqlConnection(SQL_CONNECTION_STRING)

                ' A SqlCommand object is used to execute the SQL commands.
                Dim cmd As New SqlCommand(strSQL, northwindConnection)

                ' Open the connection, execute the command, and close the 
                ' connection. It is more efficient to ExecuteNonQuery when data is 
                ' not being returned.
                northwindConnection.Open()
                cmd.ExecuteNonQuery()
                northwindConnection.Close()

                ' Data has been successfully submitted, so break out of the loop
                ' and close the status form.
                bolIsConnecting = False
                bolDidPreviouslyConnect = True
                'bolDidCreateTable = True
                Return True
            Catch sqlExc As SqlException
                Return False
                Exit While
            Catch exc As Exception
                If connectionString = SQL_CONNECTION_STRING Then
                Else
                    Return False
                End If
            End Try
        End While
        Return True
    End Function

    Public Function CreateSQLDb(ByVal strServerName As String, ByVal strDBName As String, Optional ByVal strUserName As String = "", Optional ByVal strPass As String = "") As Boolean
        DBName = strDBName
        DBServer = strServerName
        If strUserName.Trim.Length > 0 Then
            SQL_CONNECTION_STRING = "User ID=" & strUserName & ";Pwd=" & strPass & ";Data Source=" & strServerName & ";database=;Persist Security Info=False;"
        Else
            SQL_CONNECTION_STRING = _
            "Server=" & DBServer & ";" & _
            "DataBase=;" & _
            "Integrated Security=SSPI;"
        End If
        connectionString = SQL_CONNECTION_STRING
        If CreateInstanceDb(strUserName, strPass) Then
            Return True
        Else
            Return False
        End If
    End Function

    Public Property ConnString() As String
        Get
            Return connectionString
        End Get
        Set(ByVal value As String)
            connectionString = value
            SQL_CONNECTION_STRING = value
        End Set
    End Property


    Public Function ExecuteSQLScript(ByVal SQlFilePath As String, ByVal ConStr As String) As Boolean
        Dim conn As SqlConnection = Nothing
        Try
            ' read file 
            fileUrl = SQlFilePath
            Dim request As Net.WebRequest = Net.WebRequest.Create(fileUrl)
            Using sr As New StreamReader(request.GetResponse().GetResponseStream())


                ' Create new connection to database 
                conn = New SqlConnection(ConStr)

                conn.Open()

                While Not sr.EndOfStream
                    Dim sb As New Text.StringBuilder()
                    Dim cmd As SqlCommand = conn.CreateCommand()

                    While Not sr.EndOfStream
                        Dim s As String = sr.ReadLine()
                        If s IsNot Nothing AndAlso s.ToUpper().Trim().Equals("GO") Then
                            Exit While
                        End If

                        sb.AppendLine(s)
                    End While

                    ' Execute T-SQL against the target database 
                    cmd.CommandText = sb.ToString()
                    cmd.CommandTimeout = timeout

                    cmd.ExecuteNonQuery()

                End While
            End Using
            '' Done
            Return True
        Catch ex As Exception
            ' Error            
            Return False
        Finally
        End Try
    End Function


End Class


Public Class twitter
    Private oAuthConsumerKey As String = ""
    Private oAuthConsumerSecret As String = ""
    Private oAuthUrl As String = ""
    Private screenname As String = ""

    Public Function getTwitt()
        Dim authHeaderFormat = "Basic {0}"
        Dim authHeader = String.Format(authHeaderFormat,
             Convert.ToBase64String(Encoding.UTF8.GetBytes(Uri.EscapeDataString(ConsumerKey) + ":" +
                    Uri.EscapeDataString((oAuthConsumerSecret)))
                    ))
        Dim postBody = "grant_type=client_credentials"
        Dim authRequest As HttpWebRequest = CType(WebRequest.Create(oAuthUrl), HttpWebRequest)
        authRequest.Headers.Add("Authorization", authHeader)
        authRequest.Method = "POST"
        authRequest.ContentType = "application/x-www-form-urlencoded;charset=UTF-8"
        authRequest.AutomaticDecompression = DecompressionMethods.GZip Or DecompressionMethods.Deflate
        Using stream As Stream = authRequest.GetRequestStream()
            Dim content As Byte() = ASCIIEncoding.ASCII.GetBytes(postBody)
            stream.Write(content, 0, content.Length)
        End Using

    End Function

    Public Property ConsumerKey() As String
        Get
            Return oAuthConsumerKey
        End Get
        Set(ByVal value As String)
            oAuthConsumerKey = value
        End Set
    End Property
    Public Property ConsumerSecret() As String
        Get
            Return oAuthConsumerSecret
        End Get
        Set(ByVal value As String)
            oAuthConsumerSecret = value
        End Set
    End Property
    Public Property AuthUrl() As String
        Get
            Return oAuthUrl
        End Get
        Set(ByVal value As String)
            oAuthUrl = value
        End Set
    End Property
    Public Property name() As String
        Get
            Return screenname
        End Get
        Set(ByVal value As String)
            screenname = value
        End Set
    End Property
End Class


