//------------------------------------------------------------------------------
// <auto-generated>
//    此代码是根据模板生成的。
//
//    手动更改此文件可能会导致应用程序中发生异常行为。
//    如果重新生成代码，则将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Glove.IOT.Model
{
    using System;
    using System.Collections.Generic;
    
    [Serializable]
    public partial class UserInfo
    {
        public UserInfo()
        {
            this.StatusFlag = true;
            this.IsDeleted = false;
            this.R_UserInfo_RoleInfo = new HashSet<R_UserInfo_RoleInfo>();
        }
    
        public int Id { get; set; }
        public string UCode { get; set; }
        public string UName { get; set; }
        public string Pwd { get; set; }
        public string Remark { get; set; }
        public string Gender { get; set; }
        public string Picture { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public bool StatusFlag { get; set; }
        public bool IsDeleted { get; set; }
        public System.DateTime SubTime { get; set; }
    
        public virtual ICollection<R_UserInfo_RoleInfo> R_UserInfo_RoleInfo { get; set; }
    }
}
