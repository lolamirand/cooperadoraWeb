Imports MySqlConnector
Imports System.Data

Public Class conectar

    ' Devuelve la conexión de MySQL
    Public Function GetConnection() As MySqlConnection
        Dim connectionString As String = "server=localhost;port=3306;user=root;password=;database=sistema"
        Return New MySqlConnection(connectionString)
    End Function

    ' Ejecuta una consulta SQL que no devuelve resultados (INSERT, UPDATE, DELETE)
    Public Sub ExecuteNonQuery(query As String)
        Using connection As MySqlConnection = GetConnection()
            Try
                connection.Open()
                Dim command As New MySqlCommand(query, connection)
                command.ExecuteNonQuery()
            Catch ex As Exception
                ' Manejo de excepciones, puedes agregar un log si es necesario
            End Try
        End Using
    End Sub

    ' Ejecuta una consulta que devuelve un conjunto de resultados (SELECT) y retorna todos los resultados en un DataTable
    Public Function ExecuteQuery(query As String) As DataTable
        Using connection As MySqlConnection = GetConnection()
            ' Abrimos la conexión
            ''connection.Open()

            ' Creamos un adaptador de datos que usará la consulta SQL proporcionada
            Dim adapter As New MySqlDataAdapter(query, connection)

            ' Creamos una instancia de DataTable para almacenar los resultados
            Dim dataTable As New DataTable()

            ' Llenamos el DataTable con los resultados de la consulta
            adapter.Fill(dataTable)

            ' Devolvemos el DataTable con todos los registros de la consulta
            Return dataTable
        End Using
    End Function

End Class
