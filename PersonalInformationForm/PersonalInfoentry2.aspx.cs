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
            string get_username = user_name.Text;
            string get_password = password.Text;

            try
            {
                using(SqlConnection conn =  new SqlConnection(connectionString))
                {
                    conn.Open();
                    string insertQuerry = "INSERT INTO CLIENT (CLIENT.USERNAME, CLIENT.PASSWORD ) VALUES (@GET_USERNAME, @GET_PASSWORD)";

                    
                    
                    if(conn.State == System.Data.ConnectionState.Open)
                    {

                        Response.Write("<p>Connected Successfully!</p>");

                        using (SqlCommand cmd = new SqlCommand(insertQuerry, conn))
                        {
                            cmd.Parameters.AddWithValue("@GET_USERNAME", get_username);
                            cmd.Parameters.AddWithValue("@GET_PASSWORD", get_password);
                        




                            //check if already added 
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if(rowsAffected > 0)
                            {
                                Response.Write("<p>Successfully Added !</p>");
                                Response.Write("<script language=javascript>alert('Successfully Added !');</script>");
                            }
                            else
                            {
                                Response.Write("<p>Failed to Add !</p>");
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