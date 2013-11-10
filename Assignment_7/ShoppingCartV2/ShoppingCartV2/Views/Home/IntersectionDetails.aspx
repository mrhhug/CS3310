<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCartV2.Models.Intersection>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	IntersectionDetails
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Product ID:</div>
        <div class="fielddiplay"><%: Model.ProductID %></div>
        
        <div class="display-label">Option ID:</div>
        <div class="fielddiplay"><%: Model.OptionID %></div>
        
    </fieldset>
    <p>
    
        <%: Html.ActionLink("Back To Intersections List", "Intersections")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

