
 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;

namespace WebCenter.IServices
{
    public partial interface Iwebsite_settingService : IBaseService<website_setting>
    {
        IList<website_setting> getWebSettingList(int webSiteid);
         
    }
}
