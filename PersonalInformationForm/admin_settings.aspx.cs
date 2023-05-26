using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalInformationForm
{
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Button3.Visible = false;
            txt_email.Enabled = false;
            txt_pass.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Invalidate the current session
            Session.Abandon();

            // Redirect the user to the login page or any other desired page
            Response.Redirect("PersonalInfoEntry.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button3.Visible = true;
            txt_email.Enabled = true;
            txt_pass.Enabled = true;
        }
    }
}