using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using System.Web.Security;

namespace WebCenter.Web.Controllers
{
    public class HomeController : BaseController
    {


        public HomeController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index()
        {
           
            return View();
        }
        [HttpPost]
        public ActionResult Login(string userName, string password)
        {
            FormsAuthentication.SetAuthCookie(userName, true);
            return null;
        }

      
    }
}