 

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
   
	
	public partial class cityService:BaseService<city>,IcityService
    {   
        public cityService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.cityRepository;
        }  
    }
	
	public partial class companyService:BaseService<company>,IcompanyService
    {   
        public companyService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.companyRepository;
        }  
    }
	
	public partial class fileService:BaseService<file>,IfileService
    {   
        public fileService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.fileRepository;
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
	
	public partial class project_caseService:BaseService<project_case>,Iproject_caseService
    {   
        public project_caseService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.project_caseRepository;
        }  
    }
	
	public partial class sequenceService:BaseService<sequence>,IsequenceService
    {   
        public sequenceService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.sequenceRepository;
        }  
    }
	
	public partial class sys_dictionaryService:BaseService<sys_dictionary>,Isys_dictionaryService
    {   
        public sys_dictionaryService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.sys_dictionaryRepository;
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