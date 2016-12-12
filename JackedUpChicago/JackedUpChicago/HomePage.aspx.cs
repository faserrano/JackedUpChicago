using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            HttpContext context = HttpContext.Current;
            if(context.Request.Cookies["user"] != null)
            {
                string welcome = context.Request.Cookies["user"]["username"].ToString();
                Label1.Text = "Welcome back " + welcome + "!"; 
            }
        }
    }
}