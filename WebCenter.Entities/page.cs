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
    
    public partial class page
    {
    
    
    
    [EntityPrimKey("page")]
        public int id { get; set; }
    
    
    
        public string page_name { get; set; }
    
    
    
        public string page_title { get; set; }
    
    
    
        public string page_content { get; set; }
    
    
    
        public Nullable<System.DateTime> update_time { get; set; }
    
    
    
        public Nullable<System.DateTime> create_time { get; set; }
    }
}
