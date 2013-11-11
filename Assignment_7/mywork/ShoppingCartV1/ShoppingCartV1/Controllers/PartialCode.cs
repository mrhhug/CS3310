using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using ShoppingCartV1.Models;

namespace ShoppingCartV1.Controllers
{
    public partial class HomeController : Controller
    {
        // Gets the list of tabs and the Site heading label
        public ActionResult GetTabs()
        {
            string tabStr = "<h1>" + siteHeading + "</h1>:<ul id=\"menu\">" + Environment.NewLine;
            for (int i = 0; i < tabViews.Length; ++i)
                tabStr += "<li><a href=\"/Home/" + tabViews[i] + "\">" +
                    tabLabels[i] + "</a></li>" + Environment.NewLine;
            tabStr += "</ul>";

            return Content(tabStr);
        }

        // Loads the submission details into session variables for each tab
        public void LoadSubmission(string name, int amount, FormCollection collection)
        {
            for (int i = 1; i <= amount; i++)
            {
                int value;
                if (!Int32.TryParse(collection[i - 1], out value))
                    continue;
                Session[String.Format("{0}Amount{1}", name, i)] = collection[i - 1];
                Session[String.Format("{0}Price{1}", name, i)] =
                    Double.Parse(Session[String.Format("{0}UnitPrice{1}",
                      name, i)].ToString()) * value;
            }
        }

        // Converts table entries for a particular product type into a list of products for the website
        private List<Product> loadViewTableData(string pType, int viewIndex)
        {
            using (ShoppingCartDBEntities1 db1 = new ShoppingCartDBEntities1())
            {
                var productItems = from wp in db1.Products where (wp.ProductType == pType) select wp;
                int index = 1;
                foreach (var p in productItems)
                {
                    string pathlabel = "";
                    Session[pType + "ProductName" + index] = "";
                    if (String.IsNullOrWhiteSpace(p.ProductName) && String.IsNullOrWhiteSpace(p.ImageFile))
                        pathlabel = "[No Image]";
                    else
                    {
                        if (!String.IsNullOrWhiteSpace(p.ProductName))
                        {
                            pathlabel = p.ProductName.Trim();
                            Session[pType + "ProductName" + index] = pathlabel;
                            if (!String.IsNullOrWhiteSpace(p.ImageFile))
                                pathlabel += ":<br />";
                        }
                        if (!String.IsNullOrWhiteSpace(p.ImageFile))
                            pathlabel += "<img src=\"/Content/" + p.ImageFile.Trim() + "\" alt=\"Store Product Image\" />";
                    }
                    Session[pType + "Path" + index] = pathlabel;
                    Session[pType + "UnitPrice" + index] = p.UnitPrice;
                    if (Session[pType + "Amount" + index] == null)
                        ViewData["DefaultChoice" + index] = (p.DefaultAmount >= 0) ? p.DefaultAmount : 0;
                    else
                        ViewData["DefaultChoice" + index] = Int32.Parse(Session[pType + "Amount" + index].ToString());
                    ++index;
                }
                Session[pType + "ItemAmount"] = productItems.Count();
                return productItems.ToList();
            }
        }
    }
}