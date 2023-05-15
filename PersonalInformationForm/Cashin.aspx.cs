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

        protected void confirm_btn_Click(object sender, EventArgs e)
        {

           /* // For data base
            int get_lname = Convert.ToInt32(cash_money);
             


            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                   // string insertQuerry = "INSERT INTO  () VALUES ( @GET_LNAME, @GET_FNAME, @GET_MIDNAME, @GET_USERNAME, @GET_PASSWORD)";
                    


                    if (conn.State == System.Data.ConnectionState.Open)
                    {
                        Response.Write("<script>alert('Connected Successfully!')</script>");

                        using (SqlCommand cmd = new SqlCommand(insertQuerry, conn))
                        {
                           




                           

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
            }*/
        }
    }
}