<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CourtBooking.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link href="Style/Login.css" rel="stylesheet" />

</head>
<body>
    <h1>Welcome To H Badminton Court Centre</h1>
    <div class="loginbox">
        <h2>Log In Here</h2>
            <img src="/Images/login.png" alt="login" class="user" />
        <form id="logform" runat ="server">
            <asp:Label Text="Username" CssClass="lbluname" runat="server"></asp:Label>
            <asp:TextBox runat="server" ID="txtbox_uname" CssClass="txtuname" placeholder="Enter Your Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_uname" ErrorMessage="Please enter your username!" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />

            <asp:Label Text="Password" CssClass="lblpass" runat="server"></asp:Label>
            <asp:TextBox runat="server"  ID="txtbox_pass" CssClass="txtpass" placeholder="Enter Your Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfPassword" runat="server" ControlToValidate="txtbox_pass" ErrorMessage="Please enter your password!" ForeColor="#CC0000"></asp:RequiredFieldValidator>

            <div class="flex" style="margin-bottom:10px;">
                <asp:Label ID="lblStatus" runat="server" ForeColor="Red" Text=""></asp:Label>
            </div>
            <asp:Button Text="Log In" CssClass="btnsubmit" runat="server" ID="ButtonSubmit" OnClick="ButtonSubmit_Click"/>
            <a>Don't have an account yet?</a><br />
            <asp:HyperLink Text="Register Now!" CssClass="regnow" runat="server" NavigateUrl="~/Register.aspx"></asp:HyperLink> 
        </form>
    </div>
</body>
</html>
