<%--<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Moviminto.aspx.vb" Inherits="cooperadoraWeb.Moviminto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%><%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Movimiento.aspx.vb" Inherits="cooperadoraWeb.inicio" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Movie Site</title>
    <link href="~/Styles/Movies.css" rel="stylesheet" type="text/css" />
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
    <form id="frmMovimiento" runat="server">
        <div id="container">
            <div id="header">
                <h1>Cooperadora Web</h1>
            </div>
            <div id="main">
                <h2>MOVIMIENTOS</h2>
                <label for="Select1">Socios:</label>
                <asp:DropDownList ID="selectSocio" runat="server">
                </asp:DropDownList>

                <div class="panel">
                    <label>IMPORTE </label><br />
                    <asp:TextBox ID="txtImportee" runat="server"></asp:TextBox>
                </div>

                <div class="panel">
                    <label>FORMA DE PAGO</label><br />
                    <asp:CheckBox ID="checkEfectivo" runat="server" Text="Efectivo" /><br />
                    <asp:CheckBox ID="checkTransferencia" runat="server" Text="Transferencia" />
                </div>

                &nbsp;<div class="panel">
                    <label>TIPO DE CUOTA:</label><br />
                    <asp:CheckBox ID="checkCooperadora" runat="server" Text="Cooperadora" /><br />
                    <asp:CheckBox ID="checkResidencia" runat="server" Text="Residencia" /><br />
                    <asp:CheckBox ID="checkPension" runat="server" Text="1/2 Pensión" />
                </div>

                <div class="panel">
                    <label>FECHA DE MOVIMIENTO:</label>
                    <asp:Calendar ID="fechaMoviento" runat="server" Width="100%"></asp:Calendar>
                </div>

                <div class="panel">
                    USARIOS<br />
                    <asp:TextBox ID="txUsuario" runat="server"></asp:TextBox>
                </div>

                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" />
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
            </div>
            <div id="footer">
                &copy; E.E.S.T. N° 1 - 5to año, 2024
            </div>
        </div>
    </form>
</body>
</html>
