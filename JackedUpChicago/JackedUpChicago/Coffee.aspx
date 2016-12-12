<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Coffee.aspx.cs" Inherits="JackedUpChicago.Coffee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Label ID="lblAdminProductLink" runat="server" Text="Label" Visible="false"><a href="addProducts.aspx"><span class="glyphicon glyphicon-plus" ></span>Add A Product</a></asp:Label>
    <h1>Jacked Up's Coffee Portfolio</h1>
    <h2>It's the best coffee in town.</h2>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [product_name], [product_description], [product_image], [product_price], [product_size] FROM [products]"></asp:SqlDataSource>
   <div class="container">
        <div class="col-md-6">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/coffeecup.png" Width ="400px" />
        </div>
        <div class="col-md-6">
    <asp:Table ID="Table1" runat="server">
        <asp:TableRow>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            <asp:TableHeaderCell></asp:TableHeaderCell>
            
        </asp:TableRow>
    </asp:Table>

    <asp:Label ID="Label1" runat="server" Visible="false" Text="Label"></asp:Label>
  </div>
        </div>

</asp:Content>
