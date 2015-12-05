 
 
using WebCenter.IDAL;

namespace WebCenter.DAL
{
    public partial class DbSession:IDbSession  
    {   
	
	public IDAL.IcityRepository cityRepository { get { return new cityRepository(); } }
	
	public IDAL.IcompanyRepository companyRepository { get { return new companyRepository(); } }
	
	public IDAL.IfileRepository fileRepository { get { return new fileRepository(); } }
	
	public IDAL.Ioperate_logRepository operate_logRepository { get { return new operate_logRepository(); } }
	
	public IDAL.Iproject_caseRepository project_caseRepository { get { return new project_caseRepository(); } }
	
	public IDAL.IsequenceRepository sequenceRepository { get { return new sequenceRepository(); } }
	
	public IDAL.Isys_dictionaryRepository sys_dictionaryRepository { get { return new sys_dictionaryRepository(); } }
	
	public IDAL.Isys_userRepository sys_userRepository { get { return new sys_userRepository(); } }
	
	public IDAL.IuserRepository userRepository { get { return new userRepository(); } }
	}
}