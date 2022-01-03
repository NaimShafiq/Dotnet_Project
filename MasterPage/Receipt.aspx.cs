using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CourtBooking.MasterPage
{
    public partial class Receipt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string booking = Request.QueryString["BookingID"];
            string court = Request.QueryString["Court"];
            string startdate = Request.QueryString["StartDate"];
            string endate = Request.QueryString["EndDate"];

            booking_id.Text = booking;
            courtname.Text = court;
            startdateba.Text = startdate;
            enddateba.Text = endate;
        }
    }
}