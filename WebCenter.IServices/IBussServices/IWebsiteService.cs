
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebCenter.Entities;
namespace WebCenter.IServices
{
    public partial interface IwebsiteService : IBaseService<website>
    {
        website getWebSite(string sitename = null, int site = 0);
    }
}
