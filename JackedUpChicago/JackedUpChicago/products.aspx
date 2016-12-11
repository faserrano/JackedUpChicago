<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="JackedUpChicago.products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <a href="additems.aspx"><span class="glyphicon glyphicon-plus" ></span></a>
    <h1>Jacked Up's Coffee Portfolio</h1>
    <h2>It's the best coffee in town.</h2>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [product_name], [product_description], [product_image], [product_price], [product_size] FROM [products]"></asp:SqlDataSource>
   <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell>Image</asp:TableHeaderCell>
            <asp:TableHeaderCell>Product Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Description</asp:TableHeaderCell>
            <asp:TableHeaderCell>Size</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
        </asp:TableRow>
    </asp:Table>

    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
            <asp:BoundField DataField="product_description" HeaderText="product_description" SortExpression="product_description" />
            <asp:BoundField DataField="product_size" HeaderText="product_size" SortExpression="product_size" />
            <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price" />
            <asp:BoundField DataField="product_image" HeaderText="product_image" SortExpression="product_image" />

        </Columns>
    </asp:GridView>

</asp:Content>
