<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<ShoppingCart.Models.Option>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Options
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%= ViewData["Message"] %></h2>

    <table>
        <tr>
            <th></th>
            <th>
                <%: Html.ActionLink("Option ID", "Options", new { sortOrder = ViewData["IDSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Option Type", "Options", new { sortOrder = ViewData["TypeSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Option Name", "Options", new { sortOrder = ViewData["NameSortParm"] })%>
            </th>
            <th>
                <%: Html.ActionLink("Option Cost", "Options", new { sortOrder = ViewData["PriceSortParm"] })%>
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: Html.ActionLink("Edit", "EditOption", new { id=item.OptionID }) %> |
                <%: Html.ActionLink("Details", "OptionDetails", new { id=item.OptionID })%> |
                <%: Html.ActionLink("Delete", "DeleteOption", new { id=item.OptionID })%>
            </td>
            <td>
                <%: item.OptionID %>
            </td>
            <td>
                <%: item.OptionType %>
            </td>
            <td>
                <%: item.OptionName %>
            </td>
            <td>
                <%: String.Format("{0:F}", item.OptionCost) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%: Html.ActionLink("Create New Option", "CreateOption") %> |
        <%: Html.ActionLink("Back To Admin View", "Admin")%>
    </p>

</asp:Content>

