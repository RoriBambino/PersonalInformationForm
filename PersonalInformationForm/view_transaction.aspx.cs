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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd.CommandText = "SELECT * FROM CLIENT WHERE  CLI_ID = '" + cli_id + "'";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                               
                                int show_blnc = Convert.ToInt32(reader["CLI_BALANCE"]);
                                if (show_blnc == 0)
                                {
                                   

                                }
                                else
                                {
                                    

                                }
                            }

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }
    }
}