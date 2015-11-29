 

using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace WebCenter.IDAL
{
    public partial interface IDbSession
    {
   
	  

		IDAL.IadvertisementRepository advertisementRepository { get; }
	  

		IDAL.Iadvertisement_typeRepository advertisement_typeRepository { get; }
	  

		IDAL.Iadvertisement_vistedlogRepository advertisement_vistedlogRepository { get; }
	  

		IDAL.IarticleRepository articleRepository { get; }
	  

		IDAL.Iarticle_contentsRepository article_contentsRepository { get; }
	  

		IDAL.Iarticle_imagesRepository article_imagesRepository { get; }
	  

		IDAL.Iarticle_keywordRepository article_keywordRepository { get; }
	  

		IDAL.Iarticle_websiteRepository article_websiteRepository { get; }
	  

		IDAL.Ibase_actionRepository base_actionRepository { get; }
	  

		IDAL.Ibase_roleRepository base_roleRepository { get; }
	  

		IDAL.Ibase_role_actionRepository base_role_actionRepository { get; }
	  

		IDAL.Ibase_userRepository base_userRepository { get; }
	  

		IDAL.Ibase_user_roleRepository base_user_roleRepository { get; }
	  

		IDAL.IcategoryRepository categoryRepository { get; }
	  

		IDAL.IcommentRepository commentRepository { get; }
	  

		IDAL.IkeywordRepository keywordRepository { get; }
	  

		IDAL.IsequenceRepository sequenceRepository { get; }
	  

		IDAL.Ispider_contentRepository spider_contentRepository { get; }
	  

		IDAL.Ispider_keywordRepository spider_keywordRepository { get; }
	  

		IDAL.Ispider_linkRepository spider_linkRepository { get; }
	  

		IDAL.Ivisited_logRepository visited_logRepository { get; }
	  

		IDAL.IwebsiteRepository websiteRepository { get; }
	  

		IDAL.Iwebsite_categoryRepository website_categoryRepository { get; }
	  

		IDAL.Iwebsite_settingRepository website_settingRepository { get; }
	}
}