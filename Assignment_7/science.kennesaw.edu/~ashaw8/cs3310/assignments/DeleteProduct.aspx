<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Product>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DeleteProduct
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    
    <% using (Html.BeginForm()) { %>
        <%= Html.Hidden("ProductID", Model.ProductID)%>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Product ID:</div>
        <div class="fielddiplay"><%: Model.ProductID %></div>
        
        <div class="display-label">Product Type:</div>
        <div class="fielddiplay"><%: Model.ProductType %></div>
        
        <div class="display-label">Product Name:</div>
        <div class="fielddiplay"><%: Model.ProductName %></div>
        
        <div class="display-label">Image File:</div>
        <div class="fielddiplay"><%: Model.ImageFile %></div>
        
        <div class="display-label">Unit Price:</div>
        <div class="fielddiplay"><%: String.Format("{0:F}", Model.UnitPrice) %></div>
        
        <div class="display-label">Maximum Amount:</div>
        <div class="fielddiplay"><%: Model.MaxAmount %></div>
        
        <div class="display-label">Default Amount:</div>
        <div class="fielddiplay"><%: Model.DefaultAmount %></div>
        
            <p>
                <input type="submit" value="Delete" />
            </p>
    </fieldset>
    <% } %>
        <p>
        <%: Html.ActionLink("Back To Products View", "Products")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
        </p>

</asp:Content>

