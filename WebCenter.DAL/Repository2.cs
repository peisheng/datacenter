 

using WebCenter.IDAL;
using WebCenter.Entities;

namespace WebCenter.DAL
{
   
	
	public partial class companyRepository :BaseRepository<company>,IcompanyRepository
    {
         
    }
	
	public partial class operate_logRepository :BaseRepository<operate_log>,Ioperate_logRepository
    {
         
    }
	
	public partial class project_caseRepository :BaseRepository<project_case>,Iproject_caseRepository
    {
         
    }
	
	public partial class sys_dictionaryRepository :BaseRepository<sys_dictionary>,Isys_dictionaryRepository
    {
         
    }
	
	public partial class sys_userRepository :BaseRepository<sys_user>,Isys_userRepository
    {
         
    }
	
	public partial class userRepository :BaseRepository<user>,IuserRepository
    {
         
    }
	
}