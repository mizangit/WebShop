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
    public partial class ProductTypeUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            SaveProductType();
        }
        ProductTypeManager aProductTypeManager = new ProductTypeManager();
        ProductType aProductType = new ProductType();
        public void SaveProductType()
        {

            if (nameTextBox.Text == string.Empty)
            {
                ClientScript.RegisterStartupScript(this.GetType(), " ", "alert('Enter Product Type Name')", true);
            }
            else
            {
                aProductType.Name = nameTextBox.Text;

                String message = aProductTypeManager.SaveProductType(aProductType);
                ClientScript.RegisterStartupScript(this.GetType(), " ", "alert('" + message + "')", true);
            }

            nameTextBox.Text = string.Empty;
        }





    }
}