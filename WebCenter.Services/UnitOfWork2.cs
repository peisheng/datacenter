 

 using WebCenter.IServices;

namespace WebCenter.Services
{
 
    public partial class UnitOfWork:IUnitOfWork
{  
	
  [Ninject.Inject]
	 public  IcompanyService IcompanyService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ioperate_logService Ioperate_logService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iproject_caseService Iproject_caseService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IsequenceService IsequenceService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Isys_dictionaryService Isys_dictionaryService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Isys_userService Isys_userService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IuserService IuserService
    {
        get;
        set;
    } 
	
}
}