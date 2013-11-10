<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Option>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	DeleteOption
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) { %>
        <%= Html.Hidden("OptionID", Model.OptionID)%>
    <style type="text/css">
    .fielddiplay { font-size: 12px; font-weight:bold; color: #0000ff; }
    </style>
    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">Option ID:</div>
        <div class="fielddiplay"><%: Model.OptionID %></div>
        
        <div class="display-label">Option Type:</div>
        <div class="fielddiplay"><%: Model.OptionType %></div>
        
        <div class="display-label">Option Name:</div>
        <div class="fielddiplay"><%: Model.OptionName %></div>
        
        <div class="display-label">Option Cost:</div>
        <div class="fielddiplay"><%: String.Format("{0:F}", Model.OptionCost) %></div>
        
            <p>
                <input type="submit" value="Delete" />
            </p>
    </fieldset>
    <% } %>
    <p>
        <%: Html.ActionLink("Back To Options View", "Options")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

