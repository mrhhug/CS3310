<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CheckOut
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    <%= ViewData["Message2"] %>
    
    <% if ((Boolean)ViewData["HasItems"]) { %>
        <h2><%= Html.ActionLink("Proceed with Check Out", "ShoppingCartAccount")%></h2>
    <% } %>

</asp:Content>
