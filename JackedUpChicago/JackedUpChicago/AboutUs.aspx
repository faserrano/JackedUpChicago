<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="JackedUpChicago.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-md-6">
            <h2>About Us:</h2>
            <p>Jacked Up Chicago is the first of a revolutionary new type of coffee distributor!</p>
            <p>We offer monthly selections of meticulously selected and pristinely roasted coffees, both whole bean and ground, equipment, and accessories &#8212; as well as limited-time seasonal and small batch blends.</p>
            <br />
            <h2>Our Philosophy</h2>
            <p>We use only the finest and most environmentally responsible coffee beans available.</p>
            <p>We give back to our community through involvement in various charity groups, by hiring disenfranchised youth, and donations.</p>
            <br /><br /><br />
            <p>Please fill out the form below to <a href="contact.aspx">Contact</a> us with any questions.</p>
            <br /><br />
        </div>
        <div class="col-md-6">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/Steve.jpg" Width ="400px" />

        </div>
    </div>
</asp:Content>
