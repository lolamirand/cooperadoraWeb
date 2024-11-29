﻿Imports System.Data.SqlClient
Imports System.Configuration
Imports cooperadoraWeb.conectar
Public Class Moviminto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            ' Llamamos a la función para llenar el DropDownList
            iniciar()
        End If
    End Sub
    Private Sub iniciar()

        Dim conexion As New conectar()

        ' Consulta SQL que obtendrá los datos de la tabla
        Dim query As String = "SELECT idSocio, nombre FROM socios"

        ' Usamos ExecuteQuery para obtener un DataTable con los resultados de la consulta
        Dim dt As DataTable = conexion.ExecuteQuery(query)

        ' Llenamos el DropDownList con los datos del DataTable
        selectSocio.DataSource = dt
        selectSocio.DataTextField = "Nombre"  ' Columna que se mostrará en el DropDown
        selectSocio.DataValueField = "idSocio"    ' Columna que se usará como valor
        selectSocio.DataBind()

        ' Opcional: agregar un ítem por defecto (como una opción "Seleccione una opción")
        selectSocio.Items.Insert(0, New ListItem("Seleccione una opción", "0"))
    End Sub

End Class