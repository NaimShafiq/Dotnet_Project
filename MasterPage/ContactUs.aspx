<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="CourtBooking.MasterPage.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">
     <style>
        .pic{
            margin-top:25px;
            float:left;
            margin-left:20px;
        }

        .auto-style1,
        .auto-style2,
        .auto-style3{
            height: 53px;
            border-radius: 48px;
        }
.btn{
    width:30%;
    border:none;
    margin-left:250px;
    margin-bottom:20px;
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
        .auto-style4 {
            margin-right: 20px;
        }
    </style>
 
    <div class="contact">
         <div class="flex" style="margin-top: 20px">
        <asp:Label ID="Label1" runat="server" Text="Get In Touch" ForeColor="Black" Font-Size="XX-Large"></asp:Label>
    </div>
        <div class="pic">
        <asp:Image ID="Image1" runat="server" src="/Images/contact.png" Height="380px" Width="440px" />
    </div>
    </div>

     <div style="margin-top: 50px" class="flex">
        <table align="center" width="50%" >
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="name_label" runat="server" Text="Name : "  ></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtbox_name" runat="server"  Width="238px" Height="26px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_name" ErrorMessage="Please enter your name!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="email_label" runat="server" Text="Email : "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtbox_email" runat="server"  Width="238px" Height="26px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please enter your email!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="msg_label" runat="server" Text="Message : "></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtbox_msg" runat="server"  Width="242px" Height="80px" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbox_msg" ErrorMessage="Please enter message!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
                
            </tr>
    </table>
         
</div>
        <div class="flex">
    <asp:Label ID="lblStatus1" runat="server" ForeColor="Maroon" Font-Bold="True" Font-Size="16px"></asp:Label>
    </div><br />
    <div class="flex" style="margin-bottom:10px;">
        <asp:Button CssClass="btn" ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
        <div style="margin-top:10px"> 
        <asp:Button Cssclass="btn" ID="ButtonCancel" runat="server"  Text="Cancel" OnClick="ButtonCancel_Click" />
    </div>
</div>
 
</asp:Content>
