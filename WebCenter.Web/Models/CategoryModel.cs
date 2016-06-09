using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebCenter.Entities;

namespace WebCenter.Web.Models
{
    public class CategoryModel
    {
        public string CategoryName { get; set; }
        public int Id { get; set; }

        public List<product> ProdList { get; set; }
        public List<category> ParentCates { get; set; }

        public List<category> SubCates { get; set; }
    }
}