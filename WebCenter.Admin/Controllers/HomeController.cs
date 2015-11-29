using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;

namespace WebCenter.Admin.Controllers
{
    public class HomeController : BaseController
    {
       
        
        public HomeController(IUnitOfWork UOF):base(UOF)
        { 
        }
        public ActionResult Index()
        { 
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "关于我们";
            
            return View();
            
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "联系我们";
            
            return View();
        }
    }
}