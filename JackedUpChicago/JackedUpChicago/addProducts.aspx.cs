using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace JackedUpChicago
{
    public partial class additems : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"] != null)
            {
                if (Session["userType"].ToString() != "Admin")
                {
                    Response.Redirect("login.aspx");
                }
            }else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string productName = TextBoxName.Text;
            string productDescription = TextBoxDexcription.Text;
            string productSize = TextBoxSize.Text;
            string productPrice = TextBoxPrice.Text;
            string productURL = "";

            if(Page.IsPostBack)
            {
                Boolean fileOK = false;
                String path = Server.MapPath("~/Images/");

                if(FileUpload1.HasFile)
                {
                    String fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName).ToLower();
                    String[] allowedExtenstions = { ".gif", ".png", ".jpeg", ".jpg" };

                    for(int i = 0; i < allowedExtenstions.Length; i++)
                    {
                        if (fileExtension == allowedExtenstions[i])
                            fileOK = true;
                    }
                }
                if(fileOK)
                {
                    try
                    {
                        
                        FileUpload1.PostedFile.SaveAs(path + FileUpload1.FileName);
                        Image1.ImageUrl = "~/Images/" + FileUpload1.FileName;
                        productURL = "~/Images/" + FileUpload1.FileName;


                        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True; Connect TimeOut=30;");
                        SqlCommand cmd = new SqlCommand("INSERT INTO products (product_name, product_description, product_size, product_price, product_image) VALUES('" + productName + "', '" + productDescription + "', '" + productSize + "', " + productPrice + ", '" + productURL +"')");
                        cmd.Connection = connection;
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();
                    }
                    catch (Exception ex)
                    {
                        Label6.Text = ex.Message;
                    }
                }
                else
                {
                    Label6.Text = "File cannot be uploaded.";
                }

            }
        }
    }
}
