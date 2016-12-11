<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="JackedUpChicago.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>About Us:</h2>
    <p>Jacked Up Chicago is the first of a revolutionary new type of coffee distributor!</p>
    <p>We offer monthly selections of meticulously selected and pristinely roasted coffees, both whole bean and ground, equipment, and accessories &#8212; as well as limited-time seasonal and small batch blends.</p>
    <br />
    <p>Please fill out the form below to contact us with any questions.</p>
    <br /><br />
    <p><asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValUserName" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>

    <br />

    <p><asp:Label ID="Label2" runat="server" Text="Email: "></asp:Label>
    <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regExpEmail" runat="server" ErrorMessage="You have not entered a vaild email address." ForeColor="Red" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

    <br />

    <p><asp:Label ID="Label4" runat="server" Text="Phone: "></asp:Label>
    <asp:TextBox ID="TextBoxPhone" runat="server" placeholder="(999)999-9999"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="reqValPhoneNum" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regExpPhone" runat="server" ErrorMessage="Please enter a valid U.S. Phone Number in the format (999) 999-9999" ForeColor="Red" ControlToValidate="TextBoxPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    
    <br />

    <p><asp:Label ID="Label3" runat="server" Text="Questions / Comments:"></asp:Label><br />
    <asp:TextBox ID="TextBoxQuestions" runat="server" Rows="6" Columns="45" TextMode="MultiLine"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxQuestions" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>

    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
</asp:Content>
