using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebCenter.Entities;

namespace WebCenter.Web.Models
{
    public class ProductModel
    {
        public List<image> ImagePaths { get; set; }
        public string Specification { get; set; }
        public image MainImage { get; set; }

        public string AmazonUrl { get; set; }
        public string Features { get; set; }
        public string ProductName { get; set; }
        public string Desc { get; set; }

        public List<category> Cates
        {
            get;
            set;
        }

    }
}