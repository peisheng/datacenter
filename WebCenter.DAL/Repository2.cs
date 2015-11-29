 

using WebCenter.IDAL;
using WebCenter.Entities;

namespace WebCenter.DAL
{
   
	
	public partial class advertisementRepository :BaseRepository<advertisement>,IadvertisementRepository
    {
         
    }
	
	public partial class advertisement_typeRepository :BaseRepository<advertisement_type>,Iadvertisement_typeRepository
    {
         
    }
	
	public partial class advertisement_vistedlogRepository :BaseRepository<advertisement_vistedlog>,Iadvertisement_vistedlogRepository
    {
         
    }
	
	public partial class articleRepository :BaseRepository<article>,IarticleRepository
    {
         
    }
	
	public partial class article_contentsRepository :BaseRepository<article_contents>,Iarticle_contentsRepository
    {
         
    }
	
	public partial class article_imagesRepository :BaseRepository<article_images>,Iarticle_imagesRepository
    {
         
    }
	
	public partial class article_keywordRepository :BaseRepository<article_keyword>,Iarticle_keywordRepository
    {
         
    }
	
	public partial class article_websiteRepository :BaseRepository<article_website>,Iarticle_websiteRepository
    {
         
    }
	
	public partial class base_actionRepository :BaseRepository<base_action>,Ibase_actionRepository
    {
         
    }
	
	public partial class base_roleRepository :BaseRepository<base_role>,Ibase_roleRepository
    {
         
    }
	
	public partial class base_role_actionRepository :BaseRepository<base_role_action>,Ibase_role_actionRepository
    {
         
    }
	
	public partial class base_userRepository :BaseRepository<base_user>,Ibase_userRepository
    {
         
    }
	
	public partial class base_user_roleRepository :BaseRepository<base_user_role>,Ibase_user_roleRepository
    {
         
    }
	
	public partial class categoryRepository :BaseRepository<category>,IcategoryRepository
    {
         
    }
	
	public partial class commentRepository :BaseRepository<comment>,IcommentRepository
    {
         
    }
	
	public partial class keywordRepository :BaseRepository<keyword>,IkeywordRepository
    {
         
    }
	
	public partial class sequenceRepository :BaseRepository<sequence>,IsequenceRepository
    {
         
    }
	
	public partial class spider_contentRepository :BaseRepository<spider_content>,Ispider_contentRepository
    {
         
    }
	
	public partial class spider_keywordRepository :BaseRepository<spider_keyword>,Ispider_keywordRepository
    {
         
    }
	
	public partial class spider_linkRepository :BaseRepository<spider_link>,Ispider_linkRepository
    {
         
    }
	
	public partial class visited_logRepository :BaseRepository<visited_log>,Ivisited_logRepository
    {
         
    }
	
	public partial class websiteRepository :BaseRepository<website>,IwebsiteRepository
    {
         
    }
	
	public partial class website_categoryRepository :BaseRepository<website_category>,Iwebsite_categoryRepository
    {
         
    }
	
	public partial class website_settingRepository :BaseRepository<website_setting>,Iwebsite_settingRepository
    {
         
    }
	
}