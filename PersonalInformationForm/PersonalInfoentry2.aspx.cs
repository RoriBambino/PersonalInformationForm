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
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {


            // For data base
            string get_lname = user_lname.Text;
            string get_fname = user_fname.Text;
            string get_midname = user_midname.Text;
            string get_username = user_name.Text;
            string get_password = password.Text;


            try
            {
                using(SqlConnection conn =  new SqlConnection(connectionString))
                {
                    conn.Open();
                    
                    string insertQuerry = "INSERT INTO Client (CLI_LNAME, CLI_FNAME, CLI_MNAME, CLI_USERNAME, CLI_PASSWORD) VALUES ( @GET_LNAME, @GET_FNAME, @GET_MIDNAME, @GET_USERNAME, @GET_PASSWORD)";
  
                    if(conn.State == System.Data.ConnectionState.Open)
                    {
                        Response.Write("<script>alert('Connected Successfully!')</script>");

                        using (SqlCommand cmd = new SqlCommand(insertQuerry, conn))
                        {
                            cmd.Parameters.AddWithValue("@GET_LNAME", get_lname);
                            cmd.Parameters.AddWithValue("@GET_FNAME", get_fname);
                            cmd.Parameters.AddWithValue("@GET_MIDNAME", get_midname);
                            cmd.Parameters.AddWithValue("@GET_USERNAME", get_username);
                            cmd.Parameters.AddWithValue("@GET_PASSWORD", get_password);
  
                            //check if already added 
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if(rowsAffected > 0)
                            {
                                Response.Write("<script>alert('Successfully Added !');</script>");
                            }
                            else
                            {
                                Response.Write("<script>alert('>Failed to Add !');</script>");
                            }
                            Server.Transfer("Signin.aspx");
                        }
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
        protected void back_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("PersonalInfoEntry.aspx");

        }
    }
}