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
    
    public partial class sys_user
    {
    
    
    
    [EntityPrimKey("sys_user")]
        public int Id { get; set; }
    
    
    
        public string user_name { get; set; }
    
    
    
        public string password { get; set; }
    
    
    
        public string hash_code { get; set; }
    
    
    
        public string display_name { get; set; }
    
    
    
        public Nullable<System.DateTime> create_time { get; set; }
    }
}
