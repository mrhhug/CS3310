<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.PurchaseOrderWithDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	OrderDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Order ID:</div>
        <div class="fielddiplay"><%: Model.OrderID %></div>
        
        <div class="display-label">Customer ID:</div>
        <div class="fielddiplay">
        <%= Html.ActionLink(Model.CustomerID.ToString(), "CustomerDetails", new { id = Model.CustomerID })%></div>
        
        <div class="display-label">Date:</div>
        <div class="fielddiplay"><%: String.Format("{0:g}", Model.Date) %></div>
        
        <div class="display-label">SubTotal:</div>
        <div class="fielddiplay"><%: String.Format("{0:F}", Model.SubTotal) %></div>
        
        <div class="display-label">Tax:</div>
        <div class="fielddiplay"><%: String.Format("{0:F}", Model.Tax) %></div>
        
        <div class="display-label">Total:</div>
        <div class="fielddiplay"><%: String.Format("{0:F}", Model.Total) %></div>
        
    <%= Model.Details %>

    </fieldset>

    <p>
        <%: Html.ActionLink("Back To Purchase Orders View", "Purchases")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

