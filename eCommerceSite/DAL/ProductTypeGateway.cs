using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using eCommerceSite.Model;

namespace eCommerceSite.DAL
{
    public class ProductTypeGateway
    {
        String connection = ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString;

        internal int SaveProductType(Model.ProductType aProductType)
        {

            SqlConnection con = new SqlConnection(connection);
            string query = "INSERT INTO tbl_ProductType VALUES('" + aProductType.Name + "') ";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            int affectedRow = aCommand.ExecuteNonQuery();


            con.Close();
            return affectedRow;



          
        }

        internal ProductType CheckProductType(ProductType aProductType)
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "SELECT * FROM tbl_ProductType WHERE Name='"+aProductType.Name+"'";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            SqlDataReader aReader = aCommand.ExecuteReader();
            ProductType aProductType2 = null;
            while (aReader.Read())
            {
                aProductType2 = new ProductType();
                aProductType2.Name = aReader["Name"].ToString();
            }
            aReader.Close();
            con.Close();
            return aProductType2;
        }

        internal List<ProductType> GetAllProductType()
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "SELECT * FROM tbl_ProductType";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            SqlDataReader aReader = aCommand.ExecuteReader();
            List<ProductType> aProductTypeList = new List<ProductType>();
          
            while (aReader.Read())
            {
                ProductType aProductType2 = new ProductType();
                aProductType2.Id = int.Parse(aReader["Id"].ToString());
                aProductType2.Name = aReader["Name"].ToString();
                aProductTypeList.Add(aProductType2);
            }
            aReader.Close();
            con.Close();
            return aProductTypeList;
        }
    }
}