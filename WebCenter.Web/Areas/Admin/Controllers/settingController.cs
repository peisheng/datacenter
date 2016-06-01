using Common;
using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using WebCenter.Entities;
using WebCenter.IServices;
using WebCenter.Web.Controllers;


namespace WebCenter.Web.Areas.Admin.Controllers
{
    public class SettingController : BaseController
    {
        public SettingController(IUnitOfWork UOF)
            : base(UOF)
        {

        }

        /// <summary>
        /// get the project_case List
        /// </summary>
        /// <param name="page_index"></param>
        /// <param name="page_size"></param>
        /// <param name="keyword"></param>
        /// <param name="company_id"></param>
        /// <returns></returns>
        [Authorize]
        [HttpGet]

        public ActionResult List()
        {
           var list= Uof.IsettingService.GetAll().ToList();
           return Json(list, JsonRequestBehavior.AllowGet);
        }
        
        public ActionResult Save(List<setting> list)
        {
            List<setting> addlist=new List<setting>();
             List<setting> updatelist=new List<setting>();
            foreach (var item in list)
            {
                if (item.id > 0)
                {
                    updatelist.Add(item);
                }
                else
                {
                    addlist.Add(item);
                }
            }
            if (addlist.Count > 0)
            {
                Uof.IsettingService.AddEntities(addlist);
            }
            if (updatelist.Count > 0)
            {
                Uof.IsettingService.UpdateEntities(updatelist);
            }
            return SuccessResult;
            
        }
        



    }
}