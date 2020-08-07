using DeltaApp.DAL;
using DeltaApp.Models;
using DeltaApp.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace DeltaApp.Controllers
{
    public class LoginController : Controller
    {
        [ThreadStatic]
        private UserRepository _UserRepository;

        public UserRepository UserRepository
        {
            get
            {
                if (this._UserRepository == null)
                {
                    this._UserRepository = new UserRepository(new DataContext());
                }
                return this._UserRepository;
            }
        }

        public ActionResult Index(LoginUser authenticateUserInfo)
        {
            string resultMessage = string.Empty;
            if (authenticateUserInfo != null)
            {
                if (!string.IsNullOrWhiteSpace(authenticateUserInfo.Username) && !string.IsNullOrWhiteSpace(authenticateUserInfo.Password))
                {
                    if (this.ModelState.IsValid)
                    {
                        var userLoged = this.UserRepository.GetLogedUser(authenticateUserInfo.Username, authenticateUserInfo.Password);
                        if (userLoged != null)
                        {
                            FormsAuthentication.SetAuthCookie(authenticateUserInfo.Username, false);
                            return this.RedirectToAction("Index_Admin", "Home");
                        }
                    }
                }
                this.ViewBag.resultMessage = resultMessage;
                return this.View(authenticateUserInfo);
            }
            return this.View();
        }
    }
}