 

 

namespace WebCenter.IServices
{
 
    public partial interface IUnitOfWork
{  
	
	  IcategoryService IcategoryService{get;set;} 
	
	  Icontact_msgService Icontact_msgService{get;set;} 
	
	  IdictionaryService IdictionaryService{get;set;} 
	
	  IimageService IimageService{get;set;} 
	
	  Ioperate_logService Ioperate_logService{get;set;} 
	
	  IpageService IpageService{get;set;} 
	
	  IproductService IproductService{get;set;} 
	
	  IsettingService IsettingService{get;set;} 
	
	  Isys_userService Isys_userService{get;set;} 
	
	  IuserService IuserService{get;set;} 
	
}
}