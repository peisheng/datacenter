 

using System;
using System.Collections.Generic;
using System.Web.Mvc;
using WebCenter.Entities;
using Ninject;
using Ninject.Web.Common;
using WebCenter.IServices;
using WebCenter.Services;
namespace WebCenter.Web.Infrastructure
{

public partial class  NinjectDependencyResolver:IDependencyResolver
{
 
private void AutoAddBinds()
{
	
	   kernel.Bind<IcategoryService>().To<categoryService>().InRequestScope();
	
	   kernel.Bind<Icontact_msgService>().To<contact_msgService>().InRequestScope();
	
	   kernel.Bind<IdictionaryService>().To<dictionaryService>().InRequestScope();
	
	   kernel.Bind<IimageService>().To<imageService>().InRequestScope();
	
	   kernel.Bind<Ioperate_logService>().To<operate_logService>().InRequestScope();
	
	   kernel.Bind<IpageService>().To<pageService>().InRequestScope();
	
	   kernel.Bind<IproductService>().To<productService>().InRequestScope();
	
	   kernel.Bind<IsettingService>().To<settingService>().InRequestScope();
	
	   kernel.Bind<Isys_userService>().To<sys_userService>().InRequestScope();
	
	   kernel.Bind<IuserService>().To<userService>().InRequestScope();
  kernel.Bind<IUnitOfWork>().To<UnitOfWork>().InRequestScope();

}
  

}
}