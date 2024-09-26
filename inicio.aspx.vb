Public Class inicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnSaludar_Click(sender As Object, e As EventArgs)
        lblSaludo.Text = "Hola, " & txtNombre.Text & "!"
    End Sub
End Class