﻿using Glove.IOT.Common;
using Glove.IOT.IBLL;
using Glove.IOT.Model;
using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Glove.IOT.BLL
{
    public partial class DeviceHistoryDataService : BaseService<DeviceHistoryData>, IDeviceHistoryDataService
    {
        /// <summary>
        /// 获取单个设备近一周每天产量
        /// </summary>
        /// <param name="deviceName"></param>
        /// <returns></returns>
        public IQueryable<DeviceDayOutput> GetWeekEachDayData(int deviceName)
        {
            var sevendaysAgo = DateTime.Now.AddDays(-7);
            var deviceHistoryDatas = DbSession.DeviceHistoryDataDal.GetEntities(u => u.DeviceName == deviceName && u.CreateTime >= sevendaysAgo);
            var query = from t1 in deviceHistoryDatas.GroupBy(u => EntityFunctions.TruncateTime(u.CreateTime))
                         .Select(p => new
                         {
                             DayTime = p.Key,
                             DayOutput = p.Sum(q => q.NowOutput)
                         })
                        select new DeviceDayOutput
                        {
                            Date = t1.DayTime,
                            SumOutput = t1.DayOutput
                        };

            return query;

        }

        /// <summary>
        /// 获取车间近一周每天产量
        /// </summary>
        /// <returns></returns>
        public IQueryable<DeviceDayOutput> GetWeekEachDayData()
        {
            var sevendaysAgo = DateTime.Now.AddDays(-7);
            var deviceHistoryDatas = DbSession.DeviceHistoryDataDal.GetEntities(u => u.CreateTime >= sevendaysAgo);
            var query = from t1 in deviceHistoryDatas.GroupBy(u => EntityFunctions.TruncateTime(u.CreateTime))
                        .Select(p => new
                        {
                            DayTime = p.Key,
                            DaOutput = p.Sum(q => q.NowOutput)
                        })
                        select new DeviceDayOutput
                        {
                            Date = t1.DayTime,
                            SumOutput = t1.DaOutput
                        };
            return query;
        }
    }
}
