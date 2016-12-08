<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="JackedUpChicago.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblFName" runat="server" Text="First Name:"></asp:Label>
    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblLName" runat="server" Text="Last Name:"></asp:Label>
    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lblPhoneNum" runat="server" Text="Phone Number:"></asp:Label>
    <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" autopostback="true" />
    <br />
</asp:Content>
