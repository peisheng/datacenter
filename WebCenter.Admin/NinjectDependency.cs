 

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
	
	   kernel.Bind<IcompanyService>().To<companyService>().InSingletonScope();
	
	   kernel.Bind<Ioperate_logService>().To<operate_logService>().InSingletonScope();
	
	   kernel.Bind<Iproject_caseService>().To<project_caseService>().InSingletonScope();
	
	   kernel.Bind<Isys_dictionaryService>().To<sys_dictionaryService>().InSingletonScope();
	
	   kernel.Bind<Isys_userService>().To<sys_userService>().InSingletonScope();
	
	   kernel.Bind<IuserService>().To<userService>().InSingletonScope();
  kernel.Bind<IUnitOfWork>().To<UnitOfWork>().InSingletonScope();

}
  

}
}