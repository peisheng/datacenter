//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebCenter.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class website_category
    {
    
    
    
    [EntityPrimKey("website_category")]
        public int Id { get; set; }
    
    
    
        public int CategoryId { get; set; }
    
    
    
        public int WebsiteId { get; set; }
    
    
    
        public string MappingName { get; set; }
    
    
    
        public bool Ispublished { get; set; }
    
    
    
        public int OrderNum { get; set; }
    
        public virtual category category { get; set; }
        public virtual website website { get; set; }
    }
}
