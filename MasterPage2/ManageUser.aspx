<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUser.aspx.cs" Inherits="CourtBooking.MasterPage2.ManageUser" %>
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
             padding-top:5px;
         }
        td{
            border: 1px solid black;
            padding:15px;
        }
        </style>
    <formview>
        <div>
            <asp:Label ID="Label1" runat="server" Text="User Details" ForeColor="Black" Font-Size="XX-Large"></asp:Label><br /><br />

            <asp:TextBox ID="TextBox1" runat="server"  Width="148px" placeholder="Enter user id to be delete"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete" /><br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center"   >
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Username" />
                    <asp:BoundField DataField="fname" HeaderText="First Name" />
                    <asp:BoundField DataField="lname" HeaderText="Last Name" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="email" HeaderText="Email" />




                </Columns>
            </asp:GridView>

        </div>
    </formview>
</asp:Content>
