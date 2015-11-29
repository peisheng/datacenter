using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;

namespace WebCenter.Web.Controllers
{
    public class HomeController : BaseController
    {
       
        
        public HomeController(IUnitOfWork UOF):base(UOF)
        { 
        }
        public ActionResult Index()
        {
            company com = new company();
            com.address = "test";
            com.create_time = DateTime.Now;
            com.introdce = "i am test";
            Uof.IcompanyService.AddEntity(com);
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