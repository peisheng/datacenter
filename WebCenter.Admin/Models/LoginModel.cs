using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebCenter.Admin.Models
{
    public class LoginModel
    {
        [DisplayName("用户名")]
        [MaxLength(50,ErrorMessage="不能大于50个字符")]
        [MinLength(5, ErrorMessage="不能小于5个字符")]
        [Required(ErrorMessage="用户名不能为空")]
        public string UserName { get; set; }
        [Required(ErrorMessage="密码不能为空")]
        [DisplayName("密码")]
        [MinLength(6,ErrorMessage="密码长度不能小于6")]       
        public string Password { get; set; }

        [DisplayName("记住密码")]
        public bool IsRemeber { get; set; }
    }
}