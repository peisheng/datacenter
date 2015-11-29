 
 
using WebCenter.IDAL;

namespace WebCenter.DAL
{
    public partial class DbSession:IDbSession  
    {   
	
	public IDAL.IadvertisementRepository advertisementRepository { get { return new advertisementRepository(); } }
	
	public IDAL.Iadvertisement_typeRepository advertisement_typeRepository { get { return new advertisement_typeRepository(); } }
	
	public IDAL.Iadvertisement_vistedlogRepository advertisement_vistedlogRepository { get { return new advertisement_vistedlogRepository(); } }
	
	public IDAL.IarticleRepository articleRepository { get { return new articleRepository(); } }
	
	public IDAL.Iarticle_contentsRepository article_contentsRepository { get { return new article_contentsRepository(); } }
	
	public IDAL.Iarticle_imagesRepository article_imagesRepository { get { return new article_imagesRepository(); } }
	
	public IDAL.Iarticle_keywordRepository article_keywordRepository { get { return new article_keywordRepository(); } }
	
	public IDAL.Iarticle_websiteRepository article_websiteRepository { get { return new article_websiteRepository(); } }
	
	public IDAL.Ibase_actionRepository base_actionRepository { get { return new base_actionRepository(); } }
	
	public IDAL.Ibase_roleRepository base_roleRepository { get { return new base_roleRepository(); } }
	
	public IDAL.Ibase_role_actionRepository base_role_actionRepository { get { return new base_role_actionRepository(); } }
	
	public IDAL.Ibase_userRepository base_userRepository { get { return new base_userRepository(); } }
	
	public IDAL.Ibase_user_roleRepository base_user_roleRepository { get { return new base_user_roleRepository(); } }
	
	public IDAL.IcategoryRepository categoryRepository { get { return new categoryRepository(); } }
	
	public IDAL.IcommentRepository commentRepository { get { return new commentRepository(); } }
	
	public IDAL.IkeywordRepository keywordRepository { get { return new keywordRepository(); } }
	
	public IDAL.IsequenceRepository sequenceRepository { get { return new sequenceRepository(); } }
	
	public IDAL.Ispider_contentRepository spider_contentRepository { get { return new spider_contentRepository(); } }
	
	public IDAL.Ispider_keywordRepository spider_keywordRepository { get { return new spider_keywordRepository(); } }
	
	public IDAL.Ispider_linkRepository spider_linkRepository { get { return new spider_linkRepository(); } }
	
	public IDAL.Ivisited_logRepository visited_logRepository { get { return new visited_logRepository(); } }
	
	public IDAL.IwebsiteRepository websiteRepository { get { return new websiteRepository(); } }
	
	public IDAL.Iwebsite_categoryRepository website_categoryRepository { get { return new website_categoryRepository(); } }
	
	public IDAL.Iwebsite_settingRepository website_settingRepository { get { return new website_settingRepository(); } }
	}
}