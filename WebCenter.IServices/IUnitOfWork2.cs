 

 

namespace WebCenter.IServices
{
 
    public partial interface IUnitOfWork
{  
	
	  IcityService IcityService{get;set;} 
	
	  IcompanyService IcompanyService{get;set;} 
	
	  Ioperate_logService Ioperate_logService{get;set;} 
	
	  Iproject_caseService Iproject_caseService{get;set;} 
	
	  IsequenceService IsequenceService{get;set;} 
	
	  Isys_dictionaryService Isys_dictionaryService{get;set;} 
	
	  Isys_userService Isys_userService{get;set;} 
	
	  IuserService IuserService{get;set;} 
	
}
}