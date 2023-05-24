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
           /* try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd.CommandText = "SELECT * FROM [CLIENT], [TRANSACTION] WHERE  CLI_ID = '" + cli_id + "'";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                DataTable dt = new DataTable();
                                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                                sda.Fill(dt);
                                vw_all.DataSource = dt;
                                vw_all.DataBind();
                                int ctr = vw_all.Rows.Count;
                                if (ctr == 0)
                                {
                                    Response.Write("<script>alert('The table is empty')</script>");
                                }
                               
                            }

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }*/
        }

        protected void btn_vwall_Click(object sender, EventArgs e)
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
                        cmd.CommandText = "SELECT * FROM [CLIENT] INNER JOIN [TRANSACTION] ON [CLIENT].CLI_ID = [TRANSACTION].CLI_ID WHERE [CLIENT].CLI_ID = '" + cli_id + "'";
                      
                                DataTable dt = new DataTable();
                                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                                sda.Fill(dt);
                                vw_all.DataSource = dt;
                                vw_all.DataBind();
                                int ctr = vw_all.Rows.Count;
                                if (ctr == 0)
                                {
                                    Response.Write("<script>alert('The table is empty')</script>");
                                }                      
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
            
        }
    }
}