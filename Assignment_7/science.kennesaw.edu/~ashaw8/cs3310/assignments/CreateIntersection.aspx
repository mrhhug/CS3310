<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Intersection>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CreateIntersection
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                Product ID
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ProductID) %>
                <%: Html.ValidationMessageFor(model => model.ProductID) %>
            </div>
            
            <div class="editor-label">
                Option ID
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.OptionID) %>
                <%: Html.ValidationMessageFor(model => model.OptionID) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to Intersections List", "Intersections")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </div>

</asp:Content>

