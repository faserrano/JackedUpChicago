using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE email = '" +  txtUsername.Text  + "'");
            cmd.Connection = connection;

            try
            {
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                String password = "";

                reader.Read();
                
                password = reader["pwd"].ToString().Trim();
                

                if (txtPassword.Text == password)
                {
                    Session["userFName"] = reader["first_name"];
                    Session["userLName"] = reader["last_name"];
                    Session["userEmail"] = reader["email"];
                    Session["userType"] = reader["user_type"];
                    
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    lblLoginFail.Text = "Incorrect credentials. Please try again.";
                    lblLoginFail.Visible = true;
                }
            } catch (Exception err)
            {
                lblLoginFail.Text = err.ToString();
                lblLoginFail.Visible = true;
            }
        }
    }
}