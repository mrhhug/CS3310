<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ShoppingCart.Models.Intersection>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Intersections
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <table>
        <tr>
            <th></th>
            <th>
                <%: Html.ActionLink("Product ID", "Intersections", new { sortOrder = ViewData["PIDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Option ID", "Intersections", new { sortOrder = ViewData["OIDSortParm"] })%>
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Details", "IntersectionDetails", new { pid = item.ProductID, oid = item.OptionID })%> |
                <%: Html.ActionLink("Delete", "DeleteIntersection", new { pid = item.ProductID, oid = item.OptionID })%>
            </td>
            <td>
                <%: item.ProductID %>
            </td>
            <td>
                <%: item.OptionID %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New Intersection", "CreateIntersection")%> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

