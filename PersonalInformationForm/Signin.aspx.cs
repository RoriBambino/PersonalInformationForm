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
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string get_input = input_username.Text;
            string get_pass = check_pass.Text;

         
           

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                   
                    SqlCommand cmd = new SqlCommand("SELECT CLI_USERNAME, CLI_PASSWORD FROM CLIENT WHERE CLI_USERNAME = '" + input_username.Text + "' AND CLI_PASSWORD = '" + check_pass.Text + "'", conn);


                    SqlDataReader dr = cmd.ExecuteReader();


                    if (dr.HasRows)
                    {
                        Session["LoginID"] = input_username.Text;
                        dr.Close();
                        conn.Close();
                        Label4.Text = ("Valid signin and password");
                        Response.Redirect("Client.aspx", true);
                    }
                    else
                    {
                        Label4.Text = "Invalid loginid and password";
                        
                    }

                    if (conn.State == System.Data.ConnectionState.Open)
                    {

                     
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
