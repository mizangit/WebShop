using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using eCommerceSite.Model;
using eCommerceSite.BLL;

namespace eCommerceSite.UI
{
    public partial class ProductUI : System.Web.UI.Page
    {
        ProductTypeManager aProductTypeManager = new ProductTypeManager();
        ProductManager aProductManager = new ProductManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductType();
                productTypeDropDownList.SelectedValue = "-1";
                
            }
            
        }

        public void GetProductType()
        {
            List<ProductType> aProductTypeList = new List<ProductType>();
            aProductTypeList = aProductTypeManager.GetAllProductType();
            productTypeDropDownList.DataSource = null;
            productTypeDropDownList.DataSource = aProductTypeList;
            productTypeDropDownList.DataTextField = "Name";
            productTypeDropDownList.DataValueField = "Id";
            productTypeDropDownList.DataBind();
            productTypeDropDownList.Items.Insert(0, new ListItem("Select Item","-1"));
        }

        public void SaveProduct()
        {
            Product aProduct = new Product();
            if (productNameTextBox.Text == String.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Enter Product Name');", true);
            }
            else if (productTypeDropDownList.SelectedValue== "-1")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Select Product Type');", true);
            }
            else if (priceTextBox.Text == String.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Enter Product Price');", true);
            }
            else if (descriptionTextBox.Text == String.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Enter Product Description');", true);
            }
            else if (imageFileUpload.FileName==string.Empty)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Select Image');", true);
            }

            else
            {
                aProduct.TypeId = int.Parse(productTypeDropDownList.SelectedValue.ToString());

                aProduct.Name = productNameTextBox.Text;
                aProduct.Price = int.Parse(priceTextBox.Text);
                aProduct.Description = descriptionTextBox.Text;

                if (imageFileUpload.HasFile)
                {
                    string extension = System.IO.Path.GetExtension(imageFileUpload.FileName);
                    if (extension.ToLower() != ".png" && extension.ToLower() != ".jpg" && extension.ToLower() != ".jpeg")
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Invalid image formet');", true);
                    }
                    else
                    {
                        aProduct.Image = "Image/" + Path.GetFileName(imageFileUpload.PostedFile.FileName);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('Select Image file');", true);
                }
                String message = aProductManager.SaveProduct(aProduct);
                imageFileUpload.SaveAs(Server.MapPath("~/Image/" + imageFileUpload.FileName));
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Popup", "alert('" + message + "');", true);

                productNameTextBox.Text = String.Empty;
                priceTextBox.Text = String.Empty;
                descriptionTextBox.Text = String.Empty;
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            SaveProduct();
        }







    }
}