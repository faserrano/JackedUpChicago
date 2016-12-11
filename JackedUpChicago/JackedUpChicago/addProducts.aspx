<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="addProducts.aspx.cs" Inherits="JackedUpChicago.additems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="Label7" runat="server" Text="Product Type"></asp:Label>
    <asp:DropDownList ID="DropDownProductType" runat="server">
        <asp:ListItem>Coffee</asp:ListItem>
        <asp:ListItem>Equipment</asp:ListItem>
    </asp:DropDownList></p>
        
    

    <p><asp:Label ID="Label1" runat="server" Text="Item Name: "></asp:Label>
    <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox></p>
    

    <p><asp:Label ID="Label2" runat="server" Text="Item Description: "></asp:Label>
    <asp:TextBox ID="TextBoxDexcription" runat="server"></asp:TextBox></p>
    

    <p><asp:Label ID="Label3" runat="server" Text="Item Size: "></asp:Label>
    <asp:TextBox ID="TextBoxSize" runat="server"></asp:TextBox></p>
    

    <p><asp:Label ID="Label4" runat="server" Text="Item Price: "></asp:Label>
    <asp:TextBox ID="TextBoxPrice" runat="server"></asp:TextBox></p>
    

    <p><asp:Label ID="Label5" runat="server" Text="Item Image: "></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" /></p>
    
    <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
    <asp:Image ID="Image1" runat="server" Height="100" Width="100"/>
    <asp:Button ID="ButtonAddItem" runat="server" Text="Add Item" OnClick="ButtonAddItem_Click" />

    

    
</asp:Content>
