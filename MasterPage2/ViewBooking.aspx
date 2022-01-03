<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Admin.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="CourtBooking.MasterPage2.ViewBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">
     <style>
        .atas{
            font-size:x-large;
        }
        table, tr {
             border: 1px solid black;
             margin-bottom:30px;
         }
        td{
            border: 1px solid black;
            padding:15px;
        }
        </style>
    <formview>
        <div>

            <asp:Label ID="Label1" runat="server" Text="Booking Data" ForeColor="Black" Font-Size="XX-Large"></asp:Label><br /><br />
            <asp:TextBox ID="TextBox1" runat="server"  Width="148px" placeholder="Enter booking id to be delete"></asp:TextBox>
            <asp:Button ID="Delete" runat="server" OnClick="Delete_Click" Text="Delete" /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center"   >
                <Columns>
                    <asp:BoundField DataField="booking_id" HeaderText="Booking ID" />
                    <asp:BoundField DataField="date_start" HeaderText="Start Date" />
                    <asp:BoundField DataField="date_end" HeaderText="End Date" />
                    <asp:BoundField DataField="courtname" HeaderText="Court Name" />
                </Columns>
            </asp:GridView>

        </div>
    </formview>
</asp:Content>
