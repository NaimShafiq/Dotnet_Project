using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CourtBooking.MasterPage
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String val = (string)Session["id"];
            string test = Request.QueryString["val"];

            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT id, fname, lname, password, address, email FROM user_data WHERE id = @val" , con); //Pass the connection object to cmd
            cmd.Parameters.AddWithValue("@val", SqlDbType.NText).Value = val;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.Connection = con;

                string id = "";
                string fname = "";
                string lname = "";
                string password = "";
                string address = "";
                string email = "";

                //Read form db
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    id += reader["id"].ToString();
                    fname += reader["fname"].ToString();
                    lname += reader["lname"].ToString();
                    password += reader["password"].ToString();
                    address += reader["address"].ToString();
                    email += reader["email"].ToString();
                }
                con.Close();

                label_id.Text = id;
                label_fname.Text = fname;
                label_lname.Text = lname;
                label_password.Text = password;
                label_address.Text = address;
                label_email.Text = email;

            
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            
            txtbox_fname.Visible = true;
            txtbox_lname.Visible = true;
            txtbox_pass.Visible = true;
            txtbox_address.Visible = true;
            txtbox_email.Visible = true;

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            txtbox_fname.Visible = false;

            String val = (string)Session["id"];
            string test = Request.QueryString["val"];

            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE user_data SET fname=@fname, lname=@lname, password=@password, repassword=@password, address=@address, email=@email WHERE id=@val", con);
            cmd.Parameters.AddWithValue("@val", SqlDbType.NText).Value = val;
            cmd.Parameters.Add("fname", txtbox_fname.Text);
            cmd.Parameters.Add("lname", txtbox_lname.Text);
            cmd.Parameters.Add("password", txtbox_pass.Text);
            cmd.Parameters.Add("address", txtbox_address.Text);
            cmd.Parameters.Add("email", txtbox_email.Text);
            cmd.ExecuteNonQuery();

        }
        
    }
}