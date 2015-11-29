 

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
   
	
	public partial class advertisementService:BaseService<advertisement>,IadvertisementService
    {   
        public advertisementService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.advertisementRepository;
        }  
    }
	
	public partial class advertisement_typeService:BaseService<advertisement_type>,Iadvertisement_typeService
    {   
        public advertisement_typeService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.advertisement_typeRepository;
        }  
    }
	
	public partial class advertisement_vistedlogService:BaseService<advertisement_vistedlog>,Iadvertisement_vistedlogService
    {   
        public advertisement_vistedlogService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.advertisement_vistedlogRepository;
        }  
    }
	
	public partial class articleService:BaseService<article>,IarticleService
    {   
        public articleService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.articleRepository;
        }  
    }
	
	public partial class article_contentsService:BaseService<article_contents>,Iarticle_contentsService
    {   
        public article_contentsService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.article_contentsRepository;
        }  
    }
	
	public partial class article_imagesService:BaseService<article_images>,Iarticle_imagesService
    {   
        public article_imagesService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.article_imagesRepository;
        }  
    }
	
	public partial class article_keywordService:BaseService<article_keyword>,Iarticle_keywordService
    {   
        public article_keywordService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.article_keywordRepository;
        }  
    }
	
	public partial class article_websiteService:BaseService<article_website>,Iarticle_websiteService
    {   
        public article_websiteService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.article_websiteRepository;
        }  
    }
	
	public partial class base_actionService:BaseService<base_action>,Ibase_actionService
    {   
        public base_actionService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.base_actionRepository;
        }  
    }
	
	public partial class base_roleService:BaseService<base_role>,Ibase_roleService
    {   
        public base_roleService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.base_roleRepository;
        }  
    }
	
	public partial class base_role_actionService:BaseService<base_role_action>,Ibase_role_actionService
    {   
        public base_role_actionService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.base_role_actionRepository;
        }  
    }
	
	public partial class base_userService:BaseService<base_user>,Ibase_userService
    {   
        public base_userService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.base_userRepository;
        }  
    }
	
	public partial class base_user_roleService:BaseService<base_user_role>,Ibase_user_roleService
    {   
        public base_user_roleService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.base_user_roleRepository;
        }  
    }
	
	public partial class categoryService:BaseService<category>,IcategoryService
    {   
        public categoryService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.categoryRepository;
        }  
    }
	
	public partial class commentService:BaseService<comment>,IcommentService
    {   
        public commentService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.commentRepository;
        }  
    }
	
	public partial class keywordService:BaseService<keyword>,IkeywordService
    {   
        public keywordService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.keywordRepository;
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
	
	public partial class spider_contentService:BaseService<spider_content>,Ispider_contentService
    {   
        public spider_contentService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.spider_contentRepository;
        }  
    }
	
	public partial class spider_keywordService:BaseService<spider_keyword>,Ispider_keywordService
    {   
        public spider_keywordService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.spider_keywordRepository;
        }  
    }
	
	public partial class spider_linkService:BaseService<spider_link>,Ispider_linkService
    {   
        public spider_linkService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.spider_linkRepository;
        }  
    }
	
	public partial class visited_logService:BaseService<visited_log>,Ivisited_logService
    {   
        public visited_logService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.visited_logRepository;
        }  
    }
	
	public partial class websiteService:BaseService<website>,IwebsiteService
    {   
        public websiteService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.websiteRepository;
        }  
    }
	
	public partial class website_categoryService:BaseService<website_category>,Iwebsite_categoryService
    {   
        public website_categoryService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.website_categoryRepository;
        }  
    }
	
	public partial class website_settingService:BaseService<website_setting>,Iwebsite_settingService
    {   
        public website_settingService()
        {}
        public override void SetCurrentRepository()
        {
            CurrentRepository = _dbSession.website_settingRepository;
        }  
    }
	
}