using Common;
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
    public class DictionaryController : BaseController
    {
        public DictionaryController(IUnitOfWork UOF)
            : base(UOF)
        {

        }
        public Isys_dictionaryService DictService
        {
            get
            {
                return Uof.Isys_dictionaryService;
            }
        }

        public ActionResult Get(string type = "")
        {

            if (!string.IsNullOrEmpty(type))
            {
                var obj = DictService.GetAll(item => item.group == type).ToList();
                ArrayList al = new ArrayList();
                foreach (var item in obj)
                {
                    al.Add(new
                    {
                        id = item.id,
                        name = item.name,
                        value = item.value
                    });
                }
                return Json(al, JsonRequestBehavior.AllowGet);
            }

            return Json(new { result = false }, JsonRequestBehavior.AllowGet);


        }


    }
}