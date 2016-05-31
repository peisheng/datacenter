 

using WebCenter.IDAL;
using WebCenter.Entities;

namespace WebCenter.DAL
{
   
	
	public partial class categoryRepository :BaseRepository<category>,IcategoryRepository
    {
         
    }
	
	public partial class contact_msgRepository :BaseRepository<contact_msg>,Icontact_msgRepository
    {
         
    }
	
	public partial class dictionaryRepository :BaseRepository<dictionary>,IdictionaryRepository
    {
         
    }
	
	public partial class imageRepository :BaseRepository<image>,IimageRepository
    {
         
    }
	
	public partial class operate_logRepository :BaseRepository<operate_log>,Ioperate_logRepository
    {
         
    }
	
	public partial class pageRepository :BaseRepository<page>,IpageRepository
    {
         
    }
	
	public partial class productRepository :BaseRepository<product>,IproductRepository
    {
         
    }
	
	public partial class settingRepository :BaseRepository<setting>,IsettingRepository
    {
         
    }
	
	public partial class sys_userRepository :BaseRepository<sys_user>,Isys_userRepository
    {
         
    }
	
	public partial class userRepository :BaseRepository<user>,IuserRepository
    {
         
    }
	
}