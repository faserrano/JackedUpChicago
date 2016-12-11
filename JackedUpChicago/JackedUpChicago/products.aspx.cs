using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace JackedUpChicago
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"] != null)
            {
                if (Session["userType"].ToString() == "Admin")
                {
                    lblAdminProductLink.Visible = true;
                    
                }
            }
            
            
            SqlConnection connection = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename =|DataDirectory|\\Database2.mdf;Integrated Security = True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("Select * FROM products");
            cmd.Connection = connection;
           

            try
            {
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while(reader.Read())
                {
                    TableRow row = new TableRow();
                    TableCell cellImage = new TableCell();
                    TableCell cellName = new TableCell();


                    cellName.Text = reader["product_name"].ToString();           
                    string url = reader["product_image"].ToString();

                    HyperLink h1 = new HyperLink();
                    h1.NavigateUrl = "productdescription.aspx";
                    h1.Text = cellName.Text.ToString();
 
                    Image ProductImage = new Image();
                    ProductImage.ImageUrl = url;
                    ProductImage.Width = 200;
                    ProductImage.Height = 200;

                    cellImage.Controls.Add(ProductImage);
                    cellName.Controls.Add(h1);
                    row.Cells.Add(cellImage);
                    row.Cells.Add(cellName);
                   

                    Table1.Rows.Add(row);

                }
            }
            catch(Exception ex)
            {
                Label1.Text = ex.Message;
            }
        }
    }
}