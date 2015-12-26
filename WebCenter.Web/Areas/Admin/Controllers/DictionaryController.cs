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

        public ActionResult GetTypeDictList(string type)
        {
            var list = Uof.Isys_dictionaryService.GetAll(p => p.group == type).ToList();
            var obj = list.Select(item => new
            {
                id = item.id,
                value = item.value,
                group = item.group
            });
            return Json(obj, JsonRequestBehavior.AllowGet);
        }

        public ActionResult GetCompanyTypeList()
        {
            return this.GetTypeDictList("公司类型");
        }

        public ActionResult GetArticleTypeList()
        {
            return this.GetTypeDictList("文章标签");
        }

        public ActionResult GetDictById(int id)
        {

            var dict = Uof.Isys_dictionaryService.GetById(id);
            var obj = new
            {
                id = dict.id,
                name = dict.name,
                value = dict.value,
                group = dict.group
            };
            return Json(obj, JsonRequestBehavior.AllowGet);
        }

        /// <summary>
        /// 字典列表
        /// </summary>
        /// <param name="page_index"></param>
        /// <param name="page_size"></param>
        /// <param name="group"></param>
        /// <returns></returns>
        public ActionResult List(int page_index = 1, int page_size = 20, string group = "")
        {

            Expression<Func<sys_dictionary, bool>> condition = dict => true;
            if (!string.IsNullOrEmpty(group))
            {
                string gro = group.Trim();
                Expression<Func<sys_dictionary, bool>> tmp = dict => dict.group == gro;
                condition = tmp;
            }
            PagedList<sys_dictionary> list = Uof.Isys_dictionaryService.GetAll(condition).OrderByDescending(item => item.id).ToPagedList(page_index, page_size);
            if (list != null)
            {
                ArrayList al = new ArrayList();
                foreach (var item in list)
                {
                    var obj = new
                    {
                        id = item.id,
                        name = item.name,
                        group = item.group,
                        value = item.value
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

        /// <summary>
        /// add & edit
        /// </summary>
        /// <param name="dict"></param>
        /// <returns></returns>
        [Authorize]
        [HttpPost]
        public ActionResult Save(sys_dictionary dict)
        {
            if (dict != null && dict.id > 0)
            {
                Uof.Isys_dictionaryService.UpdateEntity(dict);
            }
            else
            {
                Uof.Isys_dictionaryService.AddEntity(dict);
            }
            return Json(new { result = false });
        }

        /// <summary>
        /// delete
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        [Authorize]
        [HttpGet]
        public ActionResult Delete(int id = 0)
        {
            if (id > 0)
            {
                bool b = Uof.Isys_dictionaryService.DeleteEntity(id);
                if (b)
                {
                    return Json(new { result = true });
                }
            }

            return Json(new { result = false });
        }


    }
}