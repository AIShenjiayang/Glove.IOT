﻿using Glove.IOT.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Glove.IOT.IBLL
{
    public partial interface IUserInfoService:IBaseService<UserInfo>
    {
        IQueryable<UserInfo>  LoagPageData(Model.Param.UserQueryParam userQueryParam);
    }
}
