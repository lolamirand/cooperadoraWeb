<<%--%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarPago.aspx.vb" Inherits="cooperadoraWeb.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <!DOCTYPE html>
<html>
  <head>
    <title>My Movie Site</title>
    <link href="~/Styles/Movies.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    <div id="container">
        <div id="header">
          <h1></h1>
        </div>
        <div id="main">COOPERADORA E.S.T. N° 1
    </div>
  </body>
</html>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

 
   
    <title></title>
    <style type="text/css">
        #frmInsertarPago {
            height: 27px;
        }
    </style>
</head>
<body>
    <form id="frmInsertarPago" runat="server">
        PAGOS
        <br />
        <br />
        <br />
        <br />
        Socios:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <select id="Select1">
            <option>Seleccione Socio</option>
        </select><br />
&nbsp;<asp:Panel ID="Panel1" runat="server" Height="115px" Width="273px">
            <asp:Label ID="Label1" runat="server" Text="Label">FORMA DE PAGO</asp:Label>

            :<br />
            <br />
             <asp:CheckBox ID="CheckBox1" runat="server" />
            Efectivo<br />
            <asp:CheckBox ID="CheckBox2" runat="server" />
            Transferencia&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;
          
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" Height="115px" Width="272px">
            TIPO DE CUOTA:<br />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" />
            Cooperadora<br />
             <asp:CheckBox ID="CheckBox4" runat="server" />
            Residencia<br />
            <asp:CheckBox ID="CheckBox5" runat="server" />
           1/2 Pensión


            </asp:Panel>
            
            <br />
            
            <br />
         <%-
        <asp:Panel ID="Panel3" runat="server" Height="208px" Width="270px">
            FECHA DE MOVIMIENTO:
            <asp:Calendar ID="Calendar1" runat="server" Width="263px"></asp:Calendar>
            <br />
            <asp:Panel ID="Panel4" runat="server" Width="264px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
            </asp:Panel>
            <br />
        </asp:Panel>
                <asp:Button ID="Button1" runat="server" Text="Cancelar " />
                <asp:Button ID="Button2" runat="server" Text="Limpiar" />
                  <asp:Button ID="Button3" runat="server" Text="Guardar" />
        </form>

</body>
</html>--%>


    <%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InsertarPago.aspx.vb" Inherits="cooperadoraWeb.inicio" %>

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
    <form id="frmInsertarPago" runat="server">
        <div id="container">
            <div id="header">
                <h1>Cooperadora Web</h1>
            </div>
            <div id="main">
                <h2>PAGOS</h2>
                <label for="Select1">Socios:</label>
                <select id="Select1">
                    <option>Seleccione Socio</option>
                </select>

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
                <asp:Button ID="Button3" runat="server" Text="Guardar" />
            </div>
            <div id="footer">
                &copy; @E.E.S.T. N° 1 2024 5to año
            </div>
        </div>
    </form>
</body>
</html>
