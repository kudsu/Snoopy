<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Snoopy.WebForm.News.List" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/layui/css/layui.css" rel="stylesheet" />
    <link href="../Content/css/top.css" rel="stylesheet" />
    <link href="../Content/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <style>
        .excerpt {
            width: 820px;
            border: 1px solid #eaeaea;
            padding: 20px;
            overflow: hidden;
            background-color: #fff;
            margin-bottom: -1px;
        }

        .excerpt-1 {
            border-radius: 4px 4px 0 0;
        }

        .cat {
            color: #fff;
            background-color: #00D6AC;
            padding: 3px 6px;
            font-size: 12px;
            position: relative;
            text-decoration: none
        }

        .excerpt .cat i {
            position: absolute;
            top: 50%;
            margin-top: -4px;
            right: -4px;
            border-left: 4px solid #00D6AC;
            border-top: 4px solid transparent;
            border-bottom: 4px solid transparent;
        }

        .sticky-icon {
            line-height: 1;
            padding: 4px 4px 3px;
            font-size: 12px;
            background-color: #FF5E52;
            color: #fff;
            border-radius: 2px;
        }

        header .nt {
            font-size: 18px;
            font-family: 'Microsoft YaHei';
            font-weight: bold;
            color: #555;
            text-decoration: none
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <h1 class="logo"><a href="http://www.carrotchou.blog" title="胡萝卜周博客 - 软件分享真正领跑者 | 一直被模仿，从未被超越！">
                <img src="http://www.carrotchou.blog/wp-content/uploads/2019/07/hlbz-logo.png" alt="胡萝卜周博客 - 软件分享真正领跑者 | 一直被模仿，从未被超越！">胡萝卜周博客</a></h1>
            <div class="brand">
                一直被模仿
                <br>
                从未被超越
            </div>
            <ul class="site-nav site-navbar">
                <li id="menu-item-19596" class="menu-item  current-menu-item"><a href="http://www.carrotchou.blog"><i class="fa fa-home" aria-hidden="true"></i>首页</a></li>
                <li id="menu-item-19631" class="menu-item"><a><i class="fa fa-book" aria-hidden="true"></i>分类浏览</a>
                    <ul class="sub-menu">
                        <li id="menu-item-19632" class="menu-item"><a href="http://www.carrotchou.blog/category/windows">Windows</a></li>
                        <li id="menu-item-19633" class="menu-item"><a href="http://www.carrotchou.blog/category/android">Android</a></li>
                        <li id="menu-item-19634" class="menu-item"><a href="http://www.carrotchou.blog/category/mac">Mac OS</a></li>
                        <li id="menu-item-19692" class="menu-item"><a href="http://www.carrotchou.blog/?s=%E6%AD%A3%E7%89%88">正版软件</a></li>
                    </ul>
                </li>
                <li id="menu-item-12030" class="menu-item"><a href="http://www.carrotchou.blog/archives"><i class="fa fa-archive" aria-hidden="true"></i>归档</a></li>
                <li class="navto-search"><a href="javascript:;" class="search-show active"><i class="fa fa-search"></i>搜索</a></li>
            </ul>
            <div class="topbar">
                <ul class="site-nav topmenu">
                    <li id="menu-item-22267" class="menu-item"><a href="http://www.carrotchou.blog/game"><i class="fa fa-gamepad" aria-hidden="true"></i>圈小猫</a></li>
                    <li id="menu-item-19593" class="menu-item"><a href="http://www.carrotchou.blog/9653.html"><i class="fa fa-windows" aria-hidden="true"></i>Win10最新版</a></li>
                    <li id="menu-item-19594" class="menu-item"><a href="http://www.carrotchou.blog/178.html"><i class="fa fa-cloud-download" aria-hidden="true"></i>Office最新版</a></li>
                    <li id="menu-item-19600" class="menu-item"><a href="http://www.carrotchou.blog/10759.html"><i class="fa fa-qq" aria-hidden="true"></i>QQ群</a></li>
                    <li id="menu-item-19619" class="menu-item"><a href="http://www.carrotchou.blog/wp-content/uploads/2019/04/WeChat.jpg"><i class="fa fa-weixin" aria-hidden="true"></i>微信公众号</a></li>
                </ul>
            </div>
        </div>
    </header>
    <div class="site-search layui-form">
        <div class="container">
            <form method="get" class="site-search-form" action="http://www.carrotchou.blog/">
                <input class="search-input layui-input" name="s" type="text" placeholder="输入关键字" value="" />
                <button class="search-btn layui-btn" type="submit"><i class="fa fa-search"></i>搜索</button>
            </form>
        </div>
    </div>
    <article class="excerpt excerpt-1 excerpt-sticky">
        <a style="float: left" target="_blank" class="focus" href="http://www.carrotchou.blog/19435.html">
            <img alt="" src="http://www.carrotchou.blog/wp-content/uploads/2018/02/蒲公英logo.jpg" class="thumb" />
        </a>
        <header>
            <a class="cat" href="http://www.carrotchou.blog/category/%e7%a6%8f%e5%88%a9">福利<i></i></a>
            <a target="_blank" class="nt" href="" title="">两步自建不限速免费共享网盘 蒲公英VPN送服务兑换码</a>
            <span class="sticky-icon">置顶</span>
        </header>
        <p class="meta"><time><i class="fa fa-clock-o"></i>2019-12-01</time><span class="author"><i class="fa fa-user"></i>萝卜</span><span class="pv"><i class="fa fa-eye"></i>阅读(152602)</span><a class="pc" href="http://www.carrotchou.blog/19435.html#comments"><i class="fa fa-comments-o"></i>评论(35)</a><a href="javascript:;" etap="like" class="post-like" data-pid="19435"><i class="fa fa-thumbs-o-up"></i>赞(<span>318</span>)</a></p>
        <p class="note">为什么需要异地组网？ 如今，很多人都有移动办公访问内部办公系统（如OA、ERP、CRM、财务系统等）、远程控制、组建私有云、视频监控之类的需求。不过，不少宽带运营商并不会给用户分配固定的公网IP，因此，出门在外访问内网服务以及异地组建局域网...</p>
    </article>
    <article class="excerpt excerpt-1 excerpt-sticky">
        <a style="float: left" target="_blank" class="focus" href="http://www.carrotchou.blog/19435.html">
            <img alt="" src="http://www.carrotchou.blog/wp-content/uploads/2018/02/蒲公英logo.jpg" class="thumb" />
        </a>
        <header>
            <a class="cat" href="http://www.carrotchou.blog/category/%e7%a6%8f%e5%88%a9">福利<i></i></a>
            <a target="_blank" class="nt" href="" title="">两步自建不限速免费共享网盘 蒲公英VPN送服务兑换码</a>
            <span class="sticky-icon">置顶</span>
        </header>
        <p class="meta"><time><i class="fa fa-clock-o"></i>2019-12-01</time><span class="author"><i class="fa fa-user"></i>萝卜</span><span class="pv"><i class="fa fa-eye"></i>阅读(152602)</span><a class="pc" href="http://www.carrotchou.blog/19435.html#comments"><i class="fa fa-comments-o"></i>评论(35)</a><a href="javascript:;" etap="like" class="post-like" data-pid="19435"><i class="fa fa-thumbs-o-up"></i>赞(<span>318</span>)</a></p>
        <p class="note">为什么需要异地组网？ 如今，很多人都有移动办公访问内部办公系统（如OA、ERP、CRM、财务系统等）、远程控制、组建私有云、视频监控之类的需求。不过，不少宽带运营商并不会给用户分配固定的公网IP，因此，出门在外访问内网服务以及异地组建局域网...</p>
    </article>
    <div id="test1"></div>
    <script src="../Content/layui/layui.all.js"></script>
    <script>
        layui.use('laypage', function () {
            var laypage = layui.laypage;

            //执行一个laypage实例
            laypage.render({
                elem: 'test1' //注意，这里的 test1 是 ID，不用加 # 号
                , count: 50 //数据总数，从服务端得到
                , limit: 5
                , curr: location.hash.replace('#!page=', '') //获取起始页
                , hash: 'page' //自定义hash值
                , theme: '#00D6AC'
                , first:'首页'
                ,last:'尾页'
            });
        });
    </script>
</body>
</html>
