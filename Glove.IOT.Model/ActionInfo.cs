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
    public partial class ActionInfo
    {
        public ActionInfo()
        {
            this.IsDeleted = false;
            this.R_RoleInfo_ActionInfo = new HashSet<R_RoleInfo_ActionInfo>();
        }
    
        public int Id { get; set; }
        public string ActionType { get; set; }
        public string ActionName { get; set; }
        public string Url { get; set; }
        public string HttpMethod { get; set; }
        public System.DateTime SubTime { get; set; }
        public Nullable<bool> IsDeleted { get; set; }
    
        public virtual ICollection<R_RoleInfo_ActionInfo> R_RoleInfo_ActionInfo { get; set; }
    }
}
