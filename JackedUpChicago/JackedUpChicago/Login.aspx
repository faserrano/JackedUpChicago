<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="JackedUpChicago.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p><asp:Label ID="lblUsername" runat="server" Text="Username: "></asp:Label>
    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></p>
    <br />
    <p><asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></p>
    <br />
    <asp:Label ID="lblLoginFail" runat="server" Text="ErrorMessage" ForeColor="Red" Visible="false"></asp:Label>
    <br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" autopostback="true" OnClick="btnLogin_Click" />
    <br />
</asp:Content>
