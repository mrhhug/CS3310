<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Option>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditOption
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        <%= Html.Hidden("OptionID", Model.OptionID)%>
        
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
                <%: Html.TextBoxFor(model => model.OptionCost, String.Format("{0:F}", Model.OptionCost)) %>
                <%: Html.ValidationMessageFor(model => model.OptionCost) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to Options View", "Options")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </div>

</asp:Content>

