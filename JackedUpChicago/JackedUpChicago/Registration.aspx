<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="JackedUpChicago.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <p><asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Field is required." ForeColor="Red" ></asp:RequiredFieldValidator>
        <br />

        <p><asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <p><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLName" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regExpEmail" runat="server" ErrorMessage="You have not entered a vaild email address." ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />

        <p><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValUserName" runat="server" ControlToValidate="txtUsername" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <p><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValPass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <p><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValConfPass" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="compValPassword" runat="server" ErrorMessage="The passwords you entered do not match." ForeColor="Red" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
        <br />

        <p><asp:Label ID="lblPhoneNum" runat="server" Text="Phone Number:"></asp:Label>
        <asp:TextBox ID="txtPhoneNum" runat="server" TextMode="Phone" CssClass="phoneNum" placeholder="(999) 999-9999"></asp:TextBox></p>
        <asp:RequiredFieldValidator ID="reqValPhoneNum" runat="server" ControlToValidate="txtPhoneNum" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regExpPhone" runat="server" ErrorMessage="Please enter a valid U.S. Phone Number in the format (999) 999-9999" ForeColor="Red" ControlToValidate="txtPhoneNum" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" autopostback="true" />

        
</asp:Content>
