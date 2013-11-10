<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CustomerDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">ID:</div>
        <div class="fielddiplay"><%: Model.ID %></div>
        
        <div class="display-label">First Name:</div>
        <div class="fielddiplay"><%: Model.Firstname %></div>
        
        <div class="display-label">Last Name:</div>
        <div class="fielddiplay"><%: Model.Lastname %></div>
        
        <div class="display-label">Street Address:</div>
        <div class="fielddiplay"><%: Model.StreetAddress %></div>
        
        <div class="display-label">City:</div>
        <div class="fielddiplay"><%: Model.City %></div>
        
        <div class="display-label">State:</div>
        <div class="fielddiplay"><%: Model.State %></div>
        
        <div class="display-label">Zip:</div>
        <div class="fielddiplay"><%: Model.Zip %></div>
        
        <div class="display-label">Phone:</div>
        <div class="fielddiplay"><%: Model.Phone %></div>
        
        <div class="display-label">Email:</div>
        <div class="fielddiplay"><%: Model.Email %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "EditCustomer", new { id = Model.ID })%> |
        <%: Html.ActionLink("Back To Customers View", "Customers")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

