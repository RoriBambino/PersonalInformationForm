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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                using(SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string insertQuerry2 = "SELECT * FROM CLIENT";
                    SqlCommand cmd = new SqlCommand(insertQuerry2, conn);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        txt_username.Text = reader["CLI_ID"].ToString();
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
            catch(Exception ex)
            {
                Response.Write(ex);
            }
          

        }

        

        protected void submit_Click(object sender, EventArgs e)
        {


            //For Image to DB
            HttpPostedFile postedFile = picUpload.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);// command to get the file name
            string fileExt = Path.GetExtension(filename).ToLower(); //
            int filesize = postedFile.ContentLength; // get the length of the file
            byte[] pic = new byte[picUpload.PostedFile.ContentLength];
            // Get data from input stream
            picUpload.PostedFile.InputStream.Read(pic, 0, picUpload.PostedFile.ContentLength);

            // For data base
            string get_lname = lname.Text;
            string get_fname = fname.Text;
            string get_midname = middle_name.Text;
            //string get_dob = ;
            string get_streetadd = street_add.Text;
            string get_appunit = appartment.Text;
            string get_city = city.Text;

            string get_marital = DropDownList1.Text;
            string get_sex = DropDownList4.Text;
            string get_mobnumber = m_number.Text;
            string verify_status = "PENDING";

            // Get the Updated date with Status on
            DateTime currentDate = DateTime.Now;
           




            // Create or set a condition to check if the file being uploaded is an image file
            /* if (fileExt == ".jpeg" || fileExt == ".png") || fileExt == ".jpg" || fileExt == ".GIF"){
                 using (var db = new SqlConnection(connectionString))
                 {
                     jb.open();

                 }
                 using var (cmd and db ) 
             }
            */
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    string insertQuerry = "INSERT INTO CLIENT (CLI_LNAME, CLI_FNAME, CLI_MIDNAME, CLI_DOB, CLI_STREET_ADD, CLI_APP_UNIT_UNIT, CLI_CITY, CLI_MARITAL_STATUS, CLI_SEX, CLI_MOBILE_NUM, CLI_DATE_UPDATED) VALUES (@GET_LNAME, @GET_FNAME, @GET_MIDNAME, @GET_DOB, @GET_STREETADD, @GET_APPUNIT, @GET_CITY, @GET_MARITAL, @GET_SEX, @GET_MOBNUMBER, @Date)";
                   


                    if (conn.State == System.Data.ConnectionState.Open)
                    {

                        Response.Write("<p>Connected Successfully!</p>");

                        using (SqlCommand cmd = new SqlCommand(insertQuerry, conn))
                        {
                            SqlDataReader reader = cmd.ExecuteReader();
                            cmd.Parameters.AddWithValue("@GET_LNAME", get_lname);
                            cmd.Parameters.AddWithValue("@GET_FNAME", get_fname);
                            cmd.Parameters.AddWithValue("@GET_MIDNAME", get_midname);
                           // cmd.Parameters.AddWithValue("@GET_DOB", get_dob);
                            cmd.Parameters.AddWithValue("@GET_STREETADD", get_streetadd);
                            cmd.Parameters.AddWithValue("@GET_APPUNIT", get_appunit);
                            cmd.Parameters.AddWithValue("@GET_CITY", get_city);
                            cmd.Parameters.AddWithValue("@GET_MARITAL", get_marital);
                            cmd.Parameters.AddWithValue("@GET_SEX", get_sex);
                            cmd.Parameters.AddWithValue("@GET_MOBNUMBER", get_mobnumber);
                            cmd.Parameters.AddWithValue("@DATE", currentDate);
                            while (reader.Read())
                            {
                                cmd.CommandType = CommandType.Text;
                                string user_id = reader["CLI_ID"].ToString();
                                cmd.CommandText = "UPDATE CLIENT SET CLI_VERIFY = @verify_status WHERE CLI_ID = '" + user_id + "'";
                                cmd.Parameters.AddWithValue("@VERIFY_STATUS", verify_status);

                            }
                      
                            //check if already added 
                            int rowsAffected = cmd.ExecuteNonQuery();
                            if (rowsAffected > 0)
                            {
                                
                                Response.Write("<script language=javascript>alert('Successfully Updated!');</script>");
                                Response.Redirect("Account.aspx");
                            }
                            else
                            {
                                Response.Write("<script language=javascript>alert('Failed to Update!');</script>");
                            }     
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
    }
}