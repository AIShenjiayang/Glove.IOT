﻿using Glove.IOT.Common;
using Glove.IOT.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Glove.IOT.IBLL
{
    public partial interface IDeviceHistoryDataService : IBaseService<DeviceHistoryData>
    {
        /// <summary>
        /// 获取单个设备近一周每天产量
        /// </summary>
        /// <param name="deviceName"></param>
        /// <returns></returns>
        IQueryable<DeviceDayOutput> GetWeekEachDayData(int deviceName);
        /// <summary>
        /// 获取近一周所有设备的每天产量
        /// </summary>
        /// <returns></returns>
        IQueryable<DeviceDayOutput> GetWeekEachDayData();
    }
}
