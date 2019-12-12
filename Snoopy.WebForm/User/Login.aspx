<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Snoopy.WebForm.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>登陆 Snoopy</title>
    <%--<link rel="stylesheet" href="https://code.bdstatic.com/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />--%>
    <link href="../Content/layui/css/layui.css" rel="stylesheet" />
    <link rel="icon" href="../Content/img/see_no_evil_monkey.ico" type="images/x-ico" />
    <link href="../Content/css/login.css" rel="stylesheet" />
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
    <script src="../Content/layui/layui.all.js"></script>
    <script src="../Content/js/console.js"></script>
</head>
<body>
    <div class="layui-container">
        <div class="lbHead">
            <a href="#">
                <img src="../Content/img/see_no_evil_monkey.svg" width="64" height="64" alt="Monkey" /></a>
            <p class="aa">Sign in to Snoopy</p>
        </div>
        <div class="card-body">
            <form action="/account/login" method="post">
                <label class=" layui-form-label inputlb">Username or email address</label>
                <div class="layui-form-item">
                    <input type="text" name="title" required lay-verify="required" lay-reqtext="用户名是必填项，岂能为空？" placeholder="kudsu@qq.com" autocomplete="off" class="layui-input" />
                </div>

                <label class="layui-form-label inputlb">Password</label>
                <div class="layui-form-item">
                    <input type="password" name="title" required lay-verify="required" placeholder="*********" autocomplete="off" class="layui-input" />
                </div>
                <button type="submit" class="layui-btn layui-btn-fluid">Sign in</button>
            </form>
            <div class="otherlogin">
                <a href="/account/auth/qq">
                    <img src="../Content/img/qq.svg" title="QQ" />
                </a>
                <a href="/account/auth/weibo">
                    <img src="../Content/img/weibo.svg" title="微博" />
                </a>
                <a href="https://github.com/login/oauth/authorize?client_id=384b8716d358d8e0f696&state=STATE&redirect_uri=https://localhost:44315/User/Login.aspx">
                    <img src="../Content/img/github.svg" title="GitHub" />
                </a>
                <a href="/account/auth/taobao">
                    <img src="../Content/img/taobao.svg" title="淘宝/天猫" />
                </a>
                <a href="/account/auth/microsoft">
                    <img src="../Content/img/microsoft.svg" title="Microsoft" />
                </a>
            </div>

        </div>
        <div class="otherlogin">
            <a class="mx-2" href="/mix/terms">条款</a>
            <a class="mx-2" href="https://ss.netnr.com/contact">联系</a>
            |
			
                <a class="mx-2" href="/">首页</a>
            <a class="mx-2" href="/account/register">注册</a>
        </div>
    </div>
</body>
</html>
