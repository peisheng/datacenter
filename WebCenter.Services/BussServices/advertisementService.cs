using CacheManager.Core;
using Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;
using WebCenter.IServices;
using WebCenter.Services;

namespace WebCenter.Services
{
    public partial class advertisementService : BaseService<advertisement>, IadvertisementService
    {
      string cacheKey = "AdvertisementCache";


      public IList<advertisement> getAdvertisementList(int websiteID)
        {
            var cache = CacheUtil.Cache;
            if (cache.Get(cacheKey) != null)
            {
                return cache.Get(cacheKey) as IList<advertisement>;
            }
            else
            {
                IList<advertisement> list = this.GetAll(p => p.WebsiteId == websiteID && p.BeginDate >= DateTime.Now && p.EndDate <= DateTime.Now).ToList();                
                cache.Add(cacheKey,list);
                return list;
            }
        }


    }
}
