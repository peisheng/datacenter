using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using System.Web.Security;
using WebCenter.Web.Models;

namespace WebCenter.Web.Controllers
{
    public class PageController : BaseController
    {


        public PageController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index(string pageName)
        {
            PageModel pm = new PageModel();
            page page = Uof.IpageService.GetAll(p => p.page_name == pageName).FirstOrDefault();
            if (page != null)
            {
                pm.Content = page.page_content;
                pm.Title = page.page_title;
                return View(pm);
            }
            else
            {
                return Content("页面不存在！");
            }

        }
        public ActionResult Contact()
        {

            PageModel pm = new PageModel();
            page page = Uof.IpageService.GetAll(p => p.page_name == "contact").FirstOrDefault();
            if (page != null)
            {
                pm.Content = page.page_content;
                pm.Title = page.page_title; 
                return View(pm);
            }
            else
            {
                return Content("页面不存在！");
            }
        }

        [HttpPost]
        public ActionResult SaveContact(ContactModel contact)
        {
            contact_msg msg = new contact_msg();
            msg.is_read = 0;
            msg.create_time = DateTime.Now;
            msg.content = contact.Content;
            msg.name = contact.Name;
            msg.phone = contact.Phone;
            msg.subject = contact.Subject;
            msg.email = msg.email;
            Uof.Icontact_msgService.AddEntity(msg);

            return SuccessResult;


        }

    }
}