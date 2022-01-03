using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CourtBooking
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode =
           UnobtrusiveValidationMode.None;;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
 

            string id = txtbox_uname.Text;
            string fname = txtbox_fname.Text;
            string lname = txtbox_lname.Text;
            string password = txtbox_pass.Text;
            string repassword = txtbox_repass.Text;
            string address = txtbox_address.Text;
            string email = txtbox_email.Text;

            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command

            try
            {
                con.Open();

                SqlDataAdapter cmd = new SqlDataAdapter();// Create a object of SqlDataAdapter class

                cmd.InsertCommand = new SqlCommand("INSERT INTO user_data VALUES (@id, @fname, @lname, @password, @repassword, @address, @email) ", con); //Pass the connection object to cmd

                cmd.InsertCommand.Parameters.Add("@id", SqlDbType.NText).Value = id;
                cmd.InsertCommand.Parameters.Add("@fname", SqlDbType.Text).Value = fname;
                cmd.InsertCommand.Parameters.Add("@lname", SqlDbType.Text).Value = lname;
                cmd.InsertCommand.Parameters.Add("@password", SqlDbType.Text).Value = password;
                cmd.InsertCommand.Parameters.Add("repassword", SqlDbType.Text).Value = repassword;
                cmd.InsertCommand.Parameters.Add("@address", SqlDbType.Text).Value = address;
                cmd.InsertCommand.Parameters.Add("@email", SqlDbType.Text).Value = email;


                cmd.InsertCommand.ExecuteNonQuery(); //to execute the SQL command

                string message = "Confirm Registration?";
                ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");
            }
            catch (Exception ex)
            {
                lblMsg.Text = ex.ToString();
            }
            finally
            {
                con.Close();
            }

            txtbox_uname.Text = string.Empty;
            txtbox_fname.Text = string.Empty;
            txtbox_lname.Text = string.Empty;
            txtbox_pass.Text = string.Empty;
            txtbox_repass.Text = string.Empty;
            txtbox_address.Text = string.Empty;
            txtbox_email.Text = string.Empty;
            lblMsg.Text = string.Empty;
        }

            protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtbox_uname.Text = string.Empty;
            txtbox_fname.Text = string.Empty;
            txtbox_lname.Text = string.Empty;
            txtbox_pass.Text = string.Empty;
            txtbox_repass.Text = string.Empty;
            txtbox_address.Text = string.Empty;
            txtbox_email.Text = string.Empty;
            lblMsg.Text = string.Empty;
        }
    }
}