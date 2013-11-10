<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	ShoppingCartAccount
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.Label("First Name") %> *
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Firstname) %>
                <%: Html.ValidationMessageFor(model => model.Firstname) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Last Name") %> *
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Lastname) %>
                <%: Html.ValidationMessageFor(model => model.Lastname) %>
            </div>
            
            <div class="editor-label">
                <%: Html.Label("Street Address") %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.StreetAddress) %>
                <%: Html.ValidationMessageFor(model => model.StreetAddress) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.City) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.City) %>
                <%: Html.ValidationMessageFor(model => model.City) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.State) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.State) %>
                <%: Html.ValidationMessageFor(model => model.State) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Zip) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Zip) %>
                <%: Html.ValidationMessageFor(model => model.Zip) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Phone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Phone) %>
                <%: Html.ValidationMessageFor(model => model.Phone) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Email) %> *
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Email) %>
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>


</asp:Content>

