<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarPago.aspx.vb" Inherits="cooperadoraWeb.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="txtNombre" runat="server" Placeholder="Escribe tu nombre"></asp:TextBox>
<asp:Button ID="btnSaludar" runat="server" Text="Saludar" OnClick="btnSaludar_Click" />
<asp:Label ID="lblSaludo" runat="server"></asp:Label>

    </form>
</body>
</html>
