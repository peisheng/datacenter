 

 using WebCenter.IServices;

namespace WebCenter.Services
{
 
    public partial class UnitOfWork:IUnitOfWork
{  
	
  [Ninject.Inject]
	 public  IadvertisementService IadvertisementService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iadvertisement_typeService Iadvertisement_typeService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iadvertisement_vistedlogService Iadvertisement_vistedlogService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IarticleService IarticleService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iarticle_contentsService Iarticle_contentsService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iarticle_imagesService Iarticle_imagesService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iarticle_keywordService Iarticle_keywordService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iarticle_websiteService Iarticle_websiteService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ibase_actionService Ibase_actionService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ibase_roleService Ibase_roleService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ibase_role_actionService Ibase_role_actionService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ibase_userService Ibase_userService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ibase_user_roleService Ibase_user_roleService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IcategoryService IcategoryService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IcommentService IcommentService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IkeywordService IkeywordService
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
	 public  Ispider_contentService Ispider_contentService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ispider_keywordService Ispider_keywordService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ispider_linkService Ispider_linkService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Ivisited_logService Ivisited_logService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  IwebsiteService IwebsiteService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iwebsite_categoryService Iwebsite_categoryService
    {
        get;
        set;
    } 
	
  [Ninject.Inject]
	 public  Iwebsite_settingService Iwebsite_settingService
    {
        get;
        set;
    } 
	
}
}