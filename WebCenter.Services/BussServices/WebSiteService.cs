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
    public partial class websiteService : BaseService<website>, IwebsiteService
    {
        string cachekey = "WebSiteCache";


        public website getWebSite(string sitename, int siteID = 0)
        {
            var cache = CacheUtil.Cache;
            if (cache.Get(cachekey) != null)
            {
                return cache.Get(cachekey) as website;
            }
            else
            {
                if (!string.IsNullOrEmpty(sitename))
                {
                    website site = this.GetAll(p => p.Name == sitename).FirstOrDefault();
                    if (site != null)
                    {
                        cache.Add(cachekey, site);
                    }
                    return site;
                }
                else
                {
                    website site = this.GetById(siteID);
                    if (site != null)
                        cache.Add(cachekey, site);
                    return site;
                }
            }

        }
    }
}
