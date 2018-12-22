﻿using Glove.IOT.Common;
using Glove.IOT.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace Glove.IOT.UI.Portal.Controllers
{
    public class BaseController : Controller
    {

        //在当前的控制器里面所有的方法执行之前，都先执行此代码
        public bool IsCheckuserLogin = true;
        public UserInfo LoginUser { get; set; }
        public OperationLog LoginInfo = new OperationLog();
        public string ActionParameters {get;set;}
        public string ActionName { get; set; }

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            //MVC请求来了之后，根据请求地址，创建控制器工厂（spring.Net），控制器工厂创建控制器，执行方法
            //Spring.Net
            base.OnActionExecuting(filterContext);
            //var items = filterContext.RouteData.Values;

            if (IsCheckuserLogin)
            {
                //使用mm+cookies代替session
                //校验用户是否已经登录
                //从缓存中拿到当前的登录的用户信息
                if (filterContext.HttpContext.Request.Cookies["userLoginId"] == null)
                {
                    filterContext.HttpContext.Response.Redirect("/UserLogin/Index");
                    return;
                }
                string userGuid = filterContext.HttpContext.Request.Cookies["userLoginId"].Value;
                UserInfo userInfo = Common.Cache.CacheHelper.GetCache(userGuid) as UserInfo;
                if (userInfo == null)
                {
                    //用户长时间不操作，超时
                    filterContext.HttpContext.Response.Redirect("/UserLogin/Index");

                }
                LoginUser = userInfo;
                LoginInfo.Ip = WebHelper.GetClientIp();
                LoginInfo.Mac = WebHelper.GetClientMACAddress();
                //滑动窗口机制
                Common.Cache.CacheHelper.SetCache(userGuid, userInfo, DateTime.Now.AddMinutes(20));
            }
        }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
          
           




        }



    }
}