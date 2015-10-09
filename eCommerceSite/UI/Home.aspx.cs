using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eCommerceSite.BLL;
using eCommerceSite.Model;

namespace eCommerceSite
{
    public partial class Home : System.Web.UI.Page
    {
        ProductManager aProductManager = new ProductManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FillPage();
            }
            
        }

        protected void viewButton_Click(object sender, EventArgs e)
        {
           
           
        }


        public void FillPage()
        {
            List<Product> aProductList = aProductManager.GetAllProducts();

            if (aProductList != null)
            {

                foreach (Product products in aProductList)
                {
                    Panel aPanel = new Panel();

                    ImageButton imageButton = new ImageButton()
                    {
                        ImageUrl = "~/Image/" + products.Image,
                        PostBackUrl = string.Format("~/UI/ViewProduct.aspx?id={0}", products.Id),
                        CssClass = "productImage"
                    };

                    Label nameLable = new Label()
                    {
                      Text = products.Name,
                      CssClass = "productName"                       
                    };

                    Label priceLable = new Label()
                    {
                        Text = "$ " + products.Price,
                        CssClass = "productPrice"                       
                    };

                    imageButton.ImageUrl = products.Image;
                    imageButton.CssClass = "productImage";
                    imageButton.PostBackUrl = "~/UI/ViewProduct.aspx?Id={0}" + products.Id;
                    nameLable.Text = products.Name;
                    nameLable.CssClass = "productName";
                    priceLable.Text = "$ "+products.Price;
                    priceLable.CssClass = "productPrice";


                    aPanel.Controls.Add(imageButton);
                    aPanel.Controls.Add(new Literal { Text = "<br/>" });
                    aPanel.Controls.Add(nameLable);
                    aPanel.Controls.Add(new Literal { Text = "<br/>" });
                    aPanel.Controls.Add(priceLable);

                    productPanel.Controls.Add(aPanel);

                }
            }
            else
            {
               productPanel.Controls.Add(new Literal { Text = "No Product found" });
            }

        }
    }
}