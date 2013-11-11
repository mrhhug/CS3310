<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ShoppingCart1.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Tab1Orders
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"]%></h2>

</asp:Content>
