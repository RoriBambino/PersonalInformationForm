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
using System.Globalization;

namespace PersonalInformationForm
{
    public partial class WebForm16 : System.Web.UI.Page
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
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd.CommandText = "SELECT * FROM [TRANSACTION]";
                        cmd.Parameters.AddWithValue("@cli_id", cli_id);

                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);

                        if (dt.Rows.Count == 0)
                        {
                            Response.Write("<script>alert('The table is empty')</script>");
                        }
                        else
                        {
                            vw_all.DataSource = dt;
                            vw_all.DataBind();
                        }
                    }

                    using (var cmd2 = conn.CreateCommand())
                    {
                        cmd2.CommandType = CommandType.Text;
                        int cli_id = Convert.ToInt32(Session["Client_id"]);
                        cmd2.CommandText = "SELECT * FROM [TRANSACTION] WHERE (TRA_TYPE = 'CASH IN' OR TRA_TYPE = 'CASH OUT')";
                       

                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd2);
                        sda.Fill(dt);


                        if (dt.Rows.Count == 0)
                        {
                            Response.Write("<script>alert('The table is empty')</script>");
                        }
                        else
                        {
                            vw_deposit.DataSource = dt;
                            vw_deposit.DataBind();
                        }
                    }

                    using (var cmd3 = conn.CreateCommand())
                    {
                        cmd3.CommandType = CommandType.Text;
                       
                        cmd3.CommandText = "SELECT * FROM [TRANSACTION] WHERE (TRA_TYPE = 'SENDER' OR TRA_TYPE = 'RECIEVER')";
                        
                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd3);
                        sda.Fill(dt);

                        if (dt.Rows.Count == 0)
                        {
                            Response.Write("<script>alert('The table is empty')</script>");
                        }
                        else
                        {
                            vw_sent.DataSource = dt;
                            vw_sent.DataBind();
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
        }
        protected void btn_vwall_Click(object sender, EventArgs e)
        {
            try
            {
              
                string type = DropDownList1.Text;
                string get_dfrom = txt_dfrom.Text;
                string get_dto = txt_dto.Text;
                DateTime get_currentDate = DateTime.Today;

                if (txt_dfrom.Text.Equals("") || txt_dfrom.Text.Equals(" "))
                {
                    Response.Write("<script>alert('Please Fill Date From and To')</script>");
                }
                else if (DateTime.Parse(txt_dfrom.Text) > get_currentDate || DateTime.Parse(txt_dto.Text) > get_currentDate)
                {
                    Response.Write("<script>alert('Date From and Date To must not Be future Date')</script>");

                }
                else if (DateTime.Parse(txt_dfrom.Text) >= DateTime.Parse(txt_dto.Text))
                {
                    Response.Write("<script>alert('Date From Must be lesser than Date to')</script>");

                }
                else
                {

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (var cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT * FROM [TRANSACTION] WHERE TRA_TYPE = @TYPE AND (TRA_DATE BETWEEN @GET_DFROM AND @GET_DTO) ORDER BY (TRA_DATE)";
                            cmd.Parameters.AddWithValue("@TYPE", type);
                            cmd.Parameters.AddWithValue("@GET_DFROM", get_dfrom);
                            cmd.Parameters.AddWithValue("@GET_DTO", get_dto);
                           
                            DataTable dt = new DataTable();
                            SqlDataAdapter sda = new SqlDataAdapter(cmd);
                            sda.Fill(dt);

                            if (dt.Rows.Count == 0)
                            {
                                Response.Write("<script>alert('The table is empty')</script>");
                            }
                            else
                            {
                                vw_all.DataSource = dt;
                                vw_all.DataBind();
                            }
                        }
                        conn.Close();
                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }

        }
        protected void btn_vwdeposit_Click1(object sender, EventArgs e)
        {
            try
            {
                string type = DropDownList2.Text;
                string get_dfrom = txt_dfrom2.Text;
                string get_dto = txt_dto2.Text;
                
                DateTime get_currentDate = DateTime.Today;

                if (txt_dfrom2.Text.Equals("") || txt_dfrom2.Text.Equals(" "))
                {
                    Response.Write("<script>alert('Please Fill Date From and To')</script>");
                }
                else if (DateTime.Parse(txt_dfrom2.Text) > get_currentDate || DateTime.Parse(txt_dto2.Text) > get_currentDate)
                {
                    Response.Write("<script>alert('Date From and Date To must not Be future Date')</script>");

                }
                else if (DateTime.Parse(txt_dfrom2.Text) >= DateTime.Parse(txt_dto2.Text))
                {
                    Response.Write("<script>alert('Date From Must be lesser than Date to')</script>");

                }
                else
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))

                    {
                        conn.Open();
                        using (var cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT * FROM [TRANSACTION] WHERE TRA_TYPE = @TYPE AND (TRA_DATE BETWEEN @GET_DFROM AND @GET_DTO) ORDER BY (TRA_DATE)";
                            cmd.Parameters.AddWithValue("@TYPE", type);
                            cmd.Parameters.AddWithValue("@GET_DFROM", get_dfrom);
                            cmd.Parameters.AddWithValue("@GET_DTO", get_dto);
                            
                            DataTable dt = new DataTable();
                            SqlDataAdapter sda = new SqlDataAdapter(cmd);
                            sda.Fill(dt);

                            if (dt.Rows.Count == 0)
                            {
                                Response.Write("<script>alert('The table is empty')</script>");
                            }
                            else
                            {
                                vw_deposit.DataSource = dt;
                                vw_deposit.DataBind();
                            }
                        }
                        conn.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex);
            }
        }

        protected void btn_vwsent_Click(object sender, EventArgs e)
        {
            try
            {
               
                string type = DropDownList3.Text;
                string get_dfrom = txt_dfrom3.Text;
                string get_dto = txt_dto3.Text;
                DateTime get_currentDate = DateTime.Today;

                if (txt_dfrom3.Text.Equals("") || txt_dfrom3.Text.Equals(" "))
                {
                    Response.Write("<script>alert('Please Fill Date From and To')</script>");
                }
                else if (DateTime.Parse(txt_dfrom3.Text) > get_currentDate || DateTime.Parse(txt_dto3.Text) > get_currentDate)
                {
                    Response.Write("<script>alert('Date From and Date To must not Be future Date')</script>");

                }
                else if (DateTime.Parse(txt_dfrom3.Text) >= DateTime.Parse(txt_dto3.Text))
                {
                    Response.Write("<script>alert('Date From Must be lesser than Date to')</script>");

                }
                else
                {
                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        using (var cmd = conn.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT * FROM [TRANSACTION] WHERE TRA_TYPE = @TYPE AND (TRA_DATE BETWEEN @GET_DFROM AND @GET_DTO) ORDER BY (TRA_DATE)";
                            cmd.Parameters.AddWithValue("@TYPE", type);
                            cmd.Parameters.AddWithValue("@GET_DFROM", get_dfrom);
                            cmd.Parameters.AddWithValue("@GET_DTO", get_dto);
                            
                            DataTable dt = new DataTable();
                            SqlDataAdapter sda = new SqlDataAdapter(cmd);
                            sda.Fill(dt);

                            if (dt.Rows.Count == 0)
                            {
                                Response.Write("<script>alert('The table is empty')</script>");
                            }
                            else
                            {
                                vw_sent.DataSource = dt;
                                vw_sent.DataBind();
                            }
                        }
                        conn.Close();
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