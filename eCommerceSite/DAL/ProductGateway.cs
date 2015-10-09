using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using eCommerceSite.Model;

namespace eCommerceSite.DAL
{
    public class ProductGateway
    {
        String connection = ConfigurationManager.ConnectionStrings["ConnectionDB"].ConnectionString;
        internal int SaveProduct(Model.Product aProduct)
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "INSERT INTO tbl_Product VALUES('" + aProduct.TypeId + "','" + aProduct.Name + "','" + aProduct.Price + "','" + aProduct.Description + "','" + aProduct.Image + "') ";

     

            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            int affectedRow = aCommand.ExecuteNonQuery();
            con.Close();
            return affectedRow;
        }

        public List<Product> GetAllProducts()
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "SELECT * FROM tbl_Product";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            SqlDataReader aReader = aCommand.ExecuteReader();
            List<Product> aProductList = new List<Product>();
            while (aReader.Read())
            {
                Product aProduct = new Product();
                aProduct.Id=int.Parse(aReader["Id"].ToString());
                aProduct.TypeId=int.Parse(aReader["TypeId"].ToString());
                aProduct.Name = aReader["Name"].ToString();
                aProduct.Price=int.Parse(aReader["Price"].ToString());
                aProduct.Description=aReader["Description"].ToString();
                aProduct.Image=aReader["Image"].ToString();
                aProductList.Add(aProduct);

            }
            aReader.Close();
            con.Close();
            return aProductList;
        }

        public Product GetProduct(int id)
        {
            SqlConnection con = new SqlConnection(connection);
            string query = "SELECT * FROM tbl_Product WHERE Id='" +id + "'";
            SqlCommand aCommand = new SqlCommand(query, con);
            con.Open();
            SqlDataReader aReader = aCommand.ExecuteReader();
            Product aProduct = null;
            while (aReader.Read())
            {
                aProduct = new Product();
                aProduct.Id = int.Parse(aReader["Id"].ToString());
                aProduct.Name = aReader["Name"].ToString();
                aProduct.Price = int.Parse(aReader["Price"].ToString());
                aProduct.Description = aReader["Description"].ToString();
                aProduct.Image = aReader["Image"].ToString();
            }
            aReader.Close();
            con.Close();
            return aProduct;
        }
    }
}