using AlbatrosSoft.Common.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DeltaApp.Controllers
{
    public class BaseController : Controller
    {
        public string CurrentUser
        {
            get
            {
                return User.Identity.Name;
            }
        }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            base.OnActionExecuting(filterContext);
            //Establece los modulos permitidos para el usuario
            this.LoadUserPermissions();
        }

        private void LoadUserPermissions()
        {
            if (!string.IsNullOrWhiteSpace(this.CurrentUser))
            {
                //IEnumerable<ViewUserPermissions> userPermissions = this.UserPermissionsBll.GetUserPermissions(this.CurrentUser);
                //string userPermissionsAsJSon = BuilUserPermissionsResults(userPermissions);
                //ViewBag.UserPermissions = userPermissionsAsJSon;
            }
        }

        /// <summary>
        /// Construye un JSon string
        /// </summary>
        /// <param name="userPermissions">Objeto que posee los datos a transformar</param>
        /// <returns>Retorna un JSon string</returns>
        //private string BuilUserPermissionsResults(IEnumerable<ViewUserPermissions> userPermissions)
        //{
        //    string jSonCustomerVehicles = string.Empty;
        //    //La consulta tiene datos
        //    if (userPermissions.Any())
        //    {
        //        //construir json.
        //        jSonCustomerVehicles = JsonHelper.Serialize<List<ViewUserPermissions>>(userPermissions.ToList());
        //    }
        //    return jSonCustomerVehicles;
        //}
    }
}