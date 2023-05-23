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
               
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM CLIENT";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            // Checks Clients Status if they are verified or not to verfy account
                            while (reader.Read())
                            {
                                string check_ver = reader["CLI_VERIFY"].ToString();

                                if (check_ver == "VERIFIED")
                                {
                                    verify.Visible = false;
                                    btn_veracc.Visible = false;
                                }
                                else if (check_ver == "PENDING")
                                {
                                    txt_verifyacc.Text = "Your Account is being Verified right now!";
                                    btn_veracc.Enabled = false;
                                }
                                else
                                {
                                    verify.Visible = true;
                                    btn_veracc.Visible = true;
                                    verify.EnableViewState = true;
                                    btn_veracc.Enabled = true;
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

    }
}