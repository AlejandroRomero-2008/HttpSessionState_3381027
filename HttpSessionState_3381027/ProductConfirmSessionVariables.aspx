<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductConfirmSessionVariables.aspx.cs" Inherits="HttpSessionState_3381027.ProductConfirmSessionVariables" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <style>
        body { 
            font-family: Arial, sans-serif; 
            font-size: 14px; 
        }
        .form-container {
            max-width: 500px;
            margin: 20px;
        }
        .form-row { 
            display: flex; 
            margin-bottom: 8px; 
            align-items: flex-start; /* Alinea los elementos arriba (útil para el textarea) */
        }
        .form-label { 
            width: 140px; 
            font-weight: bold; 
            padding-top: 3px; /* Pequeño ajuste para alinear el texto de la etiqueta con el control */
        }
        .form-field { 
            flex-grow: 1;
            display: flex;
            align-items: center;
        }
        .form-actions {
            margin-top: 15px;
        }
        /* Pequeño estilo para que el TextBox parezca de solo lectura como en la imagen */
        .readonly-text {
            background-color: #EBEBE4; 
            color: #545454;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="form-container">
      <h2>Confirm Product</h2>
      
      <div class="form-row">
          <div class="form-label">Category</div>
          <div class="form-field">
              <asp:DropDownList ID="ddlCategory" runat="server" Enabled="false"></asp:DropDownList>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Supplier</div>
          <div class="form-field">
              <asp:DropDownList ID="ddlSupplier" runat="server" Enabled="false"></asp:DropDownList>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Product</div>
          <div class="form-field">
              <asp:Label ID="lblProduct" runat="server" Font-Bold="true" ForeColor="#8A2B2B"></asp:Label>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Description</div>
          <div class="form-field">
              <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="4" Width="200px" ReadOnly="true" CssClass="readonly-text"></asp:TextBox>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Image</div>
          <div class="form-field">
              <asp:Label ID="lblImage" runat="server"></asp:Label>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Price</div>
          <div class="form-field">
              <asp:Label ID="lblPrice" runat="server"></asp:Label>
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Number in Stock</div>
          <div class="form-field">
              <asp:Label ID="lblNumberInStock" runat="server"></asp:Label>
              &nbsp;(Value :&nbsp;<asp:Label ID="lblValueInStock" runat="server"></asp:Label>)
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Number on Order</div>
          <div class="form-field">
              <asp:Label ID="lblNumberOnOrder" runat="server"></asp:Label>
              &nbsp;(Value :&nbsp;<asp:Label ID="lblValueOnOrder" runat="server"></asp:Label>)
          </div>
      </div>

      <div class="form-row">
          <div class="form-label">Reorder Level</div>
          <div class="form-field">
              <asp:Label ID="lblReorderLevel" runat="server"></asp:Label>
          </div>
      </div>

      <div class="form-actions">
          <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
          &nbsp;
          <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="btnBack_Click" style="height: 29px" />
      </div>
  </div>
    </form>
</body>
</html>
