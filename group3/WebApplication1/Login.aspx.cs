
using System;
using System.Web.UI;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["IsAdmin"] = null;
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string validUsername = ConfigurationManager.AppSettings["AdminUsername"];
            string validPassword = ConfigurationManager.AppSettings["AdminPassword"];

            if (txtUsername.Text == validUsername && txtPassword.Text == validPassword)
            {
                Session["IsAdmin"] = true;
                Response.Redirect("~/Admin/AdminDashboard.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid username or password.";
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}
