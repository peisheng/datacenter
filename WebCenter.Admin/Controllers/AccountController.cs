using IServices;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace WebCenter.Admin.Controllers
{
    public class AccountController : BaseController
    {
        public AccountController(WebCenter.IServices.IUnitOfWork uof)
            : base(uof)
        { }
        //
        // GET: /Account/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }

    }
}