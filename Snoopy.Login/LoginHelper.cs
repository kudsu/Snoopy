using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;

namespace Snoopy.Login
{
    public class LoginHelper
    {
        public static string CallLogin(string ways, string code)
        {
            string userJson = "";
            switch (ways)
            {
                case "GitHub":
                    //第二步，获取token
                    string tokenJson = LoadURLString("https://github.com/login/oauth/access_token?client_id=384b8716d358d8e0f696&client_secret=5eea1a2be05028dba1574c8e19c558860898f368&code=" + code + "&redirect_uri=https://localhost:44315/User/Login.aspx", "post");
                    JObject jo = (JObject)JsonConvert.DeserializeObject(tokenJson);
                    tokenJson = jo["access_token"].ToString();
                    //第三步，获取GitHub用户信息
                    userJson = LoadURLString("https://api.github.com/user?access_token=" + tokenJson, "get");
                    break;
                default:
                    break;
            }
            return userJson;
        }
        /// <summary>
        /// 请求url
        /// </summary>
        /// <param name="url">url adrees</param>
        /// <param name="GetPost">post、get</param>
        /// <returns></returns>
        private static string LoadURLString(string url, string GetPost)
        {
            ServicePointManager.SecurityProtocol = (SecurityProtocolType)192 | (SecurityProtocolType)768 | (SecurityProtocolType)3072;
            //如果是4.5以上版本可以直接使用
            //ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12 | SecurityProtocolType.Tls11;
            HttpWebRequest request1 = (HttpWebRequest)WebRequest.Create(url);
            request1.Method = GetPost;
            request1.ContentType = "application/json";
            request1.Accept = "application/json";
            request1.Headers.Add("Accept-Language", "zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3");
            request1.UserAgent = "Mozilla/5.0 (Windows NT 5.2; rv:12.0) Gecko/20100101 Firefox/12.0";
            return new StreamReader(((HttpWebResponse)request1.GetResponse()).GetResponseStream(), Encoding.UTF8).ReadToEnd();
        }
    }
}
