using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Imaging; // This is where you get the PostedFile
using System.IO;

namespace PersonalInformationForm
{

    public partial class WebForm4 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

            // For data base
           

           try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    string insertQuerry = "SELECT CLI_ID, CLI_LNAME, CLI_FNAME, CLI_MNAME, CLI_DATE_CREATED FROM CLIENT";

                    SqlCommand cmd = new SqlCommand(insertQuerry, conn);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read()){

                        user_name.Text = reader["CLI_FNAME"].ToString() + reader["CLI_MNAME"].ToString() + reader["CLI_LNAME"].ToString();
                        acc_num.Text = reader["CLI_ID"].ToString();
                        cli_create_date.Text = reader["CLI_DATE_CREATED"].ToString();

                    }


                    if (conn.State == System.Data.ConnectionState.Open)
                    {
                        Response.Write("<script>alert('Connected Successfully!')</script>");
                    }
                    else
                    {
                        Response.Write("<p>Failed to Connect!</p>");
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error Message : " + ex);
            }

        }
    }
}