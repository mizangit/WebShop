using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using eCommerceSite.Model;
using eCommerceSite.DAL;

namespace eCommerceSite.BLL
{
    public class ProductTypeManager
    {
        ProductTypeGateway aProductTypeGateway = new ProductTypeGateway();
        internal string SaveProductType(Model.ProductType aProductType)
        {
            ProductType isExiest = aProductTypeGateway.CheckProductType(aProductType);

            if (isExiest != null)
            {
                return " Product Type alrady Exiest";
            }

            int message =  aProductTypeGateway.SaveProductType(aProductType);
            if(message>0)
            {
                return "Product Type saved sucessfully";
            }else
            {
               return "Error!!!Product Type  not save";  
            }


            
        }

        internal List<ProductType> GetAllProductType()
        {
            return aProductTypeGateway.GetAllProductType();
        }

    }
}