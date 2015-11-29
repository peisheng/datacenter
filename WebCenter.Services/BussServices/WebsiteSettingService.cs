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
    public partial class website_settingService : BaseService<website_setting>, Iwebsite_settingService
    {
        private string cachekey = "WebSiteSettingCache";


        public IList<website_setting> getWebSettingList(int siteID)
        {
            var cache = CacheUtil.Cache;
            if (cache.Get(cachekey) != null)
            {
                return cache.Get(cachekey) as IList<website_setting>;
            }
            else
            {
                IList<website_setting> list = this.GetAll(p => p.WebsiteId == siteID).ToList();
                cache.Add(cachekey,list);
                return list;
            }
        }
    }
}
