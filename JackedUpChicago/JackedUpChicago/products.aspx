<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="JackedUpChicago.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:Label ID="Label1" runat="server" Text="Products"></asp:Label>
    :<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [product_name], [product_description], [product_size], [product_price] FROM [products]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            <asp:BoundField DataField="product_description" HeaderText="product_description" SortExpression="product_description" />
            <asp:BoundField DataField="product_size" HeaderText="product_size" SortExpression="product_size" />
            <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
        </Columns>
    </asp:GridView>


</asp:Content>
