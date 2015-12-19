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
    public class CompanyController : BaseController
    {
        public CompanyController(IUnitOfWork UOF)
            : base(UOF)
        {

        }

        /// <summary>
        ///     company list
        /// </summary>
        /// <param name="page_index"></param>
        /// <param name="page_size"></param>
        /// <param name="keyword"></param>
        /// <returns></returns>
        public ActionResult List(int page_index, int page_size, string keyword = "")
        {
            Expression<Func<company, bool>> condition = com => true;
            if (!string.IsNullOrEmpty(keyword))
            {
                Expression<Func<company, bool>> tmp = com => com.name.IndexOf(keyword)>-1;
                condition = tmp;
            }
            PagedList<company> list = Uof.IcompanyService.GetAll(condition).OrderByDescending(item => item.Id).ToPagedList(page_index, page_size);

            List<int> listId = list.Select(p => p.Id).ToList();
            var companyList = Uof.IuserService.GetAll(item => listId.Contains(item.Id)).GroupBy(item => item.company_id).Select(item => new { companyId = item.Key, count = item.Count() }).ToList();
            var obj = new ArrayList();
            foreach (var item in list)
            {
                var it = new
                {
                    id = item.Id,
                    name = item.name,
                    type_name = item.sys_dictionary == null ? "" : item.sys_dictionary.value,
                    city_name = item.city == null ? "" : item.city.city_name,
                    author_name = item.user == null ? "" : item.user.real_name,
                    view_count = 0,
                    article_count = item.project_case1.Count,
                    logo_path = item.logo_path,
                    member_count = companyList.FirstOrDefault(x => x.companyId == item.Id) == null ? 0 : companyList.FirstOrDefault(x => x.companyId == item.Id).count,
                    create_time = item.create_time
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
        /// 保存公司
        /// </summary>
        /// <param name="com"></param>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Save(company com)
        {
            company _company = null;
            if (com != null)
            {
                _company = new company();
                _company.address = com.address;
                _company.city_id = com.city_id;
                _company.company_image_path = "";
                _company.logo_path = com.logo_path;
                _company.site_url = com.site_url;
                _company.type_id = com.type_id;
                _company.create_time = DateTime.Now;
                _company.Id = com.Id;
                if (_company.Id > 0)
                    Uof.IcompanyService.UpdateEntity(_company);
                else
                {
                    _company = Uof.IcompanyService.AddEntity(_company);
                }

                var obj = new
                {
                    company_id = _company.Id,
                    result = true
                };
                return Json(obj);
            }
            return Json(new { result = false });

        }

        /// <summary>
        /// get company details info
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Get(int id)
        {
            if (id > 0)
            {

                company com = Uof.IcompanyService.GetById(id);
                if (com != null && com.user != null)
                {
                    var obj = new
                    {
                        id = com.Id,
                        name = com.name,
                        type_id = com.type_id,
                        type_name = com.sys_dictionary == null ? "" : com.sys_dictionary.value,
                        city_id = com.city_id,
                        city_name = com.city == null ? "" : com.city.city_name,
                        address = com.address,
                        site_url = com.site_url,
                        logo_path = com.logo_path,
                        contact_info = new
                        {
                            user_name = com.user.user_name,
                            real_name = com.user.real_name,
                            qq_number = com.user.qq_number,
                            phone = com.user.phone,
                            mobile = com.user.mobile,
                            email = com.user.email
                        }
                    };
                    return Json(obj, JsonRequestBehavior.AllowGet);
                }
                else if (com != null && com.user == null)
                {
                    var obj = new
                    {
                        id = com.Id,
                        name = com.name,
                        type_id = com.type_id,
                        type_name = com.sys_dictionary == null ? "" : com.sys_dictionary.value,
                        city_id = com.city_id,
                        city_name = com.city == null ? "" : com.city.city_name,
                        address = com.address,
                        site_url = com.site_url,
                        logo_path = com.logo_path,
                        contact_info = ""
                    };
                    return Json(obj, JsonRequestBehavior.AllowGet);
                }

            }
            return Json(new { result = false }, JsonRequestBehavior.AllowGet);

        }

        /// <summary>
        /// 取得公司的所有分页用户
        /// </summary>
        /// <param name="company_id"></param>
        /// <param name="page_index"></param>
        /// <param name="page_size"></param>
        /// <param name="keyword"></param>
        /// <returns></returns>
        public ActionResult GetUsers(int company_id, int page_index = 1, int page_size = 20, string keyword = "")
        {
            if (company_id > 0)
            {
                Expression<Func<user, bool>> condition = _user => true;
                if (!string.IsNullOrEmpty(keyword))
                {
                    Expression<Func<user, bool>> tmp = _user => (_user.user_name.IndexOf(keyword) > -1 || _user.real_name.IndexOf(keyword)>-1) && _user.company_id == company_id;
                    condition = tmp;
                }
                else
                {
                    Expression<Func<user, bool>> tmp = _user => _user.company_id == company_id;
                    condition = tmp;
                }
                PagedList<user> list = Uof.IuserService.GetAll(condition).OrderByDescending(it => it.Id).ToPagedList(page_index, page_size);
                ArrayList al = new ArrayList();
                foreach (var item in list)
                {
                    var obj = new
                    {
                        id = item.Id,
                        user_name = item.user_name,
                        real_name = item.real_name,
                        qq_number = item.qq_number,
                        phone = item.phone,
                        mobile = item.mobile,
                        email = item.email
                    };
                    al.Add(obj);
                }
                var retObj = new
                {
                    total_count = list.TotalCount,
                    current_page = page_index,
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
        /// remove the company by the id
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public ActionResult Delete(int id = 0)
        {
            if (id > 0)
            {
                bool b = Uof.IcompanyService.DeleteEntity(id);
                if (b)
                {
                    return Json(new { result = true }, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(new { result = false }, JsonRequestBehavior.AllowGet);
        }
    }
}