<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CourtBooking.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Style/Register.css" rel="stylesheet" />
</head>
<body>
    <div class="regform">
        <h2>Sign Up Here</h2>
        <form id="regform" runat="server">
            <asp:Label Text="First Name" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_fname" runat="server" CssClass="txt" placeholder="Enter Your First Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtbox_fname" ErrorMessage="Please Enter Your Name" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />

            <asp:Label Text="Last Name" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_lname" runat="server" CssClass="txt" placeholder="Enter Your Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtbox_lname" ErrorMessage="Please Enter Your Name" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />

            <asp:Label Text="Username" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_uname" runat="server" CssClass="txt" placeholder="Enter Your Username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtbox_uname" ErrorMessage="Please Enter Your Username" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />

            <asp:Label Text="Password" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_pass" runat="server" TextMode="Password" CssClass="txt" placeholder="Enter Your Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtbox_pass" ErrorMessage="Please Enter Password" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
 
            <asp:Label Text="Confirm Password" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_repass" runat="server" TextMode="Password" CssClass="txt" placeholder="Confirm Your Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtbox_pass" ControlToValidate="txtbox_repass" Operator="Equal" ErrorMessage="Password do not match" ForeColor="#CC0000"></asp:CompareValidator><br />

            <asp:Label Text="Address" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_address" runat="server" TextMode="MultiLine" CssClass="address"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtbox_address" ErrorMessage="Please Enter Your Address" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />
            
            <asp:Label Text="Email" CssClass="lbl" runat="server"></asp:Label>
            <asp:TextBox ID="txtbox_email" runat="server" CssClass="txt" placeholder="Enter Your Email"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtbox_email" ErrorMessage="Please Enter Your Email" ForeColor="#CC0000"></asp:RequiredFieldValidator><br />

            <asp:Label ID="lblMsg" runat="server"></asp:Label><br />
            
            <div style="float:right">
            <a>Already have an account?</a>
             <asp:HyperLink Text="Login Now!" CssClass="lognow" runat="server" NavigateUrl="~/Login.aspx"></asp:HyperLink>
            </div>

            <asp:Button ID="btnSave" runat="server" Text="Sign Up" CssClass="btnsubmit" onclick="btnSave_Click"/><br />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btncancel" onclick="btnCancel_Click"/><br />
            
        </form>
    </div>

</body>
</html>
