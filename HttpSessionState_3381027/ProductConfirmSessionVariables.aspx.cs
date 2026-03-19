using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HttpSessionState_3381027
{
    public partial class ProductConfirmSessionVariables : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 1. Recuperar y asignar la Categoría
            if (Session["ddlCategory"] != null)
            {
                string categoria = Session["ddlCategory"].ToString();
                ddlCategory.Items.Add(new ListItem(categoria, categoria));
                ddlCategory.SelectedValue = categoria;
            }

            // 2. Recuperar y asignar el Proveedor (Supplier)
            if (Session["ddlSupplier"] != null)
            {
                string proveedor = Session["ddlSupplier"].ToString();
                ddlSupplier.Items.Add(new ListItem(proveedor, proveedor));
                ddlSupplier.SelectedValue = proveedor;
            }
            // Retrieve the session variables.
            ddlCategory.SelectedValue = Session["ddlCategory"].ToString();
            ddlSupplier.SelectedValue = Session["ddlSupplier"].ToString();
            lblProduct.Text = Session["strProduct"].ToString();
            txtDescription.Text = Session["strDescription"].ToString();
            lblImage.Text = Session["strImage"].ToString();
            Decimal decPrice =
                Convert.ToDecimal(Session["decPrice"]);
            lblPrice.Text = decPrice.ToString("c");
            lblNumberInStock.Text = Session["bytNumberInStock"].ToString();
            lblNumberOnOrder.Text = Session["bytNumberOnOrder"].ToString();
            lblReorderLevel.Text = Session["bytReorderLevel"].ToString();
            // Compute and display the value in stock and the value on order.
            Byte bytNumberInStock =
                Convert.ToByte(Session["bytNumberInStock"]);
            Byte bytNumberOnOrder =
                Convert.ToByte(Session["bytNumberOnOrder"]);
            Decimal decValueInStock = decPrice * bytNumberInStock;
            Decimal decValueOnOrder = decPrice * bytNumberOnOrder;
            lblValueInStock.Text = decValueInStock.ToString("c");
            lblValueOnOrder.Text = decValueOnOrder.ToString("c");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }
    }
}