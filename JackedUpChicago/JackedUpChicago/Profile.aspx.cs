using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userEmail"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!Page.IsPostBack)
            {
                txtEmail.Text = Session["userEmail"].ToString();

            }

            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userEmailOriginal = Session["userEmail"].ToString();
            string userEMailNew = txtEmail.Text;
            string userPass = txtConfPass.Text;
            

            if (Page.IsPostBack)
            {
                try
                {
                    SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True; Connect TimeOut=30;");
                    SqlCommand cmd = new SqlCommand("UPDATE users SET email = '" + userEMailNew + "', pwd = '" + userPass + "' WHERE email = '" + userEmailOriginal + "'");
                    cmd.Connection = connection;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();

                    lblError.Text = "Information has been updated successfully.";
                    lblError.ForeColor = System.Drawing.Color.Green;
                    Session["userEmail"] = userEMailNew;
                    txtPass.Text = null;
                    txtConfPass = null;



                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                    lblError.ForeColor = System.Drawing.Color.Red;

                }
            }
        }
    }
}