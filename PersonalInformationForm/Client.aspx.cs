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
                { //Make it like after user login access the db matching their account
                    conn.Open();
                  
                    using (var cmd = conn.CreateCommand())
                    {
                        // Connect database
                        cmd.CommandType = CommandType.Text;
                        string username = (string)Session["Username"];
                        string password = (string)Session["Password"];

                        cmd.CommandText = "SELECT * FROM CLIENT WHERE CLI_USERNAME = '" + username + "' AND CLI_PASSWORD ='" + password + "'";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                           if(reader.Read())
                            {
                                Session["Client_id"] = reader["CLI_ID"];
                                // Display the given information from the Database
                                string fname = reader["CLI_FNAME"].ToString();
                                string midname = reader["CLI_MNAME"].ToString();
                                string lname = reader["CLI_LNAME"].ToString();
                                user_name.Text = fname + " " + midname + " " + lname;

                                acc_num.Text = reader["CLI_ID"].ToString();
                                //Get the date from database and display only the date 
                                DateTime recordedDate = (DateTime)reader["CLI_DATE_CREATED"];
                                string get_date = recordedDate.ToString("yyyy-MM-dd");
                                cli_create_date.Text = get_date;
                                acc_status.Text = reader["CLI_VERIFY"].ToString();
                              //  acc_balance.Text = reader["TOTAL_BALANCE"].ToString();



                            }
                            else
                            {
                                Response.Write("System Error");
                            }
                        }
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