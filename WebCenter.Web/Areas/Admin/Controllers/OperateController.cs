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
    public class OperateController : BaseController
    {
        public OperateController(IUnitOfWork UOF)
            : base(UOF)
        {

        }

        /// <summary>
        /// 操作记录
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult Clear()
        {
            int i = Uof.Ioperate_logService.DeleteEntity(item => item.Id > 0);
            if (i > 0)
                return Json(new { result = true }, JsonRequestBehavior.AllowGet);
            return Json(new { result = false }, JsonRequestBehavior.AllowGet);
        }


        /// <summary>
        /// 记录列表
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public ActionResult List(int page_index = 1, int page_size = 20)
        {
            PagedList<operate_log> list = Uof.Ioperate_logService.GetAll().OrderByDescending(item => item.Id).ToPagedList(page_index, page_size);
            if (list != null)
            {
                ArrayList al = new ArrayList();
                foreach (var item in list)
                {
                    var obj = new
                    {
                        id = item.Id,
                        name = item.name,
                        descript = item.desript,
                        user_name = item.user_name,
                        user_id = item.user_id,
                        result = item.result,
                        create_time = item.create_time
                    };
                    al.Add(obj);
                }
                var retObj = new
                {
                    total_count = list.TotalCount,
                    curent_page = page_index,
                    page_size = page_size,
                    items = al

                };
                return Json(retObj, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { result = false }, JsonRequestBehavior.AllowGet);
            }

        }



    }
}