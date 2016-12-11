using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JackedUpChicago
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["userType"] == null)
            {
                
                panelAnonBar.Visible = true;
                panelUserBar.Visible = false;
            }
            else
            {
                panelAnonBar.Visible = false;
                panelUserBar.Visible = true;
            }
            
            
            
        }

        

    }

    
}