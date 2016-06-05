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
    public class FileController : BaseController
    {


        public FileController(IUnitOfWork UOF)
            : base(UOF)
        {
        }


        public ActionResult Upload()
        {
             ArrayList list = new ArrayList();
            try
            {
                StringBuilder info = new StringBuilder();
               
                foreach (string tfile in Request.Files)
                {
                    HttpPostedFileBase postFile = Request.Files[tfile];//get post file 
                    if (postFile.ContentLength == 0)
                        continue;
                    string serverPath = Server.MapPath("~").Replace("Api", "").Replace("api", "");
                    string folder = "Uploads\\" + DateTime.Today.ToString("yyyy-MM-dd") + "\\";
                    string guid = DateTime.Now.ToString("hh-mm-ss-") + new Random().Next(1000).ToString() + Guid.NewGuid().ToString().Substring(0, 4);
                    string file_name = guid + postFile.FileName.Substring(postFile.FileName.LastIndexOf("."));
                    string samll_file_name = guid + "_450_300" + postFile.FileName.Substring(postFile.FileName.LastIndexOf("."));
                    string realPath = (serverPath +"/"+ folder).Replace("\\", "/");
                    string returnPath = ("/" + folder + file_name).Replace("\\", "/");
                    string samllPath = ("/" + folder + samll_file_name).Replace("\\", "/");
                    if (!Directory.Exists(realPath))
                    {
                        Directory.CreateDirectory(realPath);
                    }
                    string ext=postFile.FileName.Substring(postFile.FileName.LastIndexOf("."));
                    string sPath = realPath + file_name;
                    string dPath = realPath + guid + "_450_300" + ext ;
                    string smallPath = realPath + guid + "_160_120" + ext;
                    postFile.SaveAs(realPath + file_name);
                    image file = new Entities.image();
                    file.image_path = returnPath;
                    file.small_path = samllPath;
                    file.image_name = file_name;
                    file.create_time = DateTime.Now;
                    file = Uof.IimageService.AddEntity(file);
                    var result = new
                    {                      
                        image_path = returnPath,
                        small_path = samllPath,
                        id = file.id,
                        image_name = file.image_name
                    };
                    ImageHelper.GetPicThumbnailWidth(sPath,smallPath,120,160,100);
                    bool isZipSuccess = ImageHelper.GetPicThumbnailWidth(sPath, dPath, 300, 650, 80);
                    
                    if (!isZipSuccess)
                    {
                        LogHelper.LogError("图片压缩失败");
                    }
                    list.Add(result);
                    //return Json(result, JsonRequestBehavior.AllowGet);
                }
                return Json(list, JsonRequestBehavior.AllowGet); 
            }
            catch (Exception ex)
            {
                LogHelper.LogError(ex.Message,ex);
            }
            return Json(list, JsonRequestBehavior.AllowGet); 
           
        }

        public void UploadEditor()
        {
            string pathbase = "uploads/";                                                          //保存路径
            int size = 10;                     //文件大小限制,单位mb                                                                                   //文件大小限制，单位KB
            string[] filetype = { ".gif", ".png", ".jpg", ".jpeg", ".bmp" };                    //文件允许格式

            string callback =this.HttpContext.Request["callback"];
            string editorId = this.HttpContext.Request["editorid"];
             

            //上传图片
            Hashtable info;
            Uploader up = new Uploader();
            info = up.upFile(this.HttpContext, pathbase, filetype, size); //获取上传状态
            string json = BuildJson(info);

            this.HttpContext.Response.ContentType = "text/html";
            if (callback != null)
            {
                this.Response.Write(String.Format("<script>{0}(JSON.parse(\"{1}\"));</script>", callback, json));
            }
            else
            {
                this.Response.Write(json);
            }

        }

        private string BuildJson(Hashtable info)
        {
            List<string> fields = new List<string>();
            string[] keys = new string[] { "originalName", "name", "url", "size", "state", "type" };
            for (int i = 0; i < keys.Length; i++)
            {
                fields.Add(String.Format("\"{0}\": \"{1}\"", keys[i], info[keys[i]]));
            }
            return "{" + String.Join(",", fields) + "}";
        }

        public ActionResult Get(List<int> ids)
        {
           var list=  Uof.IimageService.GetAll(p => ids.Contains(p.id)).ToList();
           return Json(list,JsonRequestBehavior.AllowGet);
        }




    }
}