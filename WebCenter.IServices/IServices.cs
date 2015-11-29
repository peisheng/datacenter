 

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebCenter.Entities;

namespace WebCenter.IServices
{
   
	
	public partial interface IadvertisementService:IBaseService<advertisement>
    {   
    }
	
	public partial interface Iadvertisement_typeService:IBaseService<advertisement_type>
    {   
    }
	
	public partial interface Iadvertisement_vistedlogService:IBaseService<advertisement_vistedlog>
    {   
    }
	
	public partial interface IarticleService:IBaseService<article>
    {   
    }
	
	public partial interface Iarticle_contentsService:IBaseService<article_contents>
    {   
    }
	
	public partial interface Iarticle_imagesService:IBaseService<article_images>
    {   
    }
	
	public partial interface Iarticle_keywordService:IBaseService<article_keyword>
    {   
    }
	
	public partial interface Iarticle_websiteService:IBaseService<article_website>
    {   
    }
	
	public partial interface Ibase_actionService:IBaseService<base_action>
    {   
    }
	
	public partial interface Ibase_roleService:IBaseService<base_role>
    {   
    }
	
	public partial interface Ibase_role_actionService:IBaseService<base_role_action>
    {   
    }
	
	public partial interface Ibase_userService:IBaseService<base_user>
    {   
    }
	
	public partial interface Ibase_user_roleService:IBaseService<base_user_role>
    {   
    }
	
	public partial interface IcategoryService:IBaseService<category>
    {   
    }
	
	public partial interface IcommentService:IBaseService<comment>
    {   
    }
	
	public partial interface IkeywordService:IBaseService<keyword>
    {   
    }
	
	public partial interface IsequenceService:IBaseService<sequence>
    {   
    }
	
	public partial interface Ispider_contentService:IBaseService<spider_content>
    {   
    }
	
	public partial interface Ispider_keywordService:IBaseService<spider_keyword>
    {   
    }
	
	public partial interface Ispider_linkService:IBaseService<spider_link>
    {   
    }
	
	public partial interface Ivisited_logService:IBaseService<visited_log>
    {   
    }
	
	public partial interface IwebsiteService:IBaseService<website>
    {   
    }
	
	public partial interface Iwebsite_categoryService:IBaseService<website_category>
    {   
    }
	
	public partial interface Iwebsite_settingService:IBaseService<website_setting>
    {   
    }
	
}