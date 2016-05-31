 
 
using WebCenter.IDAL;

namespace WebCenter.DAL
{
    public partial class DbSession:IDbSession  
    {   
	
	public IDAL.IcategoryRepository categoryRepository { get { return new categoryRepository(); } }
	
	public IDAL.Icontact_msgRepository contact_msgRepository { get { return new contact_msgRepository(); } }
	
	public IDAL.IdictionaryRepository dictionaryRepository { get { return new dictionaryRepository(); } }
	
	public IDAL.IimageRepository imageRepository { get { return new imageRepository(); } }
	
	public IDAL.Ioperate_logRepository operate_logRepository { get { return new operate_logRepository(); } }
	
	public IDAL.IpageRepository pageRepository { get { return new pageRepository(); } }
	
	public IDAL.IproductRepository productRepository { get { return new productRepository(); } }
	
	public IDAL.IsettingRepository settingRepository { get { return new settingRepository(); } }
	
	public IDAL.Isys_userRepository sys_userRepository { get { return new sys_userRepository(); } }
	
	public IDAL.IuserRepository userRepository { get { return new userRepository(); } }
	}
}