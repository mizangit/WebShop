<%@ Page Title=" Product Type" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductTypeUI.aspx.cs" Inherits="eCommerceSite.UI.ProductTypeUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Product Type"  ></asp:Label>
    <br />
    <asp:Label ID="nameLabel" runat="server" Text="Name"></asp:Label>
    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click" />

</asp:Content>
