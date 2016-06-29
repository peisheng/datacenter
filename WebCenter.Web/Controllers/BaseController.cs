using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using CacheManager.Core;
using System.Configuration;
using Common;
using Newtonsoft.Json;
using WebCenter.Web.Code;
using System.Collections;



namespace WebCenter.Web.Controllers
{
    [JsonObject(IsReference = true)]
    public class BaseController : Controller
    {

        protected ICache<object> Cache;
        protected IUnitOfWork Uof;



        public BaseController(IUnitOfWork uof)
        {
            Uof = uof;
            Cache = CacheUtil.Cache;
            ViewBag.Cates = getCates();
            ViewBag.ParentCates = getParentCates();
           // ViewBag.MetaData = getSettings();
            ReadMetaData();

        }

        private Dictionary<category, List<category>> getCates()
        {
            var cateObj = Cache.Get(CacheKeys.BaseCateCacheKey);
            if (cateObj == null)
            {
                Dictionary<category, List<category>> dict = new Dictionary<category, List<category>>();
                var list = Uof.IcategoryService.GetAll(p => p.parent_id == null || p.parent_id == 0).ToList();
                if (list.Count > 0)
                {
                    foreach (var item in list)
                    {
                        var inList = Uof.IcategoryService.GetAll(p => p.parent_id == item.id).ToList();
                        if (inList.Count > 0)
                        {
                            if (!dict.ContainsKey(item))
                            {
                                dict.Add(item, inList);
                            }
                           
                        }
                    }
                    Cache.Add(CacheKeys.BaseCateCacheKey, dict);
                    return dict;
                }
            }
            else
            {
                return cateObj as Dictionary<category, List<category>>;
            }
            return null;
        }

        private List<category> getParentCates()
        {
            var cateObj = Cache.Get(CacheKeys.ParentCatesCacheKey) as List<category>;
            if (cateObj == null)
            {
             
                var list = Uof.IcategoryService.GetAll(p => p.parent_id == 0 || p.parent_id == null).ToList();
                if(list!=null)
                {
                      Cache.Add(CacheKeys.ParentCatesCacheKey, list); 
                    cateObj=list;
                }
                  
                
            }
            return cateObj;
          
        }
        private void ReadMetaData()
        {
            Hashtable table = getSettings();
            if (table.ContainsKey("title"))
            {
                try {  
                    ViewBag.Title = table["title"].ToString();
                }
                catch { }
             
            }
            if (table.ContainsKey("desc"))
            {
                try
                {
                    ViewBag.Desc = table["desc"].ToString();
                }
                catch { }
              
            }
            if (table.ContainsKey("keywords"))
            {
                try
                {  
                    ViewBag.Keywords = table["keywords"].ToString();
                }
                catch { }
              
            }
            if (table.ContainsKey("logo_path"))
            {

                try
                {
                    int imgId = Convert.ToInt32(table["logo_path"]);
                    if (imgId > 0)
                    {
                        image img=Uof.IimageService.GetById(imgId);
                        if (img!=null)
                        {
                            ViewBag.LogoPath = img.image_path;
                            
                        }
 
                    } 
                }
                catch { }
              
            }
            if (table.ContainsKey("twitter_url"))
            {

                try
                { ViewBag.TwitterUrl = table["twitter_url"].ToString();
                }
                catch { }
               
            }
            if (table.ContainsKey("facebook_url"))
            {

                try
                { ViewBag.FaceBookUrl = table["facebook_url"].ToString();
                }
                catch { }
               
            }
            if (table.ContainsKey("google_plus_url"))
            {
                try
                {ViewBag.GooglePlusUrl = table["google_plus_url"].ToString();
                }
                catch { }
                
            }
            if (table.ContainsKey("instagram_url"))
            {
                try
                {
                    ViewBag.InstagramUrl = table["instagram_url"].ToString();
                }
                catch { }
               
            }
            if (table.ContainsKey("copy_right"))
            {
                try
                { 
                    ViewBag.CopyRight = table["copy_right"].ToString();
                }
                catch { }
               
            }
            if (table.ContainsKey("play_images"))
            {
                try
                { 
                    ViewBag.PlayImages = table["play_images"].ToString();
                }
                catch { }
               
            }
            
            if (table.ContainsKey("ani_code"))
            {
                try
                {   ViewBag.AniCode = table["ani_code"].ToString();
                }
                catch { }
             
            }
            if (table.ContainsKey("main_four_product_ids"))
            {
                try
                {ViewBag.MainFourProductIds = table["main_four_product_ids"].ToString();
                }
                catch { }
                
            }

        }
        private Hashtable getSettings()
        {
            var setObj = Cache.Get(CacheKeys.SettingCacehKey);
            if (setObj == null)
            {
                Hashtable hash = new Hashtable();
                var query = Uof.IsettingService.GetAll().ToList();
                if (query.Count > 0)
                {
                    foreach (var item in query)
                    {
                        if (!hash.ContainsKey(item.name))
                        {
                            hash.Add(item.name, item.value);
                        }
                       
                    }
                    Cache.Add(CacheKeys.SettingCacehKey, hash);
                    return hash;
                }
                return null;

            }
            else
            {
                return setObj as Hashtable;
            }
        }

        public ActionResult ErrorResult
        {
            get { return Json(new { result = false }, JsonRequestBehavior.AllowGet); }
        }
        public ActionResult SuccessResult
        {
            get { return Json(new { result = true }, JsonRequestBehavior.AllowGet); }
        }

        public void AddLog(string name, string descipt, string result)
        {
            operate_log log = new operate_log();
            log.create_time = DateTime.Now;
            log.desript = descipt;
            log.user_name = ControllerContext.HttpContext.User.Identity.Name;
            log.name = name;
            log.result = result;
            //Request.LogonUserIdentity
            //log.user_name = user_name;
            //log.user_id = user_id;
            Uof.Ioperate_logService.AddEntity(log);

        }

        protected override JsonResult Json(object data, string contentType, System.Text.Encoding contentEncoding, JsonRequestBehavior behavior)
        {
            return new JsonNetResult
            {
                Data = data,
                ContentType = contentType,
                ContentEncoding = contentEncoding,
                JsonRequestBehavior = behavior
            };
        }

        








    }
}