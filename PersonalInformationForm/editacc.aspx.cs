﻿using System;
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
    public partial class WebForm13 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
          
            try
            {
               

                using (SqlConnection conn = new SqlConnection(connectionString))
                { //Make it like after user login access the db matching their account
                    conn.Open();

                    string username = (string)Session["Username"];
                    string password = (string)Session["Password"];
                    string clientId = Session["Client_id"].ToString();

                    txt_username.Text = username.ToString();

                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM CLIENT WHERE CLI_ID = @GET_ID";
                        cmd.Parameters.AddWithValue("@GET_ID", clientId);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                byte[] imageData = null;
                                object imageValue = reader["CLI_ID_PIC"];
                                fname.Text = reader["CLI_FNAME"].ToString();
                                middle_name.Text = reader["CLI_MNAME"].ToString();
                                lname.Text = reader["CLI_LNAME"].ToString();
                                txtDOB.Text = reader["CLI_DOB"].ToString();
                                appartment.Text = reader["CLI_APP_UNIT"].ToString();
                                street_add.Text = reader["CLI_STREET_ADD"].ToString();
                                city.Text = reader["CLI_CITY"].ToString();
                                m_number.Text = reader["CLI_MOBILE_NUM"].ToString();


                                if (imageValue != DBNull.Value)
                                {
                                    imageData = (byte[])reader["CLI_ID_PIC"];
                                }
                                if (imageData == null || imageData.Length == 0)
                                {
                                    // Set a default image or placeholder
                                    vw_image.ImageUrl = "Image/View Transaction.png";
                                }
                                else
                                {

                                    string str = Convert.ToBase64String(imageData);
                                    vw_image.ImageUrl = "data:image/png;base64," + str;
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

        protected void btn_vwimg_Click(object sender, EventArgs e)
        {

            //For Image to DB
            HttpPostedFile postedFile = picUpload.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);// command to get the file name
            string fileExt = Path.GetExtension(filename).ToLower(); //
            int filesize = postedFile.ContentLength; // get the length of the file

            // Get Img by using fieled name from the Table
            byte[] pic = new byte[picUpload.PostedFile.ContentLength];
            // Get data from input stream
            picUpload.PostedFile.InputStream.Read(pic, 0, picUpload.PostedFile.ContentLength);
            // Turn the image to String
            string str = Convert.ToBase64String(pic);
            // Prefix the meme type that include the data in the URL
            vw_image.Visible = true;

            vw_image.ImageUrl = "data:image/jpeg;base64," + str;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {

                //For Image to DB
                HttpPostedFile postedFile = picUpload.PostedFile;
                string filename = Path.GetFileName(postedFile.FileName);// command to get the file name
                string fileExt = Path.GetExtension(filename).ToLower(); //
                int filesize = postedFile.ContentLength; // get the length of the file
                byte[] pic = new byte[picUpload.PostedFile.ContentLength];
                // Get data from input stream
                picUpload.PostedFile.InputStream.Read(pic, 0, picUpload.PostedFile.ContentLength);

                // Session
                string clientId = Session["Client_id"].ToString();
                string password = (string)Session["Password"];
                // For data base
                string get_lname = lname.Text;
                string get_fname = fname.Text;
                string get_midname = middle_name.Text;
                string get_dob = txtDOB.Text;
                string get_streetadd = street_add.Text;
                string get_appunit = appartment.Text;
                string get_city = city.Text;
                string get_marital = DropDownList1.Text;
                string get_sex = DropDownList4.Text;
                string get_mobnumber = m_number.Text;
                
                DateTime currentDate = DateTime.Now;
                string get_date = currentDate.ToShortDateString();
                string get_npass = txt_nwpass.Text;
                string get_cnpass = txt_confirmpass.Text;

                // Create or set a condition to check if the file being uploaded is an image file

                if (fileExt == ".jpeg" || fileExt == ".png" || fileExt == ".jpg")
                {
                    using (var conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (var cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "UPDATE CLIENT SET CLI_LNAME = @get_lname, CLI_FNAME = @get_fname, CLI_MNAME = @get_midname, CLI_DOB = @get_dob, CLI_STREET_ADD = @get_streetadd , " +
                                    "CLI_APP_UNIT = @get_appunit, CLI_CITY = @get_city, CLI_MARITAL_STATUS = @get_marital, CLI_SEX = @get_sex, CLI_MOBILE_NUM = @get_mobnumber ,CLI_PASSWORD = @get_password, CLI_ID_PIC = @pic, CLI_DATE_UPDATED = @get_date WHERE CLI_ID = '" + clientId + "'";

                            cmd.Parameters.AddWithValue("GET_LNAME", get_lname);
                            cmd.Parameters.AddWithValue("GET_FNAME", get_fname);
                            cmd.Parameters.AddWithValue("GET_MIDNAME", get_midname);
                            cmd.Parameters.AddWithValue("@GET_DOB", get_dob);
                            cmd.Parameters.AddWithValue("@GET_STREETADD", get_streetadd);
                            cmd.Parameters.AddWithValue("@GET_APPUNIT", get_appunit);
                            cmd.Parameters.AddWithValue("@GET_CITY", get_city);
                            cmd.Parameters.AddWithValue("@GET_MARITAL", get_marital);
                            cmd.Parameters.AddWithValue("@GET_SEX", get_sex);
                            cmd.Parameters.AddWithValue("@GET_MOBNUMBER", get_mobnumber);
                            if (password != get_npass)
                            {
                                cmd.Parameters.AddWithValue("@GET_PASSWORD", get_npass);
                            }
                            else
                            {
                                txt_notpass.Text = "* Password Already Exist";
                            }
                            cmd.Parameters.AddWithValue("@PIC", pic);
                            cmd.Parameters.AddWithValue("@GET_DATE", get_date);
                            

                            var ctr = cmd.ExecuteNonQuery();
                            if (ctr > 0)
                            {
                                Response.Write("<script>alert('Account Successfuly Updated')</script>");
                                Response.Redirect("Account.aspx");
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
            }
            catch (Exception ex)
            {
                Response.Write("Error Message : " + ex);
            }
        }
    }
}