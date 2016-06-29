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
    public class ProductController : BaseController
    {


        public ProductController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index(int id,string CategoryName)
        {
           product prod=  Uof.IproductService.GetById(id);
           ProductModel model = new ProductModel();
           if (prod != null)
           {
               model.AmazonUrl = prod.amazon_url;
               model.franch_amazon_url = prod.franch_amazon_url;
               model.germany_amazon_url = prod.germany_amazon_url;
               model.Italy_amazon_url = prod.Italy_amazon_url;
               model.japan_amazon_url = prod.japan_amazon_url;
               model.spanish_amazon_url = prod.spanish_amazon_url;
               model.uk_amazon_url = prod.uk_amazon_url;
               model.Desc = prod.product_desc;
               model.Features = prod.product_features;
               model.MainImage = prod.image;
               model.ImagePaths = prod.images.ToList();
               model.Specification = prod.product_specification;
               model.ProductName = prod.product_name;
             
               model.Cates = new List<category>();
            
               if (prod.category.parent_id > 0)
               {
                   category cate = Uof.IcategoryService.GetAll(p => p.id == prod.category.parent_id).FirstOrDefault();
                   if (cate != null)
                   {
                       model.Cates.Add(cate);
                   }
               }
               model.Cates.Add(prod.category);
               if (!string.IsNullOrEmpty(prod.seo_title))
               {
                   ViewBag.Title = prod.seo_title;
               }

               if (!string.IsNullOrEmpty(prod.seo_desc))
               {
                   ViewBag.Desc = prod.seo_desc;
               }

               if (!string.IsNullOrEmpty(prod.seo_keyword))
               {
                   ViewBag.Keywords = prod.seo_keyword;
               }

               return View(model);
           }
           else
           {
               return Content("没有找到相应的产品");
           }
           
        }
        
      
    }
}