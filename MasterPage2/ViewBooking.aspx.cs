﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CourtBooking.MasterPage2
{
    public partial class ViewBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ValidationSettings.UnobtrusiveValidationMode =
           UnobtrusiveValidationMode.None; ;

            SqlConnection con = new SqlConnection
                     ("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");

            try
            {
                con.Open();

                SqlCommand cmd1 = new SqlCommand("SELECT * FROM bookeddetails", con);
                SqlDataReader sdr1 = cmd1.ExecuteReader();
                GridView1.DataSource = sdr1;
                GridView1.DataBind();


                con.Close();
            }

            catch (Exception ex)
            {
            }

            finally
            {
                con.Close();
            }
        }
        protected void Delete_Click(object sender, EventArgs e)
        {
            string booking_id = TextBox1.Text;

            SqlConnection con = new SqlConnection
                    ("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "DELETE FROM bookeddetails WHERE booking_id='" + booking_id + "'";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}