<%@ Page Title="Products" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductUI.aspx.cs" Inherits="eCommerceSite.UI.ProductUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="Label" runat="server" Text="Product Entry"></asp:Label>
    <br />
    <asp:Label ID="productNameLabel" runat="server" Text="Product Name"></asp:Label>
    <asp:TextBox ID="productNameTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="productTypeLabel" runat="server" Text="Product Type"></asp:Label>
    <asp:DropDownList ID="productTypeDropDownList" runat="server"></asp:DropDownList>
    <br />
    
    <asp:Label ID="priceLabel" runat="server" Text="Price"></asp:Label>
    <asp:TextBox ID="priceTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="descriptionLabel" runat="server" Text="Description"></asp:Label><hr />
    <asp:TextBox ID="descriptionTextBox" runat="server" Height="45px" Width="60%" TextMode="MultiLine"></asp:TextBox>
    <br />
    <asp:Label ID="imageLabel" runat="server" Text="Image"></asp:Label>
    <asp:FileUpload ID="imageFileUpload" runat="server" Width="281px" />
    <br />
    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />

</asp:Content>
