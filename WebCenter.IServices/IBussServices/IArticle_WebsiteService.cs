 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using WebCenter.Entities;

namespace WebCenter.IServices
{
    public partial interface Iarticle_websiteService : IBaseService<article_website>
    {
        IList<article_website> getWebSiteArticle(int websiteID, int categoryID = 0, int top = 1000);
    }
}
