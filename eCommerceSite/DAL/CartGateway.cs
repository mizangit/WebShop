using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using eCommerceSite.Model;

namespace eCommerceSite.DAL
{
    public class CartGateway
    {

        String connection = ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString;

        internal int ProductAddInCart(Model.Cart aCat)
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "INSERT INTO tbl_Cart VALUES('" + aCat.ClientId + "','" + aCat.ProductId + "','" + aCat.Amount + "','" + aCat.DatePurchased + "','" + aCat.IsInCart + "') ";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            int affectedRow = aCommand.ExecuteNonQuery();
            con.Close();
            return affectedRow;
        }
    }
}