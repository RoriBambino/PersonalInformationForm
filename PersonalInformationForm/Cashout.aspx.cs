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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            user_withdraw.Enabled = false;
            withdraw_btn.Enabled = false;
            Button1.Enabled = false;
            Button1.Visible = false;
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
                                money_balance.Text = reader["CLI_BALANCE"].ToString();
                                int show_blnc = Convert.ToInt32(reader["CLI_BALANCE"]);
                                if(show_blnc == 0)
                                {
                                    check_balance.Enabled = true;
                                    check_balance.Text = "Not Enough balance";
                                    
                                }
                                else
                                {
                                    Button1.Visible = true;
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
                                int chck_balance = Convert.ToInt32(reader["CLI_BALANCE"]);
                                if (chck_balance >= 100)
                                {
                                    user_withdraw.Enabled = true;
                                    withdraw_btn.Enabled = true;
                                }
                                else
                                {
                                    Response.Write("<script>alert('Balance is Insufficient')</script>");
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
        private int GetNextNumberFromSession()
        {
            // Starting Number
            int nextNumber = 1000;
            if (Session["CurrentNumber"] != null)
            {
                // Number Incremented by 1
                nextNumber = (int)Session["CurrentNumber"] + 1;
            }
            Session["CurrentNumber"] = nextNumber;
            return nextNumber;
        }

        protected void withdraw_btn_Click(object sender, EventArgs e)
        {
            try
            {
                int cli_id = Convert.ToInt32(Session["Client_id"]);
                int amount = Convert.ToInt32(user_withdraw.Text);
                Random random = new Random();
                int randomNumber = random.Next(1, 200);
                string convert = GetNextNumberFromSession().ToString() + randomNumber.ToString();
                int get_number = Convert.ToInt32(convert);

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;

                        cmd.CommandText = "UPDATE CLIENT SET CLI_BALANCE = CLI_BALANCE - @WITHDRAW  WHERE CLI_ID = @CLI_ID";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                cmd.Parameters.AddWithValue("@WITHDRAW", amount);
                                cmd.Parameters.AddWithValue("CLI_ID", cli_id);
                                int ctr = cmd.ExecuteNonQuery();
                                if (ctr >= 1)
                                {
                                    Response.Write("<script>alert('The record is updated')</script>");
                                    Response.Redirect("Client.aspx");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Ooopss.. something missing')</script>");
                                }
                            }
                        }
                    }
                    using (var cmd2 = conn.CreateCommand())
                    {
                        cmd2.CommandType = CommandType.Text;

                        cmd2.CommandText = "INSERT INTO [TRANSACTION](TRA_TYPE, TRA_AMOUNT, TRA_TRA_NUMBER, CLI_ID) VALUES (@GET_TYPE, @GET_AMOUNT, @GET_NUMBER, @GET_ID) ";
                        using (SqlDataReader reader = cmd2.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                var get_type = "CASH OUT";
                                int get_amount = amount;
                                int get_id = cli_id;
                                cmd2.Parameters.AddWithValue("@GET_TYPE", get_type);
                                cmd2.Parameters.AddWithValue("@GET_AMOUNT", get_amount);
                                cmd2.Parameters.AddWithValue("@GET_NUMBER", get_number);
                                cmd2.Parameters.AddWithValue("@GET_ID", get_id);


                                int ctr = cmd2.ExecuteNonQuery();
                                if (ctr >= 1)
                                {
                                    Response.Write("<script>alert('The record is updated')</script>");
                                    Response.Redirect("Client.aspx");
                                }
                                else
                                {
                                    Response.Write("<script>alert('Ooopss.. something missing')</script>");
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
    }
}