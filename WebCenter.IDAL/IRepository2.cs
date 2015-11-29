 

using WebCenter.Entities;

namespace WebCenter.IDAL
{
   
	
    public partial interface IadvertisementRepository :IBaseRepository<advertisement>
    {         
    }
	
    public partial interface Iadvertisement_typeRepository :IBaseRepository<advertisement_type>
    {         
    }
	
    public partial interface Iadvertisement_vistedlogRepository :IBaseRepository<advertisement_vistedlog>
    {         
    }
	
    public partial interface IarticleRepository :IBaseRepository<article>
    {         
    }
	
    public partial interface Iarticle_contentsRepository :IBaseRepository<article_contents>
    {         
    }
	
    public partial interface Iarticle_imagesRepository :IBaseRepository<article_images>
    {         
    }
	
    public partial interface Iarticle_keywordRepository :IBaseRepository<article_keyword>
    {         
    }
	
    public partial interface Iarticle_websiteRepository :IBaseRepository<article_website>
    {         
    }
	
    public partial interface Ibase_actionRepository :IBaseRepository<base_action>
    {         
    }
	
    public partial interface Ibase_roleRepository :IBaseRepository<base_role>
    {         
    }
	
    public partial interface Ibase_role_actionRepository :IBaseRepository<base_role_action>
    {         
    }
	
    public partial interface Ibase_userRepository :IBaseRepository<base_user>
    {         
    }
	
    public partial interface Ibase_user_roleRepository :IBaseRepository<base_user_role>
    {         
    }
	
    public partial interface IcategoryRepository :IBaseRepository<category>
    {         
    }
	
    public partial interface IcommentRepository :IBaseRepository<comment>
    {         
    }
	
    public partial interface IkeywordRepository :IBaseRepository<keyword>
    {         
    }
	
    public partial interface IsequenceRepository :IBaseRepository<sequence>
    {         
    }
	
    public partial interface Ispider_contentRepository :IBaseRepository<spider_content>
    {         
    }
	
    public partial interface Ispider_keywordRepository :IBaseRepository<spider_keyword>
    {         
    }
	
    public partial interface Ispider_linkRepository :IBaseRepository<spider_link>
    {         
    }
	
    public partial interface Ivisited_logRepository :IBaseRepository<visited_log>
    {         
    }
	
    public partial interface IwebsiteRepository :IBaseRepository<website>
    {         
    }
	
    public partial interface Iwebsite_categoryRepository :IBaseRepository<website_category>
    {         
    }
	
    public partial interface Iwebsite_settingRepository :IBaseRepository<website_setting>
    {         
    }
	
}