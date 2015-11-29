using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using WebCenter.Entities;
using WebCenter.IServices;
 
using CacheManager.Core;
using Common;
namespace WebCenter.Services
{
    public partial class article_websiteService : BaseService<article_website>, Iarticle_websiteService
    {
        string cachekey = "ArticleWebSiteCache";
        public IList<article_website> getWebSiteArticle(int websiteID, int categoryID = 0, int top = 1000)
        {
            cachekey += categoryID.ToString() + top.ToString();
            var cache = CacheUtil.Cache;
            if (cache.Get(cachekey) != null)
            {
                return cache.Get(cachekey) as IList<article_website>;
            }
            else
            {
                if (categoryID == 0)
                {
                    IList<article_website> list = this.GetAll(p => p.WebsiteId == websiteID).OrderByDescending(p => p.ArticleId).Take(top).ToList();
                    cache.Add(cachekey, list);
                    
                    return list;
                }
                else
                {
                    IList<article_website> list = this.GetAll(p => p.WebsiteId == websiteID && p.article.CategoryId == categoryID).OrderByDescending(p => p.ArticleId).Take(top).ToList();
                    cache.Add(cachekey, list);
                    return list;
                }
            }
        }
    }
}
