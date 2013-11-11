using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShoppingCartV1.Controllers
{
    [HandleError]
    public partial class HomeController : Controller
    {
        // Text for Site Heading
        string siteHeading = "The Fun Cake Store";

        // Text for View Heading for each Tab
        string[] tabHeadings = { "Home", "Single Layer Cake", "About Us" };

        // View method name for each Tab
        string[] tabViews = { "Index", "Tab1Orders", "About" };

        // View label displayed on each Tab
        string[] tabLabels = { "Home", "1-Layer", "About" };

        public ActionResult Index()
        {
            ViewData["Message"] = "Welcome to ASP.NET MVC!";

            return View();
        }

        public ActionResult About()
        {
            return View();
        }

        // Action Method for First Product View
        public ActionResult Tab1Orders()
        {
            Session["ProductType"] = tabViews[1];
            ViewData["Message"] = Session["Message"] = tabHeadings[1] + " Orders:";
            return View(loadViewTableData(Session["ProductType"].ToString(), 1));
        }

        // Action Method for First Product View
        [HttpPost]
        public ActionResult Tab1Orders(string button, FormCollection collection)
        {
            string pType = Session["ProductType"].ToString();
            int amount = Int32.Parse(Session[pType + "ItemAmount"].ToString());
            int tabNum = 1;

            LoadSubmission(pType, amount, collection);

            for (int i = 1; i <= amount; i++)
            {
                int value;
                if (!Int32.TryParse(collection[i - 1], out value) || value < 0)
                {
                    ViewData.ModelState.AddModelError("", "Error: You put an invalid amount in Item #" + i);
                    ViewData["Message"] = Session["Message"];
                    return View(pType, loadViewTableData(pType, tabNum));
                }
            }

            if (button == "Save And Go To Checkout")
            {
                return RedirectToAction("CheckOut");
            }
            else
            {
                return RedirectToAction(tabViews[tabNum + 1]);  // This is the View for the next product page
            }
        }
    }
}
