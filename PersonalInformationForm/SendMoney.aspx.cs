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
            try
            {
                // Variables
              
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (var cmd = conn.CreateCommand())
                    {
                        string clientId = Session["Client_id"].ToString();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT CLI_VERIFY FROM CLIENT WHERE CLI_ID = @CLI_ID";
                        cmd.Parameters.AddWithValue("@CLI_ID", clientId);

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        { 
                            string get_verify = reader["CLI_VERIFY"].ToString();
                            if (get_verify == "UNVERIFIED" || get_verify == "DECLINED")
                            {
                                Response.Write("<script>alert('Your Account is Unverified')</script>");
                                Response.Redirect("Account.aspx");
                            }
                            else 
                            {
                                Response.Write("<script>alert('Connected')</script>");
                            }
                        }
                        else
                        {
                            Response.Write("<script>alert('Account Number Cannot Be Found')</script>");
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

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            try
            {
                // Variables
                int get_clid= Convert.ToInt32(Session["Client_id"]);
                int search_id = Convert.ToInt32(txt_id.Text);


                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                   
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM CLIENT WHERE CLI_ID = @CLI_ID";
                        
                        cmd.Parameters.AddWithValue("@CLI_ID", search_id);
                        SqlDataReader reader = cmd.ExecuteReader();   
                         
                            if (reader.Read())
                            {
                            string chk_status = "DEACTIVATED";
                            string get_status = reader["CLI_STATUS"].ToString();
                            if (get_status == chk_status)
                            {
                                txt_status.Text = "This Account Is Unavailable At the Moment!";
                                
                            }
                            else
                            {
                                 txt_accnum.Text = reader["CLI_ID"].ToString();
                            string lname = reader["CLI_LNAME"].ToString();
                            string fnmae = reader["CLI_FNAME"].ToString();
                            string mname = reader["CLI_MNAME"].ToString();
                            txt_recname.Text = fnmae + " " + mname + " " + lname;
                            // Enable
                            txt_amount.Enabled = true;
                            txt_password.Enabled = true;
                            btnsend.Enabled = true;


                            // Visibility i set lang og true after search account number = acc_id mo true
                            Label_sendmoney.Visible = true;
                            txt_amount.Visible = true;
                            Label_amount.Visible = true;
                            Label_amount2.Visible = true;
                            txt_password.Visible = true;
                            Label_pass.Visible = true;
                            btnsend.Visible = true;
                            }
                           
                            }
                            else
                            {
                                Response.Write("<script>alert('Account Number Cannot Be Found')</script>");
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

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            int amount = Convert.ToInt32(txt_amount.Text);
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
        public decimal GetClientBalanceFromSession2()
        {
            decimal balance = 0;
            int get_amount = Convert.ToInt32(txt_amount.Text);
            int get_id = Convert.ToInt32(txt_id.Text);


            // Assuming you have a connection object named "connection" to connect to the database

            using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    string sqlquery = "SELECT CLI_BALANCE FROM CLIENT WHERE CLI_ID = @CLI_ID";

                    using (SqlCommand command = new SqlCommand(sqlquery, conn))
                    {
                        command.Parameters.AddWithValue("@CLI_ID", get_id);

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
            
            // Return 0 if the balance couldn't be retrieved
            return balance;
        }

        protected void btnsend_Click1(object sender, EventArgs e)
        {
            try { 
            // SESSION 
            int cli_id = Convert.ToInt32(Session["Client_id"]);
            string password = (string)Session["Password"];
            // Amount
            int get_amount = Convert.ToInt32(txt_amount.Text);
            string type = "RECIEVER";
            // Transaction number
            Random random = new Random();
            int randomNumber = random.Next(1, 200);
            DateTime cli_time = DateTime.Now;
            string get_date = cli_time.ToString("yyyy");
            string convert = get_date + randomNumber.ToString();
            int tra_number = Convert.ToInt32(convert);
            // ID NUM
            int get_id = Convert.ToInt32(txt_id.Text);
            string get_pass = txt_password.ToString();

            using (var conn = new SqlConnection(connectionString))
            {
                conn.Open();
                // Checks Balance
                using (var cmd = conn.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT * FROM [CLIENT] WHERE CLI_PASSWORD = '" + password + "' AND CLI_ID = '" + cli_id + "'";

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (get_pass != password)
                            {
                                Response.Write("<script>alert('Password Not Matched')</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('Password Matched')</script>");
                            }
                        }
                }
                // Insert Receiver Data
                using (var cmd2 = conn.CreateCommand())
                {
                    cmd2.CommandType = CommandType.Text;
                    cmd2.CommandText = "INSERT INTO [TRANSACTION] (TRA_TYPE, TRA_AMOUNT, TRA_NUMBER, CLI_ID) VALUES(@TYPE, @GET_AMOUNT, @TRA_NUMBER, @GET_ID)";

                    cmd2.Parameters.AddWithValue("@TYPE", type);
                    cmd2.Parameters.AddWithValue("@GET_AMOUNT", get_amount);
                    cmd2.Parameters.AddWithValue("@TRA_NUMBER", tra_number);
                    cmd2.Parameters.AddWithValue("@GET_ID", get_id);
                    var ctr = cmd2.ExecuteNonQuery();
                        if (ctr >= 1)
                    {
                        Response.Write("<script>alert('Accessed')</script>");
                       
                    }
                }
                // Update Reciever Status
                using (var cmd4 = conn.CreateCommand())
                {
                    cmd4.CommandType = CommandType.Text;
                    cmd4.CommandText = "UPDATE CLIENT SET CLI_BALANCE = @CLI_BALANCE WHERE CLI_ID = '" + get_id + "'";

                    decimal balance = GetClientBalanceFromSession2();
                    if (balance >= 100 && get_amount <= balance)
                    {
                        cmd4.Parameters.AddWithValue("@CLI_BALANCE", balance + get_amount);
                    }
                     else
                     {
                      txt_amount.Text = "Insufficient Balance To send Money";
                      Response.Redirect("Cashin.aspx");
                     }    
                    var ctr = cmd4.ExecuteNonQuery();
                }
                // Update sender Status
                using (var cmd3 = conn.CreateCommand())
                {
                    cmd3.CommandType = CommandType.Text;
                    cmd3.CommandText = "UPDATE CLIENT SET CLI_BALANCE = @CLI_BALANCE WHERE CLI_ID = '" + cli_id + "'";
                    decimal balance = GetClientBalanceFromSession();  
                      if (balance >= 100 && get_amount <= balance)
                      {
                        cmd3.Parameters.AddWithValue("@CLI_BALANCE", balance - get_amount);
                      }
                     else 
                    {
                      txt_amount.Text = "Insufficient Balance To send Money";
                       Response.Redirect("Cashin.aspx");
                    }
                    var ctr = cmd3.ExecuteNonQuery();
                }
                // Insert Sender Data
                using (var cmd5 = conn.CreateCommand())
                {
                    cmd5.CommandType = CommandType.Text;
                    cmd5.CommandText = "INSERT INTO [TRANSACTION] (TRA_TYPE, TRA_AMOUNT, TRA_NUMBER, CLI_ID) VALUES(@TYPE, @GET_AMOUNT, @TRA_NUMBER, @CLI_ID)";
                    type = "SENDER";
                    cmd5.Parameters.AddWithValue("@TYPE", type);
                    cmd5.Parameters.AddWithValue("@GET_AMOUNT", get_amount);
                    cmd5.Parameters.AddWithValue("@TRA_NUMBER", tra_number);
                    cmd5.Parameters.AddWithValue("@CLI_ID", cli_id);
                    var ctr = cmd5.ExecuteNonQuery();
                    if (ctr >= 1)
                    {
                        Response.Write("<script>alert('Money Successfuly Sent')</script>");
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
                Response.Write("Error Message: " + ex); 
            }
        }
    }
}