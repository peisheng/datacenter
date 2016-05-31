 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebCenter.Entities;
using WebCenter.IServices;
 
using WebCenter.IDAL;
using WebCenter.DAL;
namespace WebCenter.Services
{
   
	
	public partial class categoryService:BaseService<category>,IcategoryService
    {   
        public categoryService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.categoryRepository;
        }  
    }
	
	public partial class contact_msgService:BaseService<contact_msg>,Icontact_msgService
    {   
        public contact_msgService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.contact_msgRepository;
        }  
    }
	
	public partial class dictionaryService:BaseService<dictionary>,IdictionaryService
    {   
        public dictionaryService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.dictionaryRepository;
        }  
    }
	
	public partial class imageService:BaseService<image>,IimageService
    {   
        public imageService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.imageRepository;
        }  
    }
	
	public partial class operate_logService:BaseService<operate_log>,Ioperate_logService
    {   
        public operate_logService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.operate_logRepository;
        }  
    }
	
	public partial class pageService:BaseService<page>,IpageService
    {   
        public pageService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.pageRepository;
        }  
    }
	
	public partial class productService:BaseService<product>,IproductService
    {   
        public productService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.productRepository;
        }  
    }
	
	public partial class settingService:BaseService<setting>,IsettingService
    {   
        public settingService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.settingRepository;
        }  
    }
	
	public partial class sys_userService:BaseService<sys_user>,Isys_userService
    {   
        public sys_userService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.sys_userRepository;
        }  
    }
	
	public partial class userService:BaseService<user>,IuserService
    {   
        public userService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.userRepository;
        }  
    }
	
}