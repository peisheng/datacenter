 

using WebCenter.Entities;

namespace WebCenter.IDAL
{
   
	
    public partial interface IcompanyRepository :IBaseRepository<company>
    {         
    }
	
    public partial interface Ioperate_logRepository :IBaseRepository<operate_log>
    {         
    }
	
    public partial interface Iproject_caseRepository :IBaseRepository<project_case>
    {         
    }
	
    public partial interface IsequenceRepository :IBaseRepository<sequence>
    {         
    }
	
    public partial interface Isys_dictionaryRepository :IBaseRepository<sys_dictionary>
    {         
    }
	
    public partial interface Isys_userRepository :IBaseRepository<sys_user>
    {         
    }
	
    public partial interface IuserRepository :IBaseRepository<user>
    {         
    }
	
}