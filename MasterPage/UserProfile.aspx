<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CourtBooking.MasterPage.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">
     <style>
  .auto-style1 {
            width: 435px;
        }
        .auto-style2 {
            width: 899px;
            height: 4px;
        }
         .table, tr {
             border: 1px solid black;
             margin-bottom:30px;
         }
        td{
            border: 1px solid black;
            padding:15px;
        }
        .btn{
    width:30%;
    border:none;
    margin-left:460px;
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

    <div class="form-container" style="">
    <div style="margin-top: 50px" class="flex">
        <asp:Label ID="Label1" runat="server" Text="Your Profile" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
    </div>
    <div style="margin-top: 25px" class="flex">
        <asp:Image ID="Image1" runat="server" src="/Images/login.png" Height="112px" Width="108px" />
    </div>
    <div style="margin-top: 20px" class="flex">
        <table class="table" align="center" >
            <tr>
            
                <td>
                    <asp:Label ID="txt_id" runat="server" Text="Username : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_id" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="First Name : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_fname" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtbox_fname" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Last Name : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_lname" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtbox_lname" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Password : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_password" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtbox_pass" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Address : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_address" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtbox_address" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Email : " Font-Size="16px"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="label_email" runat="server" Text="" Font-Size="16px"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtbox_email" runat="server" Visible="False"></asp:TextBox>
                </td>
            </tr>
        </table> 
        <asp:Button ID="Update" runat="server" Text="Update Profile" OnClick="Update_Click" CssClass="btn" /><br />
        <asp:Button ID="Save" runat="server" Text="Save" OnClick="Save_Click" CssClass="btn" />
        </div>
</div>
</asp:Content>
