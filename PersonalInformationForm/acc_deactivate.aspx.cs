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
    public partial class WebForm14 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            Label25.Visible = false;
            txt_username.Visible = false;
            Label26.Visible = false;
            txt_accnum.Visible = false;
            Label27.Visible = false;
            txt_password.Visible = false;
            btn_confirm.Visible = false;
            Button5.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
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
                       
                        Label25.Visible = true;
                        txt_username.Visible = true;
                        Label26.Visible = true;
                        txt_accnum.Visible = true;
                        Label27.Visible = true;
                        txt_password.Visible = true;
                        btn_confirm.Visible = true;
                        Button5.Visible = true;
                        cmd.CommandText = "SELECT * FROM [CLIENT] WHERE CLI_ID = '" + cli_id + "'";
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Display the given information from the Database
                                string fname = reader["CLI_FNAME"].ToString();
                                string midname = reader["CLI_MNAME"].ToString();
                                string lname = reader["CLI_LNAME"].ToString();
                                txt_username.Text = fname + " " + midname + " " + lname;
                                txt_accnum.Text = reader["CLI_ID"].ToString();
                            }
                            else
                            {
                                Response.Write("System Error");
                            }
                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }

        protected void btn_confirm_Click(object sender, EventArgs e)
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
                        string password = (string)Session["Password"];

                        string get_password = txt_password.Text;
                        string get_status = "DEACTIVATED";
                        
                        cmd.CommandText = "UPDATE [CLIENT] SET CLI_STATUS = @CLI_STATUS WHERE CLI_ID = '" + cli_id + "'";
                        
                        if(password == get_password )
                        {
                            cmd.Parameters.AddWithValue("@CLI_STATUS", get_status);
                        }
                        else
                        {
                            Response.Write("<script>alert('Password Does not match!')</script>");

                        }
                        var ctr = cmd.ExecuteNonQuery();
                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert('Account Deactivated!')</script>");
                            // Invalidate the current session
                            Session.Abandon();

                            // Redirect the user to the login page or any other desired page
                            Response.Redirect("PersonalInfoEntry.aspx");
                        }

                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
        }
    }
}