﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using CacheManager.Core;
using System.Configuration;
using Common;
using Newtonsoft.Json;



namespace WebCenter.Web.Controllers
{
    [JsonObject(IsReference = true)]
    public class BaseController : Controller
    {

        protected ICache<object> Cache;
        protected IUnitOfWork Uof;



        public BaseController(IUnitOfWork uof)
        {
            Uof = uof;
            Cache = CacheUtil.Cache;

        }

        public ActionResult ErrorResult
        {
            get { return Json(new { result = false }, JsonRequestBehavior.AllowGet); }
        }

        public void AddLog(string name, string descipt, string result)
        {
            operate_log log = new operate_log();
            log.create_time = DateTime.Now;
            log.desript = descipt;
            log.user_name = ControllerContext.HttpContext.User.Identity.Name;
            log.name = name;
            log.result = result;
            //Request.LogonUserIdentity
            //log.user_name = user_name;
            //log.user_id = user_id;
            Uof.Ioperate_logService.AddEntity(log);
        }








    }
}