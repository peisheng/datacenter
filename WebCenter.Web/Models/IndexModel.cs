using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebCenter.Web.Models
{
    public class LinkText
    {
        public string ImagePath { get; set; }
        public string Link { get; set; }
        public string Text
        {
            get;
            set;
        }
        
    }

    public class IndexModel
    {
        public List<LinkText> Play { get; set; }
        public List<LinkText> Four { get; set; }
    }
}