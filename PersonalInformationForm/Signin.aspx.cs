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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string get_input = input_username.Text;
            string get_pass = check_pass.Text;
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        // Connect database
                        cmd.CommandType = CommandType.Text;

                        cmd.CommandText = "SELECT * FROM CLIENT, ADMIN WHERE CLI_USERNAME = '" + input_username.Text + "' AND CLI_PASSWORD = '" + check_pass.Text + "' OR ADMIN_EMAIL ='" + input_username.Text + "' AND ADMIN_PASS = '" + check_pass.Text + "' ";
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                           
                                Session["LoginID"] = input_username.Text;

                                if (dr.Read())
                                {
                                    string user = dr["CLI_USERNAME"].ToString();
                                    string admin = dr["ADMIN_EMAIL"].ToString();
                                    DateTime currentDate = DateTime.Today;
                                    string get_date = currentDate.ToString("MM-dd-yyyy");
                                    string get_status = dr["CLI_STATUS"].ToString();
                                    if (input_username.Text == user && get_status != "SUSPENDED")
                                    {
                                        Session["Username"] = get_input;
                                        Session["Password"] = get_pass;
                                        Session["Client_id"] = dr["CLI_ID"];
                                        Session["Date"] = get_date;

                                    }
                                    else if (get_status == "SUSPENDED")
                                    {
                                    Response.Write("<script>alert('This Account Is Suspended!')</script>");
                                    }
                                    else if (input_username.Text == admin)
                                    {
                                        Response.Redirect("Admin.aspx", true);
                                    }
                                }
                                else
                                {
                                Label4.Text = "Invalid loginid and password";

                                }
                        }

                        using (var cmd3 = conn.CreateCommand())
                        {
                            cmd3.CommandType = CommandType.Text;
                            int cli_id = Convert.ToInt32(Session["Client_id"]);

                            string get_status = "ACTIVE";

                            cmd.CommandText = "UPDATE [CLIENT] SET CLI_STATUS = @CLI_STATUS WHERE CLI_ID = '" + cli_id + "'";
                            cmd.Parameters.AddWithValue("@CLI_STATUS", get_status);
                            var ctr = cmd.ExecuteNonQuery();
                            if (ctr >= 1)
                            {
                                Response.Write("<script>alert('Updated!')</script>");
                                // Invalidate the current session


                                // Redirect the user to the login page or any other desired page
                                Response.Redirect("Client.aspx");
                            }


                        }

                        

                        conn.Close();
                        Label4.Text = ("Valid signin and password");
                       
                    }
                   

                    if (conn.State == System.Data.ConnectionState.Open)
                    {

                     
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
