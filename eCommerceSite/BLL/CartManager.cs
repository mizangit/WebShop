using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using eCommerceSite.Model;
using eCommerceSite.DAL;

namespace eCommerceSite.BLL
{
    public class CartManager
    {
        CartGateway aCartGateway = new CartGateway();
        internal string ProductAddInCart(Model.Cart aCat)
        {
            int message = aCartGateway.ProductAddInCart(aCat);

            if (message > 0)
            {
                return " Product successfully added in Shoping Cart";
            }
            else
            {
                return "Error!!!! Product not added in Shoping Cart";
            }
        }
    }
}