<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ShoppingCart.Models.CustomerWithPurchase>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Customers
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <table>
        <tr>
            <th></th>
            <th>
                <%: Html.ActionLink("ID", "Customers", new { sortOrder = ViewData["IDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Last Name", "Customers", new { sortOrder = ViewData["LastNameSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("First Name", "Customers", new { sortOrder = ViewData["FirstNameSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Order Amount", "Customers", new { sortOrder = ViewData["AmountSortParm"] })%>
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditCustomer", new { id = item.ID })%> |
                <%: Html.ActionLink("Details", "CustomerDetails", new { id = item.ID })%>
            </td>
            <td>
                <%: item.ID %>
            </td>
            <td>
                <%: item.Lastname %>
            </td>
            <td>
                <%: item.Firstname %>
            </td>
            <td>
                <%: Html.ActionLink(item.TotalPrice.ToString(), "OrderDetails", new { id = item.OrderID })%>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

