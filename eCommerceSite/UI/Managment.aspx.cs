using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using eCommerceSite.Model;
using eCommerceSite.BLL;

namespace eCommerceSite
{
    public partial class Managment : System.Web.UI.Page
    {
        ProductManager aProductManager = new ProductManager();
        ProductTypeManager aProductTypeManager = new ProductTypeManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAllProducts();
                GetAllProductTypes();
            }
        }

        public void GetAllProducts()
        {
            productsGridView.DataSource = null;
            productsGridView.DataSource = aProductManager.GetAllProducts();
            productsGridView.DataBind();


        }
        public void GetAllProductTypes()
        {
          productTypeGridView.DataSource = null;
          productTypeGridView.DataSource = aProductTypeManager.GetAllProductType();
          productTypeGridView.DataBind();


        }
    }
}