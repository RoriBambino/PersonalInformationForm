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
    public partial class WebForm12 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

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

                        string fromDate = txt_dfrom.Text;
                        string toDate = txt_dto.Text;

                        cmd.CommandText = "SELECT * FROM  [CLIENT]";
                        cmd.Parameters.AddWithValue("@FROMDATE", fromDate);
                        cmd.Parameters.AddWithValue("@TODATE", toDate);
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
                        else
                        {

                        }
                    }
                    conn.Close();
                }
            }
            catch(Exception ex)
            {
                Response.Write("Execute Error: " + ex);
            }
        }
    }
}