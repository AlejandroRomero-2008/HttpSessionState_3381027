<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="HttpSessionState_3381027.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
       <style>
        body {
            background-color: white; /* El azul clarito de tu imagen */
            font-family: Arial, sans-serif; 
            padding: 20px;
        }

        /* Contenedor principal para que el formulario no ocupe toda la pantalla */
        .form-container {
            width: 350px; 
        }

        /* Estilo básico para cada fila del formulario */
        .form-group {
            margin-bottom: 6px; 
        }

        /* ¡La clave! ASP.NET renderiza los asp:Label como <span> */
        .form-group span {
            display: inline-block;
            width: 130px; /* Ancho fijo para alinear perfectamente la columna izquierda */
            vertical-align: top;
            font-size: 15px;
            margin-top: 2px;
        }

        /* Alineación uniforme para todos los controles de la derecha */
        .form-group select, 
        .form-group input[type="text"], 
        .form-group textarea {
            width: 155px; /* Todas las cajas medirán exactamente lo mismo */
            font-family: Arial, sans-serif;
            border: 1px solid #7a9ebe; /* Un borde sutil que combina con el fondo */
            padding: 2px;
        }

        /* Separación especial para el botón */
        .buttons-container {
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
              <div class="form-container">

    <div class="form-group">
        <asp:Label ID="lblCategory" runat="server" Text="Category"></asp:Label>
        <asp:DropDownList ID="ddlCategory" runat="server">
            <asp:ListItem>Footwear-Women's</asp:ListItem>
        </asp:DropDownList>
        </div>

    <div class="form-group">
        <asp:Label ID="lblSupplier" runat="server" Text="Supplier"></asp:Label>
        <asp:DropDownList ID="ddlSupplier" runat="server">
            <asp:ListItem>Nike</asp:ListItem>
        </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label ID="lblProductTitle" runat="server" Text="Product"></asp:Label>
        <asp:TextBox ID="txtProduct" runat="server"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" Text="Looking for "></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblImageTitle" runat="server" Text="Image"></asp:Label>
        <asp:TextBox ID="txtImage" runat="server" Text="NFWS.jpg"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblPriceTitle" runat="server" Text="Price"></asp:Label>
        <asp:TextBox ID="txtPrice" runat="server" Text="127.50"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblNumberInStockTitle" runat="server" Text="Number in Stock"></asp:Label>
        <asp:TextBox ID="txtNumberInStock" runat="server" Text="4"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblNumberOnOrderTitle" runat="server" Text="Number in Order"></asp:Label>
        <asp:TextBox ID="txtNumberOnOrder" runat="server" Text="5"></asp:TextBox>
    </div>

    <div class="form-group">
        <asp:Label ID="lblReorderLevelTitle" runat="server" Text="Reorder Level"></asp:Label>
        <asp:TextBox ID="txtReorderLevel" runat="server" Text="5"></asp:TextBox>
    </div>

    <div class="buttons-container">
        <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" style="height: 29px" />
    </div>

</div>
    </form>
</body>
</html>
