using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Snoopy.Login;

namespace Snoopy.WebForm.User
{
    public partial class Callback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string code = Request.QueryString["code"] == null || Request.QueryString["code"].ToString() == "" ? "" : Request.QueryString["code"].ToString();
                if (code != "")
                {
                    Snoopy.Login.Login login = new Snoopy.Login.Login();
                    login.AC("GitHub", code);
                }
            }
        }
    }
}