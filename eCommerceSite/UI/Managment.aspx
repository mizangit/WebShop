<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Managment.aspx.cs" Inherits="eCommerceSite.Managment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/UI/ProductUI.aspx">Add New Products</asp:LinkButton>
    <br />
    <asp:GridView ID="productsGridView" runat="server"></asp:GridView>
      <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/UI/ProductTypeUI.aspx">Add New Product Types</asp:LinkButton>
    <br />
    <asp:GridView ID="productTypeGridView" runat="server"></asp:GridView>
</asp:Content>
