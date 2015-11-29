using CacheManager.Core;
using Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;
using WebCenter.IServices;


namespace WebCenter.Services
{
    public partial class website_categoryService : BaseService<website_category>,Iwebsite_categoryService
    {
        string cachekey = "WebSiteCategoryCache";



        public IList<website_category> getWebSiteCategory(int webSiteID)
        {
            var cache = CacheUtil.Cache;
            if (cache.Get(cachekey) != null)
            {
                return cache.Get(cachekey) as IList<website_category>;
            }
            else
            {
                IList<website_category> list = this.GetAll(p => p.WebsiteId == webSiteID).ToList();
                cache.Add(cachekey,list);
                return list;
            }           
        }
    }
}
