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

        public string SeoLinkText { get; set; }
        public string AmazonUrl { get; set; }
        public string germany_amazon_url { get; set; }
        public string franch_amazon_url { get; set; }
        public string Italy_amazon_url { get; set; }
        public string spanish_amazon_url { get; set; }
        public string japan_amazon_url { get; set; }
        public string uk_amazon_url { get; set; }
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