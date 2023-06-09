﻿using System;
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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            user_withdraw.Enabled = false;
            withdraw_btn.Enabled = false;
            Button1.Enabled = false;
           
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd.CommandText = "SELECT CLI_BALANCE FROM CLIENT WHERE CLI_ID = '" + cli_id + "'";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                money_balance.Text = reader["CLI_BALANCE"].ToString();
                                int show_blnc = Convert.ToInt32(reader["CLI_BALANCE"]);
                                if(show_blnc == 0)
                                {
                                    check_balance.Enabled = true;
                                    check_balance.Text = "Not Enough balance";
                                    
                                }
                                else
                                {
                                    Button1.Enabled = true;

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
        // Custome Validator to Divisible amount to 100
        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int amount = Convert.ToInt32(user_withdraw.Text);
            if (amount % 100 != 0)
            {
                Response.Write("<script>alert('Must be Divisible by 100')</script>");
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int cli_id = Convert.ToInt32(Session["Client_id"]);

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM CLIENT WHERE  CLI_ID = '" + cli_id + "'";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                int chck_balance = Convert.ToInt32(reader["CLI_BALANCE"]);
                                if (chck_balance >= 100)
                                {
                                    user_withdraw.Enabled = true;
                                    withdraw_btn.Enabled = true;
                                }
                                else
                                {
                                    check_balance.Text = "Insufficient Balance To send Money";
                                    Response.Redirect("Cashin.aspx");
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

        protected void withdraw_btn_Click(object sender, EventArgs e)
        {
            try
            {
                int cli_id = Convert.ToInt32(Session["Client_id"]);
                string type = "CASH OUT";
                int amount = Convert.ToInt32(user_withdraw.Text);
                // Transaction Number is a combination between Date and an random number 
                Random random = new Random();
                int randomNumber = random.Next(1, 200);
                DateTime cli_time = DateTime.Now;
                string get_date = cli_time.ToString("yyyy");
                string convert = get_date + randomNumber.ToString();
                // Transaction Number
                int tra_number = Convert.ToInt32(convert);

                using (SqlConnection conn = new SqlConnection(connectionString))
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
                    
                    using (var cmd = conn.CreateCommand())
                    {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "UPDATE CLIENT SET CLI_BALANCE = @CLI_BALANCE WHERE CLI_ID = '"+ cli_id +"'";
                            decimal balance = GetClientBalanceFromSession();
                            cmd.Parameters.AddWithValue("@CLI_BALANCE", balance - amount);

                            var ctr = cmd.ExecuteNonQuery();
                            if (ctr >= 1)
                            {
                                Response.Write("<script>alert('Account Successfuly Cashed Outed')</script>");
                                Response.Redirect("Client.aspx");
                            }

                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
        }
            
    }
}