 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;

namespace WebCenter.IServices
{
    public partial interface IadvertisementService :  IBaseService<advertisement>
    {
        IList<advertisement> getAdvertisementList(int websiteID);
    }
}
