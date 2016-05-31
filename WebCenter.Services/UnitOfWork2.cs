 

 using WebCenter.IServices;

namespace WebCenter.Services
{
 
    public partial class UnitOfWork:IUnitOfWork
{  
	
  [Ninject.Inject]
	 public  IcategoryService IcategoryService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Icontact_msgService Icontact_msgService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IdictionaryService IdictionaryService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IimageService IimageService
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
	 public  IpageService IpageService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IproductService IproductService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IsettingService IsettingService
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