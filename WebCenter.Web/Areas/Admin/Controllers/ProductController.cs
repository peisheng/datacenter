﻿using Common;
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
    public class ProductController : BaseController
    {
        public ProductController(IUnitOfWork UOF)
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

        public ActionResult List(int page_index = 0, int page_size = 20, string keyword = "")
        {

            Expression<Func<product, bool>> condition = pro => true;
            if (!string.IsNullOrEmpty(keyword))
            {
                Expression<Func<product, bool>> tmp = prj => prj.product_name.IndexOf(keyword) > -1 || prj.product_desc.IndexOf(keyword) > -1;
                condition = tmp;
            }

            PagedList<product> list = Uof.IproductService.GetAll(condition).OrderByDescending(item => item.id).ToPagedList(page_index, page_size);

            var obj = new ArrayList();
            foreach (var item in list)
            {
                var it = new
                {
                    id = item.id,
                    name = item.product_name,
                    desc = item.product_desc,
                    main_imgurl = item.main_image_id,

                };
                obj.Add(it);
            }
            var result = new
            {
                total_count = list.TotalCount,
                current_page = page_index,
                page_size = page_size,
                items = obj
            };
            return Json(result, JsonRequestBehavior.AllowGet);
        }
        /// <summary>
        /// 取得产口详细
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Get(int id)
        {
            if (id <= 0)
                return ErrorResult;
            product pro = Uof.IproductService.GetById(id);
            return Json(pro, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Save(string productObj,string imageids)
        {
            product prod = JsonConvert.DeserializeObject<product>(productObj);
            if (prod != null)
            {
                if (prod.id > 0)
                {
                    //save prod
                }
                else
                {
                    //add prod
                }
                return Json(prod);
                
            }
            return ErrorResult;
        }
        public ActionResult Delete(int id)
        {
            var b=Uof.IproductService.DeleteEntity(id);
            if(b)
            {
                return SuccessResult;
            }
            else
                return ErrorResult;
        }



    }
}