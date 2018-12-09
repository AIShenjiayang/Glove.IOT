﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Glove.IOT.Model.Enum
{
    public enum DelFlagEnum
    {
        /// <summary>
        /// 正常未删除状态
        /// </summary>
        UNormal = 0,//无效
        Normal = 1,//有效

        /// <summary>
        /// 已经删除状态
        /// </summary>
        Deleted=2
    }
}
