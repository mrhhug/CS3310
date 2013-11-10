<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Admin
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>
    
    <ol style="font-size: 16px; font-weight:bold;">
        <li><%= Html.ActionLink("Customer Accounts", "Customers")%></li>
        <li><%= Html.ActionLink("Purchase Orders", "Purchases")%></li>
        <li><%= Html.ActionLink("Products Table", "Products")%></li>
        <li><%= Html.ActionLink("Options Table", "Options")%></li>
        <li><%= Html.ActionLink("Intersections Table", "Intersections")%></li>
    </ol>

</asp:Content>
