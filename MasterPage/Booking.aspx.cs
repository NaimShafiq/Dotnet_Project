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
    public partial class Booking : System.Web.UI.Page
    {
        static Int32 booking_id;
        static String date_start;
        static String date_end;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now.Date;
            }
        }

        protected void Check_Click(object sender, EventArgs e)
        {
            date_start = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
            date_end = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
            //Response.Write(date_start);
            findAvailableCourt();
            RadioButtonList1.Visible = true;
        }
        private void findAvailableCourt()
        {

            String myquery = "select DISTINCT courtname from bookeddetails where ((date_start between '" + date_start + "' and '" + date_end + "' ) or (date_end between '" + date_start + "' and '" + date_end + "' ))";
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //RadioButtonList1.Items.Clear();
                Label2.Text = "Available Courts are Given Below";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["courtname"].ToString()));

                }
                if (RadioButtonList1.Items.Count == 0)
                {
                    Label2.Text = "No Court Available to Book";
                }

            }
            else
            {
                Label2.Text = "Available Court are Given Below";

            }
            con.Close();
        }
        public void GenerateBookingID()
        {

            SqlConnection scon = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            String myquery = "select booking_id from bookeddetails";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                booking_id = 1000;

            }
            else
            {

                SqlConnection scon1 = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
                String myquery1 = "select max(booking_id) from bookeddetails";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);

                booking_id = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

                booking_id = booking_id + 1;
                scon1.Close();
            }

        }

        protected void Book_Click(object sender, EventArgs e)
        {
            GenerateBookingID();
            SqlConnection con = new SqlConnection("Data Source =.\\SQLEXPRESS; Initial Catalog = CourtBooking; Integrated Security = True; Pooling = False");
            SqlCommand com = new SqlCommand(); // Create a object of SqlCommand class
            com.Connection = con; //Pass the connection object to Command

            con.Open();

            SqlDataAdapter cmd = new SqlDataAdapter();// Create a object of SqlDataAdapter class
            cmd.InsertCommand = new SqlCommand("INSERT INTO bookeddetails VALUES (@booking_id, @date_start, @date_end, @courtname) ", con);
            cmd.InsertCommand.Parameters.Add("@booking_id", SqlDbType.NText).Value = booking_id;
            cmd.InsertCommand.Parameters.Add("@date_start", SqlDbType.Text).Value = date_start;
            cmd.InsertCommand.Parameters.Add("@date_end", SqlDbType.Text).Value = date_end;
            cmd.InsertCommand.Parameters.Add("@courtname", SqlDbType.Text).Value = RadioButtonList1.SelectedItem.Text;

            cmd.InsertCommand.ExecuteNonQuery(); //to execute the SQL command
            con.Close();

            Response.Redirect("Receipt.aspx?BookingID=" + booking_id + "&Court=" + RadioButtonList1.SelectedItem.Text + "&StartDate=" + date_start + "&EndDate=" + date_end);
        }
    }
}