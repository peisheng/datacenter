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
    public class UserController : BaseController
    {
        public UserController(IUnitOfWork UOF)
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
        [Authorize]
        public ActionResult List(int page_index, int page_size, string keyword = "", int company_id = 0)
        {
            Expression<Func<company, bool>> condition = com => true;
            if (!string.IsNullOrEmpty(keyword))
            {
                Expression<Func<company, bool>> tmp = com => com.name.IndexOf(keyword) > -1;
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
                    create_time = item.create_time.GetValueOrDefault(new DateTime(2000, 01, 01)).ToString("yyyy-MM-dd HH:mm:ss")
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
        [Authorize]
        [HttpPost]
        public ActionResult Save(string contact)
        {
            JsonSerializerSettings setting = new JsonSerializerSettings();
            user _user = new user();
            _user = JsonConvert.DeserializeObject<user>(contact);

            if (_user != null)
            {
                
                if (_user.Id > 0)
                {
                    Uof.IuserService.UpdateEntity(_user);
                }
                else
                {
                    _user = Uof.IuserService.AddEntity(_user);
                }
                if (_user.is_admin.HasValue && _user.is_admin.Value == 1)
                {
                    company com = null;
                    if (_user.company_id.HasValue)
                        com = Uof.IcompanyService.GetById(_user.company_id.Value);
                    if (com != null)
                    {
                        com.contact_name = _user.real_name;
                        com.email = _user.email;
                        com.phone = _user.phone;
                        com.mobile = _user.mobile;
                        com.user_id = _user.Id;
                        Uof.IcompanyService.UpdateEntity(com);
                    }
                   
                }
                var obj = new
                {
                    user_id = _user.Id,
                    result = true
                };
                return Json(obj);
            }
            return Json(new { result = false });



        }

        [Authorize]
        [HttpPost]
        public ActionResult Delete(int id)
        {
            if (id>0)
            {
             bool b=    Uof.IuserService.DeleteEntity(id);
             return Json(new { result=b});
                
            }

            return Json(new { result = false});
        }

        [Authorize]
        public ActionResult Get(int id)
        {
            if (id > 0)
            {
              user _user = Uof.IuserService.GetById(id);
              var obj = new { 
                  id=_user.Id,
                  user_name=_user.user_name,
                  real_name=_user.real_name,
                  phone=_user.phone,
                  mobile=_user.mobile,
                  email=_user.email,
                  is_admin=_user.is_admin,
                  company_id=_user.company_id
              };
              return Json(obj,JsonRequestBehavior.AllowGet);
            }
            return Json(new { result = false },JsonRequestBehavior.AllowGet);
        }

        

    }
}