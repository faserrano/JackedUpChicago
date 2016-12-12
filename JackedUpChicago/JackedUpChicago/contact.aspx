<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="JackedUpChicago.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="col-md-6">

    <h1>Contact Us:</h1>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Label" Visible="false"></asp:Label>

    <br />

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

    <p><asp:Label ID="Label6" runat="server" Text="Subject: "></asp:Label>
    <asp:TextBox ID="TextBoxSubject" runat="server"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSubject" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>

    <br />
    <p><asp:Label ID="Label3" runat="server" Text="Questions / Comments:"></asp:Label><br />
    <asp:TextBox ID="TextBoxQuestions" runat="server" Rows="6" Columns="45" TextMode="MultiLine"></asp:TextBox></p>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxQuestions" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>

    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
    <div class="col-md-6">
        <asp:Image ID="Image1" runat="server" ImageUrl="Images/Mark.JPG" Width ="400px" />
    </div>
    </div>

</asp:Content>
