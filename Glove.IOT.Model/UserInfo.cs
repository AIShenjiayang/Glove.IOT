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
            this.StatusFlag = 0;
            this.R_UserInfo_ActionInfo = new HashSet<R_UserInfo_ActionInfo>();
            this.R_UserInfo_RoleInfo = new HashSet<R_UserInfo_RoleInfo>();
        }
    
        public int Id { get; set; }
        public string UCode { get; set; }
        public string UName { get; set; }
        public string Pwd { get; set; }
        public short StatusFlag { get; set; }
        public string Remark { get; set; }
        public System.DateTime SubTime { get; set; }
    
        public virtual ICollection<R_UserInfo_ActionInfo> R_UserInfo_ActionInfo { get; set; }
        public virtual ICollection<R_UserInfo_RoleInfo> R_UserInfo_RoleInfo { get; set; }
    }
}
