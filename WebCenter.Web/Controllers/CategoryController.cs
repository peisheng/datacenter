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
    public class CategoryController : BaseController
    {


        public CategoryController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index(int id, string CategoryName = "")
        {
            category cate = Uof.IcategoryService.GetById(id);
            if (cate != null)
            {
                CategoryModel model = new CategoryModel();
                model.CategoryName = cate.category_name;
                model.Id = cate.id;
                var query = cate.products.ToList();
                var queryList = new List<product>();
                foreach (var item in query)
                {
                    if (string.IsNullOrEmpty(item.seo_link_text))
                    {
                        item.seo_link_text = item.product_name.Replace('&', ' ').Replace('.', ' ').Replace('/', ' ');
                    }
                    queryList.Add(item);
                }
                model.ProdList = queryList;
                model.ParentCates = new List<category>();
                if (cate.parent_id.GetValueOrDefault(0) > 0)
                {
                    category cateP = Uof.IcategoryService.GetAll(p => p.id == cate.parent_id).FirstOrDefault();
                    if (cateP != null)
                    {
                        model.ParentCates.Add(cateP);
                        if (cateP.parent_id.GetValueOrDefault(0) > 0)
                        {
                            category catePp = Uof.IcategoryService.GetAll(p => p.id == cateP.parent_id).FirstOrDefault();
                            if (catePp != null)
                            {
                                model.ParentCates.Add(catePp);
                            }
                        }
                    }
                    model.ParentCates.Add(cate);
                }
                var subCates = Uof.IcategoryService.GetAll(p => p.parent_id == cate.id).ToList();
                if (subCates.Count > 0)
                {
                    model.SubCates = subCates;
                    foreach (var item in subCates)
                    {
                        var subProducts = item.products.ToList();
                        var subQuqeyList = new List<product>();
                        foreach (var subitem in subProducts)
                        {
                            if (string.IsNullOrEmpty(subitem.seo_link_text))
                            {
                                subitem.seo_link_text = subitem.product_name.Replace('&', ' ').Replace('.', ' ').Replace('/', ' ').Replace('+',' ');
                            }
                            subQuqeyList.Add(subitem);
                        }
                        if (subQuqeyList.Count > 0)
                        {
                            model.ProdList.AddRange(subQuqeyList);
                        }
                    }
                }
                else
                {
                    model.SubCates = new List<category>();
                }
                return View(model);
            }
            else
            {
                return Content("页面不存在");
            }

        }
        [HttpPost]
        public ActionResult Login(string userName, string password)
        {
            FormsAuthentication.SetAuthCookie(userName, true);
            return null;
        }


    }
}