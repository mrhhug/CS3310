<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<ShoppingCart.Models.Product>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	CreateProduct
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
        function loadName() {
            $('#ImageFile').val($('#fileUpload').val().replace(/^.*[\\\/]/, ''));
        }
      </script>

    <h2><%= ViewData["Message"] %></h2>

    <% using (Html.BeginForm("CreateProduct", "", FormMethod.Post, new { enctype = "multipart/form-data" })) { %>
        <%: Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                Product Type
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ProductType) %>
                <%: Html.ValidationMessageFor(model => model.ProductType) %>
            </div>
            
            <div class="editor-label">
                Product Name
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ProductName) %>
                <%: Html.ValidationMessageFor(model => model.ProductName) %>
            </div>
            
            <div class="editor-label">
                Image File
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ImageFile) %>
                <%: Html.ValidationMessageFor(model => model.ImageFile) %>
                <br />
                <span style="color: #0000FF;" color="#0000FF"><i>&nbsp;&nbsp;&nbsp;&nbsp;Browse for new file:</i></span>
                <input type="file" id="fileUpload" name="fileUpload" onchange="loadName();" size="50"/>
            </div>
            
            <div class="editor-label">
                Unit Price
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.UnitPrice) %>
                <%: Html.ValidationMessageFor(model => model.UnitPrice) %>
            </div>
            
            <div class="editor-label">
                Maximum Amount
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.MaxAmount) %>
                <%: Html.ValidationMessageFor(model => model.MaxAmount) %>
            </div>
            
            <div class="editor-label">
                Default Amount
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.DefaultAmount) %>
                <%: Html.ValidationMessageFor(model => model.DefaultAmount) %>
            </div>
            
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to Products View", "Products") %> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </div>

</asp:Content>

