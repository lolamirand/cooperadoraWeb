Imports MySqlConnector
Imports System.Data

Public Class conectar

    ' Devuelve la conexión de MySQL
    Public Function GetConnection() As MySqlConnection
        Dim connectionString As String = "server=localhost;port=3306;user=root;password=;database=sistema"
        Return New MySqlConnection(connectionString)
    End Function

    ' Ejecuta una consulta que devuelve un conjunto de resultados (SELECT) y retorna todos los resultados en un DataTable
    Public Function ExecuteQuery(query As String) As DataTable
        Dim dataTable As New DataTable()

        ' Creamos la conexión a la base de datos
        Using connection As MySqlConnection = GetConnection()

            ' Verificamos si la conexión está cerrada
            If connection.State = ConnectionState.Closed Then
                connection.Open()
            End If

            ' Creamos el adaptador de datos con la consulta SQL y la conexión
            Dim adapter As New MySqlDataAdapter(query, connection)

            Try
                ' Llenamos el DataTable con los resultados de la consulta
                adapter.Fill(dataTable)
            Catch ex As Exception
                ' Manejo de errores
                ' Puedes registrar el error o mostrarlo según sea necesario
                Throw New Exception("Error al ejecutar la consulta: " & ex.Message)
            Finally
                ' Aseguramos que la conexión se cierre después de la operación
                connection.Close()
            End Try
        End Using

        ' Devolvemos el DataTable con todos los registros de la consulta
        Return dataTable
    End Function
End Class
