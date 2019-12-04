<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Snoopy.WebForm.User.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<link rel="stylesheet" href="https://code.bdstatic.com/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />--%>
    <link href="../Content/layui/css/layui.css" rel="stylesheet" />
    <link rel="icon" href="../Contentimg/see_no_evil_monkey.ico" type="images/x-ico" />
    <link href="../Content/css/login.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            position: relative;
            float: left;
            display: block;
            width: 164px;
            font-weight: 400;
            line-height: 20px;
            text-align: right;
            left: -3px;
            top: 2px;
            padding: 9px 15px;
        }

        .auto-style3 {
            position: relative;
            float: left;
            display: block;
            width: 57px;
            font-weight: 400;
            line-height: 20px;
            text-align: right;
            left: 0px;
            top: 0px;
            padding: 9px 15px;
        }
    </style>
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
        <div class="card-body">
            <form action="/account/login" method="post">
                <label class="layui-form-label">Account</label>
                <div class="layui-form-item">
                    <input type="text" name="title" required lay-verify="required" lay-reqtext="用户名是必填项，岂能为空？" placeholder="Username or email address" autocomplete="off" class="layui-input" />
                </div>

                <label class="layui-form-label">Password</label>
                <div class="layui-form-item">
                    <input type="text" name="title" required lay-verify="required" placeholder="*********" autocomplete="off" class="layui-input" />
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
            <div class="otherlogin">
                <a class="mx-2" href="/mix/terms">条款</a>
                <a class="mx-2" href="https://ss.netnr.com/contact">联系</a>
                |
				<a class="mx-2" href="/">首页</a>
                <a class="mx-2" href="/account/register">注册</a>
            </div>
        </div>
    </div>
</body>
</html>
