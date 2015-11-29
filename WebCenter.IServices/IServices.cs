 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebCenter.Entities;

namespace WebCenter.IServices
{
   
	
	public partial interface IcompanyService:IBaseService<company>
    {   
    }
	
	public partial interface Ioperate_logService:IBaseService<operate_log>
    {   
    }
	
	public partial interface Iproject_caseService:IBaseService<project_case>
    {   
    }
	
	public partial interface Isys_dictionaryService:IBaseService<sys_dictionary>
    {   
    }
	
	public partial interface Isys_userService:IBaseService<sys_user>
    {   
    }
	
	public partial interface IuserService:IBaseService<user>
    {   
    }
	
}