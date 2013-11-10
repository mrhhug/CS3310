<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Option>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CreateOption
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                Option Type
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.OptionType) %>
                <%: Html.ValidationMessageFor(model => model.OptionType) %>
            </div>
            
            <div class="editor-label">
                Option Name
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.OptionName) %>
                <%: Html.ValidationMessageFor(model => model.OptionName) %>
            </div>
            
            <div class="editor-label">
                Option Cost
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.OptionCost) %>
                <%: Html.ValidationMessageFor(model => model.OptionCost) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to Options List", "Options")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </div>

</asp:Content>

