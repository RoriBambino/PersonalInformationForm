using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PersonalInformationForm
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Enable
            txt_amount.Enabled = false;
            txt_password.Enabled = false;
            btnsend.Enabled = false;


            // Visibility i set lang og true after search account number = acc_id mo true
            Label_sendmoney.Visible = false;
            txt_amount.Visible = false;
            Label_amount.Visible = false;
            Label_amount2.Visible = false;
            txt_password.Visible = false;
            Label_pass.Visible = false;
            btnsend.Visible = false;


        }

       
    }
}