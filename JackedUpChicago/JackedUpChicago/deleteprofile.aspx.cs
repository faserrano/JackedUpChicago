using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class deleteprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string userEMail = TextBoxDelEmail.Text;
            if (Page.IsPostBack)
            {
                try
                {
                    SqlConnection connection = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True; Connect TimeOut=30;");
                    SqlCommand cmd = new SqlCommand("DELETE users WHERE email = '" + userEMail + "'");
                    cmd.Connection = connection;
                    connection.Open();
                    cmd.ExecuteNonQuery();
                    connection.Close();

                    lblError.Text = "Information has been updated successfully.";
                    lblError.ForeColor = System.Drawing.Color.Green;

                }
                catch (Exception ex)
                {
                    lblError.Text = ex.Message;
                    lblError.ForeColor = System.Drawing.Color.Red;

                }
            }
            Session.Clear();
            Response.Redirect("HomePage.aspx");
        }
    }
}