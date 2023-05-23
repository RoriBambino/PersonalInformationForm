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
        //Auto incremented number for Transaction Number
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
        // Custome Validator to Divisible amount to 100
        protected void customValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int amount = Convert.ToInt32(cash_money.Text);
            if (amount % 100 != 0)
            {
                Response.Write("<script>alert('Must be Divisible by 100')</script>");
            }
           
        }

        protected void confirm_btn_Click(object sender, EventArgs e)
        {
            try
            {
                string get_type = "CASH IN";
                int get_amount = Convert.ToInt32(cash_money.Text);
                Random random = new Random();
                int randomNumber = random.Next(1, 200);
                string convert = GetNextNumberFromSession().ToString() + randomNumber.ToString();
                int get_tra_number = Convert.ToInt32(convert);
                int cli_id = Convert.ToInt32(Session["Client_id"]);
              
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO [TRANSACTION] (TRA_TYPE, TRA_AMOUNT, TRA_NUMBER, CLI_ID) VALUES(@GET_TYPE, @GET_AMOUNT, @GET_TRA_NUMBER, @CLI_ID)";
                        
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            { 
                                cmd.Parameters.AddWithValue("@GET_TYPE", get_type);
                                cmd.Parameters.AddWithValue("@GET_AMOUNT", get_amount);
                                cmd.Parameters.AddWithValue("@GET_TRA_NUMBER", get_tra_number);
                                cmd.Parameters.AddWithValue("@CLI_ID", cli_id);
                                var ctr = cmd.ExecuteNonQuery();
                                if (ctr >= 1)
                                {
                                    Response.Write("<script>alert('Account Successfuly In Transaction')</script>");
                                }
                            }
                        }

                    }

                    using (var cmd3 = conn.CreateCommand())
                    {
                        cmd3.CommandType = CommandType.Text;
                        cmd3.CommandText = "UPDATE CLIENT SET CLI_BALANCE = @CLI_BALANCE WHERE CLI_ID = @CLI_ID";
                        using (SqlDataReader reader = cmd3.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                int balance = Convert.ToInt32(reader["CLI_BALANCE"]);
                                cmd3.Parameters.AddWithValue("@CLI_BALANCE", balance + get_amount);
                                cmd3.Parameters.AddWithValue("CLI_ID", cli_id);
                                var ctr = cmd3.ExecuteNonQuery();
                                if (ctr >= 1)
                                {
                                    Response.Write("<script>alert('Account Successfuly Cashed In')</script>");
                                    Response.Redirect("Client.aspx");
                                }
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