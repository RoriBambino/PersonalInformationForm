using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Imaging;
using System.IO;

namespace PersonalInformationForm
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                int get_clid = Convert.ToInt32(Session["Client_id"]);

                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT CLI_VERIFY FROM CLIENT WHERE CLI_ID = @CLI_ID";
                        cmd.Parameters.AddWithValue("@CLI_ID", get_clid );
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            // Checks Clients Status if they are verified or not to verfy account
                            while (reader.Read())
                            {
                                string check_ver = reader["CLI_VERIFY"].ToString();

                                if (check_ver == "VERIFIED")
                                {
                                    txt_verifyacc.Visible = false;
                                    verify.Visible = false;
                                    btn_veracc.Visible = false;
                                }
                                else if (check_ver == "PENDING")
                                {
                                    txt_verifyacc.Text = "Your Account is being Verified right now!";
                                    btn_veracc.Enabled = false;
                                    btn_veracc.Visible = false;
                                }
                                else if(check_ver == "UNVERIFIED")
                                {
                                    txt_verifyacc.Visible = false;
                                    verify.Visible = true;
                                    btn_veracc.Visible = true;
                                    verify.EnableViewState = true;
                                    btn_veracc.Enabled = true;

                                    btn_editacc.Visible = true;
                                    btn_editacc.Enabled = false;     
                                }
                                else if (check_ver == "DECLINED")
                                {
                                    txt_verifyacc.Visible = false;
                                    verify.Visible = true;
                                    btn_veracc.Visible = true;
                                    verify.EnableViewState = true;
                                    btn_veracc.Enabled = true;
                                    btn_editacc.Enabled = false;
                                }

                            }
                        }
                        if (conn.State == System.Data.ConnectionState.Open)
                        {

                        }
                        else
                        {
                            Response.Write("<script>alert('Failed to Connect to Database!')</script>");
                        }
                        conn.Close();
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("Error Message : " + ex);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("user_verify.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Invalidate the current session
            Session.Abandon();

            // Redirect the user to the login page or any other desired page
            Response.Redirect("PersonalInfoEntry.aspx");
        }

        protected void btn_editacc_Click(object sender, EventArgs e)
        {
            Response.Redirect("editacc.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("acc_deactivate.aspx");
        }
    }
}