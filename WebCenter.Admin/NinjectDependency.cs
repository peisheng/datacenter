 

using System;
using System.Collections.Generic;
using System.Web.Mvc;
using WebCenter.Entities;
using Ninject;
using Ninject.Web.Common;
using WebCenter.IServices;
using WebCenter.Services;
namespace WebCenter.Admin.Infrastructure
{

public partial class  NinjectDependencyResolver:IDependencyResolver
{
 
private void AutoAddBinds()
{
	
	   kernel.Bind<IadvertisementService>().To<advertisementService>().InSingletonScope();
	
	   kernel.Bind<Iadvertisement_typeService>().To<advertisement_typeService>().InSingletonScope();
	
	   kernel.Bind<Iadvertisement_vistedlogService>().To<advertisement_vistedlogService>().InSingletonScope();
	
	   kernel.Bind<IarticleService>().To<articleService>().InSingletonScope();
	
	   kernel.Bind<Iarticle_contentsService>().To<article_contentsService>().InSingletonScope();
	
	   kernel.Bind<Iarticle_imagesService>().To<article_imagesService>().InSingletonScope();
	
	   kernel.Bind<Iarticle_keywordService>().To<article_keywordService>().InSingletonScope();
	
	   kernel.Bind<Iarticle_websiteService>().To<article_websiteService>().InSingletonScope();
	
	   kernel.Bind<Ibase_actionService>().To<base_actionService>().InSingletonScope();
	
	   kernel.Bind<Ibase_roleService>().To<base_roleService>().InSingletonScope();
	
	   kernel.Bind<Ibase_role_actionService>().To<base_role_actionService>().InSingletonScope();
	
	   kernel.Bind<Ibase_userService>().To<base_userService>().InSingletonScope();
	
	   kernel.Bind<Ibase_user_roleService>().To<base_user_roleService>().InSingletonScope();
	
	   kernel.Bind<IcategoryService>().To<categoryService>().InSingletonScope();
	
	   kernel.Bind<IcommentService>().To<commentService>().InSingletonScope();
	
	   kernel.Bind<IkeywordService>().To<keywordService>().InSingletonScope();
	
	   kernel.Bind<IsequenceService>().To<sequenceService>().InSingletonScope();
	
	   kernel.Bind<Ispider_contentService>().To<spider_contentService>().InSingletonScope();
	
	   kernel.Bind<Ispider_keywordService>().To<spider_keywordService>().InSingletonScope();
	
	   kernel.Bind<Ispider_linkService>().To<spider_linkService>().InSingletonScope();
	
	   kernel.Bind<Ivisited_logService>().To<visited_logService>().InSingletonScope();
	
	   kernel.Bind<IwebsiteService>().To<websiteService>().InSingletonScope();
	
	   kernel.Bind<Iwebsite_categoryService>().To<website_categoryService>().InSingletonScope();
	
	   kernel.Bind<Iwebsite_settingService>().To<website_settingService>().InSingletonScope();
  kernel.Bind<IUnitOfWork>().To<UnitOfWork>().InSingletonScope();

}
  

}
}