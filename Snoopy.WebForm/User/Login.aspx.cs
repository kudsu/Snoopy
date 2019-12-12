
using System;
namespace Snoopy.WebForm.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string code = Request.QueryString["code"] + "";
            if (code!="")
            {
                //tyLogin.CallLogin("GitHub", code);
            }
            
        }
    }
}