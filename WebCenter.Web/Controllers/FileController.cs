﻿using log4net;
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
    public class FileController : BaseController
    {


        public FileController(IUnitOfWork UOF)
            : base(UOF)
        {
        }


        public ActionResult Upload()
        {
            StringBuilder info = new StringBuilder();
            foreach (string tfile in Request.Files)
            {
                HttpPostedFileBase postFile = Request.Files[tfile];//get post file 
                if (postFile.ContentLength == 0)
                    continue;
                string serverPath = Server.MapPath("~");
                string folder = "Uploads\\" + DateTime.Today.ToString("yyyy-MM-dd") + "\\";
                string guid = DateTime.Now.ToString("hh-mm-ss-") + new Random().Next(1000).ToString()+Guid.NewGuid().ToString().Substring(0,4);
                string file_name =guid + postFile.FileName.Substring(postFile.FileName.LastIndexOf("."));
                string realPath = (serverPath + folder).Replace("\\", "/");
                string returnPath = ("/" + folder + file_name).Replace("\\", "/");
                if (!Directory.Exists(realPath))
                {
                    Directory.CreateDirectory(realPath);
                }
                string sPath = realPath + file_name;
                string dPath = realPath + guid + "_400_200" + postFile.FileName.Substring(postFile.FileName.LastIndexOf("."));
                postFile.SaveAs(realPath + file_name);
                file file = new Entities.file();
                file.file_path = returnPath;
                file.file_name = file_name;
                file.create_time = DateTime.Now;
                file = Uof.IfileService.AddEntity(file);
                var result = new
                {
                    file_path = returnPath,
                    id = file.id,
                    file_name = file.file_name
                };
                bool isZipSuccess= ImageHelper.GetPicThumbnail(sPath, dPath, 200, 400, 100);
                if(!isZipSuccess)
                {
                    LogHelper.LogError("图片压缩失败");
                }
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            return null;

        }




    }
}