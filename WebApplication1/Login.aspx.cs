
using System;
using System.Web.UI;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // clear Session
            if (!IsPostBack)
            {
                Session["firstname"] = null;
                Session["lastname"] = null;
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            // validate
            if (!string.IsNullOrWhiteSpace(txtfirstname.Text) && !string.IsNullOrWhiteSpace(txtlastname.Text))
            {
                Session["firstname"] = txtfirstname.Text.Trim();
                Session["lastname"] = txtlastname.Text.Trim();
                Response.Redirect("~/Products");
            }
            else
            {
                lblMessage.Text = "Please enter both first and last name.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default");
        }
    }
}
