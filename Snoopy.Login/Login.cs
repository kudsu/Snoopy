using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace Snoopy.Login
{
    public class Login
    {
        public string  AC(string ways, string code)
        {
            string userJson = "";
            switch (ways)
            {
                case "GitHub":
                    //第二步，获取token
                    string tokenJson = LoadURLString("https://github.com/login/oauth/access_token?client_id=384b8716d358d8e0f696&client_secret=5eea1a2be05028dba1574c8e19c558860898f368&code=" + code + "&redirect_uri=http://www.kudsu.xyz/", "post");
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
        private string LoadURLString(string url, string GetPost)
        {
            System.Net.ServicePointManager.SecurityProtocol = SecurityProtocolType.Tls12;
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
