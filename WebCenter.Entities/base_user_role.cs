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
    
    public partial class base_user_role
    {
    
    
    
    [EntityPrimKey("base_user_role")]
        public int Id { get; set; }
    
    
    
        public int UserId { get; set; }
    
    
    
        public int RoleId { get; set; }
    
    
    
        public System.DateTime CreateDate { get; set; }
    
        public virtual base_role base_role { get; set; }
        public virtual base_user base_user { get; set; }
    }
}
