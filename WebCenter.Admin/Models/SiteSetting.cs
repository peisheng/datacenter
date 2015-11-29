using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebCenter.Entities;

namespace WebCenter.Admin.Models
{
    public class SiteSetting
    {
        public IList<website_category> SiteCate { get; set; }
        public IList<website_setting> SiteSettings { get; set; }
        public string SiteNameCN { get; set; }
        public string SiteUrl { get; set; }

        public string MetaKeyWord { get; set; }
        public string  MetaDescription { get; set; }
        public IList<website_setting> FriendyLinks { get; set; }
        public IList<website_setting> StaticPages { get; set; }
        
    }
}