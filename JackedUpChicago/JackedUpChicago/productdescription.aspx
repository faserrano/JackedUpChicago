﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="productdescription.aspx.cs" Inherits="JackedUpChicago.productdescription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <asp:Label ID="lblAdminProductLink" runat="server" Text="Label" Visible="false"><a href="addProducts.aspx"><span class="glyphicon glyphicon-plus" ></span>Add A Product</a></asp:Label>
    <h1>A closer look</h1>
   

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [product_name], [product_description], [product_image], [product_price], [product_size] FROM [products]"></asp:SqlDataSource>
   <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Label ID="Label1" runat="server" visible="false" Text="Label"></asp:Label>
</asp:Content>
