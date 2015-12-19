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
    public class ProjectController : BaseController
    {
        public ProjectController(IUnitOfWork UOF)
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
        [HttpGet]

        public ActionResult List(int page_index = 0, int page_size = 20, string keyword = "", int company_id = 0)
        {

            Expression<Func<project_case, bool>> condition = prj => true;
            if (!string.IsNullOrEmpty(keyword))
            {
                Expression<Func<project_case, bool>> tmp = prj => prj.title.IndexOf(keyword)>-1 || prj.descript.IndexOf(keyword)>-1;
                condition = tmp;
            }
            if (company_id > 0)
            {
                Expression<Func<project_case, bool>> tmp = prj => prj.company.Id == company_id;
                condition = tmp;
            }
            PagedList<project_case> list = Uof.Iproject_caseService.GetAll(condition).OrderByDescending(item => item.Id).ToPagedList(page_index, page_size);
            var obj = new ArrayList();
            foreach (var item in list)
            {
                var it = new
                {
                    id = item.Id,
                    title = item.title,
                    descript=item.descript,
                    type_name = item.sys_dictionary == null ? "" : item.sys_dictionary.value,
                    view_count = item.view_count,
                    publish_time=item.publish_time,
                    is_company_intro=item.is_company_intro                    
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
        /// 文章发布与编辑
        /// </summary>
        /// <param name="proj"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Save(project_case proj)
        {
            if (proj != null && proj.Id > 0)
            {
                proj.update_time = DateTime.Now;
                Uof.Iproject_caseService.UpdateEntity(proj);
                return Json(new {result=true});
            }
            else if (proj != null && proj.Id == 0)
            {
                proj = Uof.Iproject_caseService.AddEntity(proj);
                if (proj.is_company_intro > 0)
                {
                    company com = Uof.IcompanyService.GetById(proj.company_id.Value);
                    com.introduce_page_id = proj.Id;
                    com.update_time = DateTime.Now;
                    Uof.IcompanyService.UpdateEntity(com);
                    return Json(new { result = true });

                }
            }
            else
            {
                return Json(new { result = false });
            }
            return Json(new { result = false });
        }

        /// <summary>
        /// 删除文章
        /// </summary>
        /// <returns></returns>
        public ActionResult Delete(int id=0)
        {
            if (id > 0)
            {
              bool b=  Uof.Iproject_caseService.DeleteEntity(id);
              if (b)
              {
                  return Json(new { result = true });
              }
              else {
                  return Json(new { result = false });
              }
            }
            return Json(new { result = false });            
        }

       
        
 
    }
}