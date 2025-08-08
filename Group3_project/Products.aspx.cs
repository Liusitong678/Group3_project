using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group3_project
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //when login
            if (Session["firstname"] == null || Session["lastname"] == null)
            {
                // back to login page
                //string script = "alert('Please login first.'); window.location='Login.aspx';";
                string script = "alert('Please login first.'); window.location='Login';";

                ClientScript.RegisterStartupScript(this.GetType(), "loginAlert", script, true);
                return;
            }
            else
            {
                string firstname = Session["firstname"].ToString();
                string lastname = Session["lastname"].ToString();
                lblname.Text = "Welcome back " + firstname + " " + lastname;
            }

        }
    }
}