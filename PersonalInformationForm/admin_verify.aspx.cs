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
    public partial class WebForm12 : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\User\source\repos\PersonalInformationForm\PersonalInformationForm\App_Data\PersonalInfo.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT CLI_ID, CLI_LNAME, CLI_FNAME,CLI_MNAME, CLI_DOB, CLI_STREET_ADD, CLI_APP_UNIT, CLI_CITY," +
                            "CLI_MARITAL_STATUS, CLI_SEX, CLI_MOBILE_NUM, CLI_USERNAME, CLI_DATE_CREATED, CLI_DATE_UPDATED, CLI_STATUS, CLI_VERIFY, CLI_BALANCE FROM  [CLIENT]";
                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        vw_all.DataSource = dt;
                        vw_all.DataBind();
                        int ctr = vw_all.Rows.Count;
                        if (ctr == 0)
                        {
                            Response.Write("<script>alert('The table is empty')</script>");
                        }
                        else
                        {

                        }
                    }
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Execute Error: " + ex);
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;

                txt_id.Text = vw_all.Rows[rowind].Cells[1].Text;
                string lname = vw_all.Rows[rowind].Cells[2].Text;
                string fname = vw_all.Rows[rowind].Cells[3].Text;
                string mname = vw_all.Rows[rowind].Cells[4].Text;
                txt_name.Text = fname + " " + mname + " " + lname;
                txt_dob.Text = vw_all.Rows[rowind].Cells[5].Text;
                string street_add = vw_all.Rows[rowind].Cells[6].Text;
                string app_unit = vw_all.Rows[rowind].Cells[7].Text;
                string city_add = vw_all.Rows[rowind].Cells[8].Text;
                txt_address.Text = street_add + " " + app_unit + " " + city_add;
                txt_marital.Text = vw_all.Rows[rowind].Cells[9].Text;
                txt_sex.Text = vw_all.Rows[rowind].Cells[10].Text;
                txt_mnum.Text = vw_all.Rows[rowind].Cells[11].Text;
                txt_username.Text = vw_all.Rows[rowind].Cells[12].Text;
                txt_dcreated.Text = vw_all.Rows[rowind].Cells[13].Text;
                txt_dupdated.Text = vw_all.Rows[rowind].Cells[14].Text;
                txt_status.Text = vw_all.Rows[rowind].Cells[15].Text;
                txt_verification.Text = vw_all.Rows[rowind].Cells[16].Text;
                txt_balance.Text = vw_all.Rows[rowind].Cells[17].Text;
                    string get_id = vw_all.Rows[rowind].Cells[1].Text;
                    using (var conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (var cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT * FROM CLIENT WHERE CLI_ID = @GET_ID";
                            cmd.Parameters.AddWithValue("@GET_ID", get_id);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                byte[] imageData = null;
                                object imageValue = reader["CLI_ID_PIC"];

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
                            var ctr = cmd.ExecuteNonQuery();
                            if (ctr > 0)
                            {
                                Response.Write("<script>alert('Account Successfuly Updated')</script>");
                                Response.Redirect("Client.aspx");
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
            catch(Exception ex)
            {
                Response.Write("Error in Page: " + ex);
            }
        }

        protected void btn_decline_Click(object sender, EventArgs e)
        {
            try
            {
                string verify_status = "DECLINED";
                DateTime currentDate = DateTime.Now;
                string get_date = currentDate.ToShortDateString();
                string get_id = txt_id.Text;
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "UPDATE CLIENT SET CLI_DATE_UPDATED = @get_date, CLI_VERIFY = @verify_status WHERE CLI_ID = @GET_ID";

                        cmd.Parameters.AddWithValue("@GET_DATE", get_date);
                        cmd.Parameters.AddWithValue("@VERIFY_STATUS", verify_status);
                        cmd.Parameters.AddWithValue("@GET_ID", get_id);

                        var ctr = cmd.ExecuteNonQuery();
                        if (ctr > 0)
                        {
                            Response.Write("<script>alert('Account Successfuly Updated')</script>");
                            
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
            catch(Exception ex)
            {
                Response.Write("Exception Error: "+ ex);
            }
        }

        protected void btn_approve_Click(object sender, EventArgs e)
        {
            try
            {
                string verify_status = "VERIFIED";
                DateTime currentDate = DateTime.Now;
                string get_date = currentDate.ToShortDateString();
                string get_id = txt_id.Text;
                using (var conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    using (var cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "UPDATE CLIENT SET CLI_DATE_UPDATED = @get_date, CLI_VERIFY = @verify_status WHERE CLI_ID = @GET_ID";

                        cmd.Parameters.AddWithValue("@GET_DATE", get_date);
                        cmd.Parameters.AddWithValue("@VERIFY_STATUS", verify_status);
                        cmd.Parameters.AddWithValue("@GET_ID", get_id);

                        var ctr = cmd.ExecuteNonQuery();
                        if (ctr > 0)
                        {
                            Response.Write("<script>alert('Account Successfuly Updated')</script>");
                          
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
                Response.Write("Exception Error: " + ex);
            }
        }
    }
}