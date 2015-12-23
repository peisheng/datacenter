using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using System.Web.Security;
using System.Linq.Expressions;
using Common;
using System.Collections;
using Newtonsoft.Json;
using System.Text;
using System.IO;

namespace WebCenter.Web.Controllers
{

    [JsonObject(IsReference = true)]
    public class CommonController : BaseController
    {


        public CommonController(IUnitOfWork UOF)
            : base(UOF)
        {
        }     
        
       

         

    }
}