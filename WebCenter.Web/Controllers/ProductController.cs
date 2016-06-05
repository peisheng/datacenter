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
    public class ProductController : BaseController
    {


        public ProductController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index(string CategoryName)
        {           
            return View();
        }
        
      
    }
}