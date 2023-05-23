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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

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
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                int cli_id = Convert.ToInt32(Session["Client_id"]);
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM CLIENT CLI_ID = @ACC_NUM";
                        int search_id = Convert.ToInt32(txt_id);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                int get_id = Convert.ToInt32(reader["CLI_ID"]);
                                if (search_id ==  get_id)
                                {
                                    cmd.Parameters.AddWithValue("@ACC_NUM", search_id);
                                }
                                else
                                {
                                    Response.Write("<script>alert('Account Number Cannot Be Found')</script>");
                                }
                            }
                        }
                        var ctr = cmd.ExecuteNonQuery();

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
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int amount = Convert.ToInt32(txt_amount.Text);
            if (amount % 100 != 0)
            {
                Response.Write("<script>alert('Must be Divisible by 100')</script>");
            }

        }
    }
}