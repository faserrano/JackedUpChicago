using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JackedUpChicago
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string userFname = txtFName.Text;
            string userLName = txtLName.Text;
            string userEmail = txtEmail.Text;
            string userPwd = txtConfirmPassword.Text;
            string userType = "User";

            if (Page.IsPostBack)
            {
                    try
                    {
                        SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True; Connect TimeOut=30;");
                        SqlCommand cmd = new SqlCommand("INSERT INTO users (first_name, last_name, email, pwd, user_type) VALUES('" + userFname + "', '" + userLName + "', '" + userEmail + "', '" + userPwd + "', '" + userType + "')");
                        cmd.Connection = connection;
                        connection.Open();
                        cmd.ExecuteNonQuery();
                        connection.Close();

                        Response.Redirect("login.aspx");

                    }
                    catch (Exception ex)
                    {
                        lblError.Text = ex.Message;

                    }
            }
        }
    }
}