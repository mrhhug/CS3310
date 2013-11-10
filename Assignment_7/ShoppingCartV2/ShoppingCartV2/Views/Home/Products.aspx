<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ShoppingCartV2.Models.Product>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Products
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <table>
        <tr>
            <th></th>
            <th>
                <%: Html.ActionLink("Product ID", "Products", new { sortOrder = ViewData["IDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Product Type", "Products", new { sortOrder = ViewData["TypeSortParm"] })%>
                
            </th>
            <th>
                <%: Html.ActionLink("Product Name", "Products", new { sortOrder = ViewData["NameSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Image File", "Products", new { sortOrder = ViewData["ImageSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Unit Price", "Products", new { sortOrder = ViewData["PriceSortParm"] })%>
            </th>
            <th>
                Maximum Amount
            </th>
            <th>
                Default Amount
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditProduct", new { id=item.ProductID }) %> |
                <%: Html.ActionLink("Details", "ProductDetails", new { id=item.ProductID })%> |
                <%: Html.ActionLink("Delete", "DeleteProduct", new { id=item.ProductID })%>
            </td>
            <td>
                <%: item.ProductID %>
            </td>
            <td>
                <%: item.ProductType %>
            </td>
            <td>
                <%: item.ProductName %>
            </td>
            <td>
                <%: item.ImageFile %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.UnitPrice) %>
            </td>
            <td>
                <%: item.MaxAmount %>
            </td>
            <td>
                <%: item.DefaultAmount %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

