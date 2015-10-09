using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eCommerceSite.Model;
using eCommerceSite.BLL;

namespace eCommerceSite.UI
{
    public partial class ViewProduct : System.Web.UI.Page

    {
        CartManager aCartManager = new CartManager();
        ProductManager aProductManager = new ProductManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            FillPage();
        }

        private void FillPage()
        {
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = int.Parse(Request.QueryString["id"]);
                Product aProduct = aProductManager.GetProduct(id);
                itemNumberLabel.Text = id.ToString();
                priceLabel.Text = "Price per unit<br/>$" + aProduct.Price;
                titleLabel.Text = aProduct.Name;
                descriptionLabel.Text = aProduct.Description;
                imageProduct.ImageUrl = "~/Image/" + aProduct.Image;

                int[] amount = Enumerable.Range(1, 20).ToArray();
                amountDropDownList.DataSource = amount;
                amountDropDownList.AppendDataBoundItems = true;
                amountDropDownList.DataBind();
            }
        }

        protected void addButton_Click(object sender, EventArgs e)
        {


            if (!String.IsNullOrWhiteSpace(Request.QueryString["Id"]))
            {
                string clientId="Mizu1";
                int productId=int.Parse(Request.QueryString["Id"]);
                int productAmount = int.Parse(amountDropDownList.SelectedValue);

                Cart aCat = new Cart();
                aCat.ClientId = clientId;
                aCat.ProductId = productId;
                aCat.Amount = productAmount;
                aCat.DatePurchased = DateTime.Now;
                aCat.IsInCart = true;

                String message = aCartManager.ProductAddInCart(aCat);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('" + message + "');", true);
            } 

        }
    } 
}