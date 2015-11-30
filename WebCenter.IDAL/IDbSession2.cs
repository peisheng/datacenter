 

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
   
	  

		IDAL.IcompanyRepository companyRepository { get; }
	  

		IDAL.Ioperate_logRepository operate_logRepository { get; }
	  

		IDAL.Iproject_caseRepository project_caseRepository { get; }
	  

		IDAL.IsequenceRepository sequenceRepository { get; }
	  

		IDAL.Isys_dictionaryRepository sys_dictionaryRepository { get; }
	  

		IDAL.Isys_userRepository sys_userRepository { get; }
	  

		IDAL.IuserRepository userRepository { get; }
	}
}