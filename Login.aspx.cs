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
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            string id = txtbox_uname.Text;
            string password = txtbox_pass.Text;

            SqlConnection con = new SqlConnection
                ("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            try
            {
                con.Open();

                string query = "SELECT * FROM user_data WHERE id='" + id + "' AND password='" + password + "'";

                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sdr = cmd.ExecuteReader();
                if ((id == "admin") && (password == "admin"))
                {
                    Response.Redirect("~/MasterPage2/ManageUser.aspx");
                }

                else if (sdr.Read())
                {
                    Session["id"] = txtbox_uname.Text;
                    Response.Redirect("~/MasterPage/HomePage.aspx");
                }
                else
                {
                    lblStatus.Text = "Login Unsuccessful! Invalid Username or Password.";
                }
            }
            catch (Exception ex)
            {
                lblStatus.Text = ex.ToString();
            }
            finally
            {
                con.Close();
            }
        }
    }
}
