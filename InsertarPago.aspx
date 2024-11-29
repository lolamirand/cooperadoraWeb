<%@ Page Language="vb" AutoEventWireup="true" CodeBehind="InsertarPago.aspx.vb" Inherits="cooperadoraWeb.InsertarPago" %>

<!DOCTYPE html> 

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>Hola</title>
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        #container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        #header, #footer {
            width: 100%;
            text-align: center;
            padding: 10px 0;
            background-color: #f8f8f8;
            border: 1px solid #ddd;
        }
        #main {
            width: 100%;
            max-width: 600px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        select, input[type="button"] {
            width: 100%;
            margin-bottom: 10px;
        }
        .panel {
            border: 1px solid #ccc;
            padding: 10px;
            margin-bottom: 10px;
        }

        @media (max-width: 600px) {
            #main {
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <form id="frmInsertarPago" runat="server">
        <div id="container">
            <div id="header">
                <h1>Cooperadora Web</h1>
            </div>
            <div id="main">
                <h2>PAGOS</h2>
                <label for="selectSocio">Socios:</label>
                <asp:DropDownList ID="selectSocio" runat="server">
                </asp:DropDownList>

                <div class="panel">
                    <label>FORMA DE PAGO</label><br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Efectivo" /><br />
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="Transferencia" />
                </div>

                <div class="panel">
                    <label>TIPO DE CUOTA:</label><br />
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Cooperadora" /><br />
                    <asp:CheckBox ID="CheckBox4" runat="server" Text="Residencia" /><br />
                    <asp:CheckBox ID="CheckBox5" runat="server" Text="1/2 Pensión" />
                </div>

                <div class="panel">
                    <label>FECHA DE MOVIMIENTO:</label>
                    <asp:Calendar ID="Calendar1" runat="server" Width="100%"></asp:Calendar>
                </div>

                <asp:Button ID="Button1" runat="server" Text="Cancelar" />
                <asp:Button ID="Button2" runat="server" Text="Limpiar" />
                <asp:Button ID="Button3" runat="server" Text="Guardar" OnClick="Button3_Click" />
            </div>
            <div id="footer">
                &copy; E.E.S.T. N° 1 - 5to año, 2024
            </div>
        </div>
    </form>
</body>
</html>
