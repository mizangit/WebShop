<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="eCommerceSite.UI.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 268435488px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <%--<table>
        <tr>
            <td rowspan="4">
                <asp:Image ID="imageProduct" runat="server" CssClass="imageDetails" /></td>
            <td><h2>
                <asp:Label ID="titleLabel" runat="server" Text="Label" ></asp:Label>
                <hr />
                </h2>
                </td>
                
        </tr>
        Description: <hr />
        <asp:Label ID="descriptionLabel" runat="server" CssClass="descriptionDetails"  ></asp:Label> <br />
         <tr>
            <td> 
                </td>
            <td class="auto-style1">
                <asp:Label ID="priceLabel" runat="server"  CssClass="priceDetails"></asp:Label></td> 
             
                Quantity :
             <asp:DropDownList ID="amountDropDownList" runat="server"></asp:DropDownList> <br />
             <asp:Button ID="addButton" runat="server" CssClass="button" Text="Add Product" />
             <asp:Label ID="resultLabel" runat="server"  ></asp:Label>
        </tr>
         <tr>
            <td>Product Number:<asp:Label ID="itemNumberLabel" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label" runat="server" Text="Available" CssClass="productPrice"  ></asp:Label></td>
           
        </tr>
    </table>--%>
    <h2>
     <asp:Label ID="titleLabel" runat="server" Text="Label" ></asp:Label>
     <hr />
        </h2>
    <br />
     <h2> Description: <hr /></h2>
        <asp:Label ID="descriptionLabel" runat="server" CssClass="descriptionDetails"  ></asp:Label>
    <br />
    <br />
    <asp:Image ID="imageProduct" runat="server" CssClass="imageDetails" />
    
    <br />
     <asp:Label ID="priceLabel" runat="server"  CssClass="priceDetails"></asp:Label> <br />
    Quantity :
             <asp:DropDownList ID="amountDropDownList" runat="server"></asp:DropDownList> <br />
    <asp:Button ID="addButton" runat="server" Text="Add Product" CssClass="button1" OnClick="addButton_Click" />
             <%--<asp:Button ID="addButton" runat="server" CssClass="button" Text="Add Product" />--%>
             <asp:Label ID="resultLabel" runat="server"  ></asp:Label>
    <br />
    Product Number:<asp:Label ID="itemNumberLabel" runat="server" Text="Label"></asp:Label>
        <br />

        <asp:Label ID="Label" runat="server" Text="Available" CssClass="productPrice"  ></asp:Label>



</asp:Content>
