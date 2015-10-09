using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using eCommerceSite.DAL;
using eCommerceSite.Model;

namespace eCommerceSite.BLL
{
    public class ProductManager
    {

        ProductGateway aProductGateway = new ProductGateway();

        public string SaveProduct(Model.Product aProduct)
        {
            int message = aProductGateway.SaveProduct(aProduct);
            if (message > 0)
            {
                return "Product Saved Successfully";
            }
            else
            {
                return "Error!!! Product not save";
            }
           
        }

        public List<Product> GetAllProducts()
        {
            return aProductGateway.GetAllProducts();
        }



        public Product GetProduct(int id)
        {
            return aProductGateway.GetProduct(id);
        }

        
    }
}