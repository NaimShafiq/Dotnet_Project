<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Booking.aspx.cs" Inherits="CourtBooking.MasterPage.Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">

<style type="text/css">

.calendar{
    padding-left:490px;
}
.btn{
    width:100%;
    border:none;
    margin-left:520px;
    margin-bottom:10px;
    outline:none;
    height:40px;
    font-size:16px;
    color:white;
    background-color:darkgray;
    cursor:pointer;
    border-radius:20px;
    transition: .3s ease-in-out;
    float:left;
}

.btn:hover{
    background-color:black;
}
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="H Badminton Court"></asp:Label>
    <br /><br /><br />
   
            <asp:Label ID="Label4" runat="server" Text="Select Booking Date" Font-Size="16px"></asp:Label>
            <div class="calendar">
            <asp:Calendar ID="Calendar1" runat="server" Width="350px" Height="190px" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="FullMonth">
                <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar><br /><br /><br />
            </div>
            <asp:Label ID="Label5" runat="server" Text="Select Time" Font-Size="16px"></asp:Label><br />
            <asp:Label ID="Label6" runat="server" Text="Start Time:" Font-Size="14px"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="36px" Width="147px" BackColor="Silver" >
                    <asp:ListItem>3:00 PM</asp:ListItem>
                    <asp:ListItem>4:00 PM</asp:ListItem>
                    <asp:ListItem>5:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                    <asp:ListItem>7:00 PM</asp:ListItem>
                    <asp:ListItem>8:00 PM</asp:ListItem>
                    <asp:ListItem>9:00 PM</asp:ListItem>
                    <asp:ListItem>10:00 PM</asp:ListItem>
                </asp:DropDownList><br /><br />
                <asp:Label ID="Label7" runat="server" Text="End Time:" Font-Size="14px"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="36px" Width="149px" BackColor="Silver">
                    <asp:ListItem>4:00 PM</asp:ListItem>
                    <asp:ListItem>5:00 PM</asp:ListItem>
                    <asp:ListItem>6:00 PM</asp:ListItem>
                    <asp:ListItem>7:00 PM</asp:ListItem>
                    <asp:ListItem>8:00 PM</asp:ListItem>
                    <asp:ListItem>9:00 PM</asp:ListItem>
                    <asp:ListItem>10:00 PM</asp:ListItem>
                    <asp:ListItem>11:00 PM</asp:ListItem>
                </asp:DropDownList><br /><br />
                
                <asp:Label ID="Label2" runat="server" Text="" Font-Size="16px"></asp:Label><br />

                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Visible="False" Font-Size="14px" Height="118px" Width="974px">
                    <asp:ListItem>Court A</asp:ListItem>
                    <asp:ListItem>Court B</asp:ListItem>
                    <asp:ListItem>Court C</asp:ListItem>
                    <asp:ListItem>Court D</asp:ListItem>
                </asp:RadioButtonList><br />

                 <asp:Button ID="Check" runat="server" Width="300px" OnClick="Check_Click" Text="Check Availability" CssClass="btn" /><br />
                <asp:Button ID="Book" runat="server" Text="Book Now" Width="300px" OnClick="Book_Click" CssClass="btn" /><br />
                <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

                <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
</asp:Content>
