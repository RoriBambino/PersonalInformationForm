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
                                string get_date = recordedDate.ToString("MM-dd-yyyy");
                                cli_create_date.Text = get_date;
                                acc_status.Text = reader["CLI_VERIFY"].ToString();
                                acc_balance.Text = reader["CLI_BALANCE"].ToString();



                            }
                            else
                            {
                                Response.Write("System Error");
                            }
                        }
                    }
                    
                    using (var cmd2 = conn.CreateCommand())
                    {
                        // Connect database
                        cmd2.CommandType = CommandType.Text;
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd2.CommandText = "SELECT SUM(TRA_AMOUNT) AS TOTAL_SUM FROM [TRANSACTION] WHERE TRA_TYPE = 'SENDER' AND CLI_ID = '" + cli_id +"'";
                        object result = cmd2.ExecuteScalar();
                        if (result != DBNull.Value)
                        {
                            // Convert the non-DBNull value to int
                            decimal sum = Convert.ToDecimal(result);
                            tot_monsent.Text = sum.ToString("0.00");
                        }
                        else
                        {

                            tot_monsent.Text = "0.00";
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