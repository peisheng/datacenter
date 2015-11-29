 

 

namespace WebCenter.IServices
{
 
    public partial interface IUnitOfWork
{  
	
	  IadvertisementService IadvertisementService{get;set;} 
	
	  Iadvertisement_typeService Iadvertisement_typeService{get;set;} 
	
	  Iadvertisement_vistedlogService Iadvertisement_vistedlogService{get;set;} 
	
	  IarticleService IarticleService{get;set;} 
	
	  Iarticle_contentsService Iarticle_contentsService{get;set;} 
	
	  Iarticle_imagesService Iarticle_imagesService{get;set;} 
	
	  Iarticle_keywordService Iarticle_keywordService{get;set;} 
	
	  Iarticle_websiteService Iarticle_websiteService{get;set;} 
	
	  Ibase_actionService Ibase_actionService{get;set;} 
	
	  Ibase_roleService Ibase_roleService{get;set;} 
	
	  Ibase_role_actionService Ibase_role_actionService{get;set;} 
	
	  Ibase_userService Ibase_userService{get;set;} 
	
	  Ibase_user_roleService Ibase_user_roleService{get;set;} 
	
	  IcategoryService IcategoryService{get;set;} 
	
	  IcommentService IcommentService{get;set;} 
	
	  IkeywordService IkeywordService{get;set;} 
	
	  IsequenceService IsequenceService{get;set;} 
	
	  Ispider_contentService Ispider_contentService{get;set;} 
	
	  Ispider_keywordService Ispider_keywordService{get;set;} 
	
	  Ispider_linkService Ispider_linkService{get;set;} 
	
	  Ivisited_logService Ivisited_logService{get;set;} 
	
	  IwebsiteService IwebsiteService{get;set;} 
	
	  Iwebsite_categoryService Iwebsite_categoryService{get;set;} 
	
	  Iwebsite_settingService Iwebsite_settingService{get;set;} 
	
}
}