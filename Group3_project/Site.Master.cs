using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group3_project
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool isLoggedIn = Session["firstname"] != null;

                hlLogin.Visible = !isLoggedIn;
                hlLogout.Visible = isLoggedIn;
            }
        }
        protected void hlLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();  // clear session
            Response.Redirect("~/Default");  // back to home page
        }

    }
}