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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode =
                       UnobtrusiveValidationMode.None;

            string message = "Do you want to submit?";
            ClientScript.RegisterOnSubmitStatement(this.GetType(), "confirm", "return confirm('" + message + "');");
        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string name = txtbox_name.Text;
            string email = txtbox_email.Text;
            string msg = txtbox_msg.Text;



            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command

            try
            {
                con.Open();

                SqlDataAdapter cmd = new SqlDataAdapter();// Create a object of SqlDataAdapter class

                cmd.InsertCommand = new SqlCommand("INSERT INTO contactUs VALUES (@name, @email, @message) ", con); //Pass the connection object to cmd

                
                cmd.InsertCommand.Parameters.Add("@name", SqlDbType.Text).Value = name;
                cmd.InsertCommand.Parameters.Add("@email", SqlDbType.Text).Value = email;
                cmd.InsertCommand.Parameters.Add("@message", SqlDbType.Text).Value = msg;

                cmd.InsertCommand.ExecuteNonQuery(); //to execute the SQL command
                lblStatus1.Text = "Thank you for getting in touch!";
            }
            catch (Exception ex)
            {
                lblStatus1.Text = ex.ToString();
            }
            finally
            {
                con.Close();
            }

            txtbox_name.Text = string.Empty;
            txtbox_email.Text = string.Empty;
            txtbox_msg.Text = string.Empty;
            lblStatus1.Text = string.Empty;
        }

        protected void ButtonCancel_Click(object sender, EventArgs e)
        {
            
            txtbox_name.Text = string.Empty;
            txtbox_email.Text = string.Empty;
            txtbox_msg.Text = string.Empty;
            lblStatus1.Text = string.Empty;
            // so on youe all controls
        }
    }
}