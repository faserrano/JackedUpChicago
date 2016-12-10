<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="additems.aspx.cs" Inherits="JackedUpChicago.additems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Item Name: "></asp:Label>
    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Item Description: "></asp:Label>
    <asp:TextBox ID="TextBoxDexcription" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Item Size: "></asp:Label>
    <asp:TextBox ID="TextBoxSize" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Item Price: "></asp:Label>
    <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="Item Image: "></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <asp:Image ID="Image1" runat="server" />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Add Item" />
</asp:Content>
