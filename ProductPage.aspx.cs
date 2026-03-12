using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ChoosMart_App
{
    public partial class ProductPage : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["ChoosMartDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            }
        }

        protected void imgBtnSnacks_Click(object sender, ImageClickEventArgs e)
        {
            LoadProductsByCategory("Snacks");
        }

        protected void imgBtnDrinks_Click(object sender, ImageClickEventArgs e)
        {
            LoadProductsByCategory("Drinks");
        }

        protected void imgBtnDesserts_Click(object sender, ImageClickEventArgs e)
        {
            LoadProductsByCategory("Desserts");
        }

        protected void imgBtnPicks_Click(object sender, ImageClickEventArgs e)
        {
            LoadProductsByCategory("Picks");
        }

        private void LoadProductsByCategory(string categoryName)
        {
            using (SqlConnection conn = new SqlConnection(connString))
            {
                string query = "SELECT ProductID, ProductName, Price, StockQuantity FROM tbl_Products INNER JOIN tbl_Categories ON tbl_Products.CategoryID = tbl_Categories.CategoryID WHERE tbl_Categories.CategoryName = @CategoryName";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@CategoryName", categoryName);

                    try
                    {
                        conn.Open();
                        rptProducts.DataSource = cmd.ExecuteReader();
                        rptProducts.DataBind();
                    }
                    catch (Exception ex)
                    {
                        throw;
                    }
                }
            }
        }
    }
}