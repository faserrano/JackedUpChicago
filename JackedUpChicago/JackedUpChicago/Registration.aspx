<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="JackedUpChicago.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
        <p><asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
        <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValFName" runat="server" ControlToValidate="txtFName" ErrorMessage="Field is required." ForeColor="Red" ></asp:RequiredFieldValidator>
        </p>

        <p><asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
        <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValLName" runat="server" ControlToValidate="txtLName" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>

        <p><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regExpEmail" runat="server" ErrorMessage="You have not entered a vaild email address." ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </p>

        <p><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValPass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        </p>

        <p><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqValConfPass" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Field is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="compValPassword" runat="server" ErrorMessage="The passwords you entered do not match." ForeColor="Red" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
        </p>

        <br />

        <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" autopostback="true" OnClick="btnSubmit_Click" />

        
</asp:Content>
