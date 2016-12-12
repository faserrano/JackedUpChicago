<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="JackedUpChicago.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:Label ID="lblEmail" runat="server" Text="Change Email: "></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValEmail" runat="server" ErrorMessage="This field is required." ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="regExEmail" runat="server" ErrorMessage="This is not a valid email." ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ></asp:RegularExpressionValidator>
    <br />
    <asp:Label ID="lblPass" runat="server" Text="Change Password: "></asp:Label>
    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="reqValPass" runat="server" ErrorMessage="This field is required." ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblConfPass" runat="server" Text="Confirm New Password: "></asp:Label>
    <asp:TextBox ID="txtConfPass" runat="server" TextMode="Password"></asp:TextBox>
    <asp:CompareValidator ID="compValPass" runat="server" ErrorMessage="The passwords do not match." ForeColor="Red" ControlToValidate="txtConfPass" ControlToCompare="txtPass"></asp:CompareValidator>
    <br />
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <br />
    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

    

</asp:Content>
