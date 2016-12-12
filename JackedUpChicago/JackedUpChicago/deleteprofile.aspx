<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="deleteprofile.aspx.cs" Inherits="JackedUpChicago.deleteprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>We're sorry to see you go!</h1>
    <br /><br />
    <p>If you would like to delete your account, please enter your email address below:</p>
    <asp:TextBox ID="TextBoxDelEmail" runat="server"></asp:TextBox>
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>

    <asp:Button ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource>
</asp:Content>
