 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;
namespace WebCenter.IServices
{
    public partial interface Iwebsite_categoryService : IBaseService<website_category>
    {
        IList<website_category> getWebSiteCategory(int webSiteID);
    }
}
