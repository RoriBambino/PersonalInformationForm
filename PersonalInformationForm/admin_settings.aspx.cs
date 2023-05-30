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
    public partial class WebForm17 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Button3.Visible = false;
            txt_email.Enabled = false;
            txt_pass.Enabled = false;
            try
            {
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM ADMIN";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txt_email.Text = reader["ADMIN_EMAIL"].ToString();
                                txt_pass.Text = reader["ADMIN_PASS"].ToString();

                            }
                        }

                        int count = (int)cmd.ExecuteScalar();  
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
            catch (Exception ex)
            {
                Response.Write("Error Message : " + ex);
            }
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