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
    
    public partial class base_action
    {
        public base_action()
        {
            this.base_role_action = new HashSet<base_role_action>();
        }
    
    
    
    
    [EntityPrimKey("base_action")]
        public int Id { get; set; }
    
    
    
        public string ActionName { get; set; }
    
    
    
        public string ActionUrl { get; set; }
    
    
    
        public System.DateTime CreateDate { get; set; }
    
        public virtual ICollection<base_role_action> base_role_action { get; set; }
    }
}
