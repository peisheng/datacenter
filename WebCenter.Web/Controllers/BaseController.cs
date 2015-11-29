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
using WebCenter.Web.Models;


namespace WebCenter.Web.Controllers
{
    public class BaseController : Controller
    {
        protected IList<website_setting> SettingList { get; set; }
        protected ICache<object> Cache;
        protected IUnitOfWork Uof;


        protected int WebStieId = Convert.ToInt32(ConfigurationManager.AppSettings["WebSiteId"].ToString());
        public BaseController(IUnitOfWork uof)
        {
            Uof = uof;
            Cache = CacheUtil.Cache;
            ViewBag.SiteSetting = getSiteSetting();
        }

        private SiteSetting getSiteSetting()
        {
            if (Cache.Get(CacheKeys.BaseControllerCache) != null)
            {
                return Cache.Get(CacheKeys.BaseControllerCache) as SiteSetting;
            }
            else
            {
                SiteSetting set = new SiteSetting();
                website site = Uof.IwebsiteService.getWebSite(null, WebStieId);
                set.SiteCate = Uof.Iwebsite_categoryService.getWebSiteCategory(WebStieId);
                set.SiteSettings = Uof.Iwebsite_settingService.getWebSettingList(WebStieId);
                website_setting setting = set.SiteSettings.Where(p => p.SettingKey.Trim() == "keywords" && p.SettingGroupName.Trim() == "meta").FirstOrDefault();
                if (setting != null)
                {
                    set.MetaKeyWord = setting.SettingValue;
                }
                setting = set.SiteSettings.Where(p => p.SettingKey.Trim() == "description" && p.SettingGroupName.Trim() == "meta").FirstOrDefault();
                if (setting != null)
                {
                    set.MetaDescription = setting.SettingValue;
                }
                if (site != null)
                {
                    set.SiteNameCN = site.SiteNameCn;
                    set.SiteUrl = site.SiteUrl;
                }
                set.FriendyLinks = set.SiteSettings.Where(p => p.SettingGroupName.Trim() == "friendlinks").ToList();
                set.StaticPages = set.SiteSettings.Where(p => p.SettingGroupName.Trim() == "staticpages").ToList();
                Cache.Add(CacheKeys.BaseControllerCache, set);
                return set;
            }
        }






    }
}