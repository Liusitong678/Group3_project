
using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bool isLoggedIn = Session["IsAdmin"] != null;
                hlLogin.Visible = !isLoggedIn;
                hlLogout.Visible = isLoggedIn;
            }
        }
        // logout
        protected void hlLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/Default.aspx");
        }
    }
}
