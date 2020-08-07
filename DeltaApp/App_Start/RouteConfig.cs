using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace DeltaApp
{
    public class RouteConfig
    {
        private const string DEFAULT_CONTROLLER_NAME = "Login";
        private const string DEFAULT_CONTROLLER_ACTION_NAME = "Index";
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapPageRoute("AspNet", "AspNet/{controller}/{pageName}", "~/Views/{controller}/{pageName}.aspx");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                //Llama por defecto un controlador y su respectiva accion.
                defaults: new { controller = DEFAULT_CONTROLLER_NAME, action = DEFAULT_CONTROLLER_ACTION_NAME, id = UrlParameter.Optional }
            );
        }
    }
}
