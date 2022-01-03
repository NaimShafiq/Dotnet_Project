<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CourtBooking.MasterPage.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bodyContent" runat="server">

    <style type="text/css">

 .auto-style3 {
            text-align: center;
            font-size: xx-large;
            color:black;
 }

 p {
            padding: 20px;
            margin: 0px;
}

 .auto-style1 {
            width: 47%;
            text-align: center;
            border: ridge;
            border-color:black;
            background-color:white;
 }

 .auto-style18, .auto-style19, .auto-style20, .auto-style21 {
            width: 250px;
            height: 190px;
            border:solid;
            border-color:black;
            margin-top:10px;
 }

 .image{
     width: 776px;
     height: 350px;
 }

 .btn{
    width:20%;
    margin-bottom:20px;
    border:none;
    outline:none;
    height:40px;
    font-size:16px;
    color:white;
    background-color:darkgray;
    cursor:pointer;
    border-radius:20px;
    transition: .3s ease-in-out;
}

.btn:hover{
    background-color:black;
}

</style>


 <p class="auto-style3">
        <strong><span class="auto-style6">Welcome to H Badminton Court Center!</span></strong></p>
        <asp:Image CssClass="image" ImageUrl="/Images/badminton.jpg" runat="server" />
        <p class="auto-style3">
    <strong><span>Available Court</span></strong></p>

    <center><table align="center" class="auto-style1">

 <tr>
    <td style="width: 300px"><img alt="" class="auto-style18" src="/Images/courtA.jpg"/><br />Court Name: Court A<br />Type: Rubber Mat Flooring <br />RM10/hr<br /></td>
    <td style="width: 295px"><img alt="" class="auto-style19" src="/Images/courtB.jpg" /><br />Court Name: Court B<br />Type: Rubber Mat Flooring <br />RM10/hr<br /></td>
</tr>

 <tr>
    <td class="auto-style25"><img alt="" class="auto-style20" src="/Images/courtC.jpg" /><br />Court Name: Court C<br />Type: Rubber Mat Flooring <br />RM10/hr<br /></td>
    <td class="auto-style24"><img alt="" class="auto-style21" src="/Images/courtD.jpg" /><br />Court Name: Court D<br />Type: Wooden Flooring <br />RM8/hr<br /></td>
</tr>
</table><br />
        <asp:Button Text="Book Now" CssClass="btn" runat="server" ID="ButtonSubmit" OnClick="ButtonSubmit_Click"/>
</asp:Content>
