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
    public partial class WebForm11 : System.Web.UI.Page
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
                        cmd.CommandText = "SELECT COUNT(CLI_VERIFY) FROM CLIENT WHERE CLI_VERIFY =  @CLI_VERIFY";
                        string get_verify = "PENDING";
                        cmd.Parameters.AddWithValue("@CLI_VERIFY", get_verify);

                        int count = (int)cmd.ExecuteScalar();

                        txt_nover.Text = count.ToString();
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
    }
}