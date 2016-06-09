using log4net;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebCenter.IServices;
using WebCenter.Entities;
using System.Web.Security;
using WebCenter.Web.Models;

namespace WebCenter.Web.Controllers
{
    public class HomeController : BaseController
    {


        public HomeController(IUnitOfWork UOF)
            : base(UOF)
        {
        }
        public ActionResult Index()
        {
            List<LinkText> list = new List<LinkText>();
            List<LinkText> four = new List<LinkText>();
            if (ViewBag.PlayImages.ToString().Length > 0)
            {
                //string ss;
                //ss.Split('|');
                var arrs = ViewBag.PlayImages.ToString().Split('|');
                if (arrs.Length == 2)
                {
                    string[] ids = arrs[0].Split(',');
                    string[] links = arrs[1].Split(',');
                    if (ids.Length == links.Length)
                    {
                        List<int> lIds = new List<int>();
                        foreach (string s in ids)
                        {
                            lIds.Add(int.Parse(s));
                        }
                        List<image> imgs = Uof.IimageService.GetAll(p => lIds.Contains(p.id)).ToList();
                        for (int i = 0; i < imgs.Count; i++)
                        {
                            LinkText lt = new LinkText();
                            lt.ImagePath = imgs[i].image_path;
                            lt.Link = links[i];
                            lt.Text = links[i];
                            list.Add(lt);
                        }
                    }
                }
            }
            if (ViewBag.MainFourProductIds.Length > 0)
            {
                List<int> lIds = new List<int>();
                string[] arr = ViewBag.MainFourProductIds.Split(',');
                foreach (string s in arr)
                {
                    lIds.Add(int.Parse(s));
                }
                if (arr.Length > 0)
                {
                    var query = Uof.IproductService.GetAll(p => lIds.Contains(p.id)).ToList();
                    foreach (var item in query)
                    {
                        LinkText lt = new LinkText();
                        lt.Text = item.product_name;
                        lt.Link = "/product/" + item.id.ToString() + "_" + item.product_name;
                        lt.ImagePath = item.image.image_path;
                        four.Add(lt);
                    }
                }
            }
            IndexModel model = new IndexModel();
            model.Play = list;
            model.Four = four;

            return View(model);
        }
        [HttpPost]
        public ActionResult Login(string userName, string password)
        {
            FormsAuthentication.SetAuthCookie(userName, true);
            return null;
        }

        public ActionResult Submit()
        {
            return View();
        }


    }


}