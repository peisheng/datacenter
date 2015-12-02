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
            //for (var i = 0; i < 300;i++ )
            //{

            IList<company> list = Uof.IcompanyService.GetAll().OrderByDescending(item=>item.Id).Skip(200).Take(50).ToList();

            //}
           
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