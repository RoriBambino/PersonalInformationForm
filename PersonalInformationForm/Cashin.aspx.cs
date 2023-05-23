using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Imaging; // This is where you get the PostedFile
using System.IO;

namespace PersonalInformationForm
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Custome Validator to Divisible amount to 100
        protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int amount = Convert.ToInt32(cash_money.Text);
            if (amount % 100 != 0)
            {
                Response.Write("<script>alert('Must be Divisible by 100')</script>");
            }
           
        }
        public decimal GetClientBalanceFromSession()
        {
            decimal balance = 0;
            if (Session["Client_id"] != null)
            {
                string clientId = Session["Client_id"].ToString();

                // Assuming you have a connection object named "connection" to connect to the database

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string sqlquery = "SELECT CLI_BALANCE FROM CLIENT WHERE CLI_ID = @CLI_ID";

                    using (SqlCommand command = new SqlCommand(sqlquery, conn))
                    {
                        command.Parameters.AddWithValue("@CLI_ID", clientId);

                        conn.Open();

                        // Execute the query and retrieve the balance value
                        object result = command.ExecuteScalar();

                        // Check if the result is not null and can be parsed as decimal
                        if (result != null && decimal.TryParse(result.ToString(), out balance))
                        {
                            return balance;
                        }
                    }
                }
            }

            // Return 0 if the balance couldn't be retrieved
            return balance;
        }

        protected void confirm_btn_Click(object sender, EventArgs e)
        {
            try
            {
                string type = "CASH IN";
                int amount = Convert.ToInt32(cash_money.Text);
                Random random = new Random();
                int randomNumber = random.Next(1, 200);
                DateTime cli_time = DateTime.Now;
                string get_date = cli_time.ToString("yyyy");
                string convert = get_date + randomNumber.ToString();
                int tra_number = Convert.ToInt32(convert);
                int cli_id = Convert.ToInt32(Session["Client_id"]);
              
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO [TRANSACTION] (TRA_TYPE, TRA_AMOUNT, TRA_NUMBER, CLI_ID) VALUES(@TYPE, @AMOUNT, @TRA_NUMBER, @CLI_ID)";

                                cmd.Parameters.AddWithValue("@TYPE", type);
                                cmd.Parameters.AddWithValue("@AMOUNT", amount);
                                cmd.Parameters.AddWithValue("@TRA_NUMBER", tra_number);
                                cmd.Parameters.AddWithValue("@CLI_ID", cli_id);
                                var ctr = cmd.ExecuteNonQuery();             

                    }
                    
                    using (var cmd3 = conn.CreateCommand())
                    {
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "UPDATE CLIENT SET CLI_BALANCE = @CLI_BALANCE WHERE CLI_ID = '"+ cli_id+ "'";
                        decimal balance = GetClientBalanceFromSession();
                        cmd3.Parameters.AddWithValue("@CLI_BALANCE", balance + amount);
                          
                        var ctr = cmd3.ExecuteNonQuery();
                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert('Account Successfuly Cashed In')</script>");
                            Response.Redirect("Client.aspx");
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