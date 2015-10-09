<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="eCommerceSite.Home" %>
 <%@ Import Namespace="eCommerceSite.BLL" %>
 <%@ Import Namespace="eCommerceSite.Model" %>
<%@ Import Namespace="eCommerceSite.DAL" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #Button1 {
            height: 18px;
        }

        .auto-style1 {
            width: 117px;
        }

        #Submit1 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div >
    <asp:Panel ID="productPanel" runat="server" >


       






       
             <%--<% ProductManager aProductManager = new ProductManager();

                foreach (Product aProduct in aProductManager.GetAllProducts())
                {
             %>
             <table id="imagelayer">
            <tr> 
                <td class="auto-style1"> <img src="http://localhost:5670/<%Response.Write(aProduct.Image);%> " class="productImage"  </td>
            </tr>
            <tr> 
                <td class="auto-style1">Product Name:  <% Response.Write(aProduct.Name); %>  </td>
            </tr>
            <tr> 
                <td class="auto-style1">Price: $<% Response.Write(aProduct.Price); %></td>
               
            </tr>
                   <tr>
               <td id="ID"> <% Response.Write(aProduct.Id);%> </td>

               </tr>
           <tr>           
               <td> <asp:Button runat="server" ID="viewButton" Text="View" OnClick="viewButton_Click(aProduct.Id)" >  </asp:Button></td>              
               </tr>
                
             </table>
       
              
         <% }
          
           %>--%>

    </asp:Panel>
     </div>
</asp:Content>
