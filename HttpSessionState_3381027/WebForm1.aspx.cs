using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HttpSessionState_3381027
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCategory.Items.Add("Footwear - Women's");
                ddlCategory.Items.Add("Footwear - Men's");
                ddlCategory.Items.Add("Accessories");

                ddlSupplier.Items.Add("Nike");
                ddlSupplier.Items.Add("Adidas");
                ddlSupplier.Items.Add("Puma");
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            // Save the session variables.
            Session["ddlCategory"] = ddlCategory.SelectedValue;
            Session["ddlSupplier"] = ddlSupplier.SelectedValue;
            Session["strProduct"] = txtProduct.Text;
            Session["strDescription"] = txtDescription.Text;
            Session["strImage"] = txtImage.Text;
            Session["decPrice"] = txtPrice.Text;
            Session["bytNumberInStock"] = txtNumberInStock.Text;
            Session["bytNumberOnOrder"] = txtNumberOnOrder.Text;
            Session["bytReorderLevel"] = txtReorderLevel.Text;
            // Go to the confirmation page.
            Response.Redirect("ProductConfirmSessionVariables.aspx");
        }
    }
}