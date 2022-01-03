<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Receipt.aspx.cs" Inherits="CourtBooking.MasterPage.Receipt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">

<style>
    table, tr {
            border: 1px solid black;
            margin-bottom:30px;
            width:70%;
         }
        td{
            border: 1px solid black;
            padding:15px;
        }
        .autostyle1{
            font-size:20px;
            font-weight:400;
}

</style>
    <div class="auto-style6">
    <div style="margin-top: 50px" class="flex">
        <asp:Label ID="Label1" runat="server" Text="Your Booking" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
    </div>

    <div style="margin-top: 20px" class="flex">
        <table align="center" >
            <tr>
                <td class="auto-style1">
                    Booking ID : </td>
                <td class="auto-style4">
                    <asp:Label ID="booking_id" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Court Name : </td>
                <td class="auto-style4">
                    <asp:Label ID="courtname" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    Start Date : </td>
                <td class="auto-style4">
                    <asp:Label ID="startdateba" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    End Date : </td>
                <td class="auto-style5">
                    <asp:Label ID="enddateba" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                </td>
            </tr>

        </table>   
    </div>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Take a screenshot and show at counter!" ForeColor="Black" Font-Size="X-Large"></asp:Label>
</asp:Content>
