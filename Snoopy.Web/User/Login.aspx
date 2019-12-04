<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Snoopy.Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<link rel="stylesheet" href="https://code.bdstatic.com/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />--%>
    <link href="../Content/layui/css/layui.css" rel="stylesheet" />
    <link rel="icon" href="../Contentimg/see_no_evil_monkey.ico" type="images/x-ico" />
    <link href="../Content/css/login.css" rel="stylesheet" />
</head>
<body>
    <div class="layui-container">
        <div class="layui-row">
            <div class="layui-col-md3">
                <a href="#">
                    <img src="../Content/img/see_no_evil_monkey.svg" width="64" height="64" alt="Midada" /></a>
            </div>
        </div>

        <div class="my-4 text-center">
            <h4>Sign in to Midada</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <form action="/account/login" method="post">

                    <div class="layui-form-item">
                        <label class="layui-form-label">Username or email address</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">Password</label>
                        <div class="layui-input-block">
                            <input type="text" name="title" required lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input">
                        </div>
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
                    <a href="/account/auth/github">
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
