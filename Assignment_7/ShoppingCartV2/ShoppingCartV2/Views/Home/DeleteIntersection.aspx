<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCartV2.Models.Intersection>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DeleteIntersection
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) { %>
        <%= Html.Hidden("ProductID", Model.ProductID)%>
        <%= Html.Hidden("OptionID", Model.OptionID)%>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Product ID:</div>
        <div class="fielddiplay"><%: Model.ProductID %></div>
        
        <div class="display-label">Option ID:</div>
        <div class="fielddiplay"><%: Model.OptionID %></div>
        
            <p>
                <input type="submit" value="Delete" />
            </p>
    </fieldset>
    <% } %>
        <p>
        <%: Html.ActionLink("Back To Intersections View", "Intersections")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
        </p>

</asp:Content>

