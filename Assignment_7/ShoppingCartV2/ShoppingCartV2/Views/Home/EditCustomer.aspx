<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCartV2.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	EditCustomer
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                First Name
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Firstname) %>
                <%: Html.ValidationMessageFor(model => model.Firstname) %>
            </div>
            
            <div class="editor-label">
                Last Name
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Lastname) %>
                <%: Html.ValidationMessageFor(model => model.Lastname) %>
            </div>
            
            <div class="editor-label">
                Street Address
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
                <%: Html.LabelFor(model => model.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Email) %>
                <%: Html.ValidationMessageFor(model => model.Email) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back To Customers View", "Customers")%> |
        <%: Html.ActionLink("Back To Admin View ", "Admin")%>
    </div>

</asp:Content>

