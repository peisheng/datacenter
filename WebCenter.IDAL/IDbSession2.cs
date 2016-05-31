 

using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace WebCenter.IDAL
{
    public partial interface IDbSession
    {
   
	  

		IDAL.IcategoryRepository categoryRepository { get; }
	  

		IDAL.Icontact_msgRepository contact_msgRepository { get; }
	  

		IDAL.IdictionaryRepository dictionaryRepository { get; }
	  

		IDAL.IimageRepository imageRepository { get; }
	  

		IDAL.Ioperate_logRepository operate_logRepository { get; }
	  

		IDAL.IpageRepository pageRepository { get; }
	  

		IDAL.IproductRepository productRepository { get; }
	  

		IDAL.IsettingRepository settingRepository { get; }
	  

		IDAL.Isys_userRepository sys_userRepository { get; }
	  

		IDAL.IuserRepository userRepository { get; }
	}
}