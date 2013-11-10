<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ShoppingCartV2.Models.PurchaseOrder>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Purchases
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <table>
        <tr>
            <th></th>
            <th>
                <%: Html.ActionLink("Order ID", "Purchases", new { sortOrder = ViewData["OrderIDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Customer ID", "Purchases", new { sortOrder = ViewData["CustomerIDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Date", "Purchases", new { sortOrder = ViewData["DateSortParm"] })%>
            </th>
            <th>
                SubTotal
            </th>
            <th>
                Tax
            </th>
            <th>
                <%: Html.ActionLink("Total", "Purchases", new { sortOrder = ViewData["TotalSortParm"] })%>
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Details", "OrderDetails", new { id = item.OrderID })%>
            </td>
            <td>
                <%: item.OrderID %>
            </td>
            <td>
                <%= Html.ActionLink( item.CustomerID.ToString(), "CustomerDetails", new { id = item.CustomerID })%>
            </td>
            <td>
                <%: String.Format("{0:g}", item.Date) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.SubTotal) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Tax) %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.Total) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

