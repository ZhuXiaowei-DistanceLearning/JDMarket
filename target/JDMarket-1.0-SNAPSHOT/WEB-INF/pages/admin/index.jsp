<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>仅用于学习-首页</title>
    <link rel="icon" type="image/png" href="<%=basePath%>/js/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=basePath%>/js/assets/i/app-icon72x72@2x.png">
    <script src="<%=basePath%>/js/echarts.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.min.css" />
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/app.css">
    <script src="<%=basePath%>/js/assets/js/jquery.min.js"></script>

</head>

<body class="theme-white">
<script src="assets/js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 头部 -->
    <header>
        <!-- logo -->
        <div class="am-fl tpl-header-logo">
            <a href="javascript:;"><img src="../images/background-image/logo.png"></a>
        </div>
        <!-- 右侧内容 -->
        <div class="tpl-header-fluid">
            <!-- 侧边切换 -->
            <div class="am-fl tpl-header-switch-button am-icon-list">
                        <span>

                        </span>
            </div>
            <!-- 搜索 -->
            <div class="am-fl tpl-header-search">
                <form class="tpl-header-search-form" action="javascript:;">
                    <button class="tpl-header-search-btn am-icon-search"></button>
                    <input class="tpl-header-search-box" type="text" placeholder="搜索内容...">
                </form>
            </div>
            <!-- 其它功能-->
            <div class="am-fr tpl-header-navbar">
                <ul>
                    <!-- 欢迎语 -->
                    <li class="am-text-sm tpl-header-navbar-welcome">
                        <a href="javascript:;">朱小威, <span>学号：2018200280</span> </a>
                    </li>

                    <!-- 新邮件 -->
                    <li class="am-dropdown tpl-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle tpl-dropdown-toggle"
                           data-am-dropdown-toggle>
                            <i class="am-icon-envelope"></i>
                            <span class="am-badge am-badge-success am-round item-feed-badge">1</span>
                        </a>
                        <!-- 弹出列表 -->
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <div class="menu-messages-content">
                                        <div class="menu-messages-content-title">
                                            <span>朱小威&nbsp;&nbsp;|&nbsp;&nbsp; 学号：2018200280</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="tpl-dropdown-menu-messages">
                                <a href="javascript:;" class="tpl-dropdown-menu-messages-item am-cf">
                                    <i class="am-icon-circle-o"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- 新提示 -->
                    <li class="am-dropdown" data-am-dropdown>
                        <a href="javascript:;" class="am-dropdown-toggle" data-am-dropdown-toggle>
                            <i class="am-icon-bell"></i>
                            <span class="am-badge am-badge-warning am-round item-feed-badge">1</span>
                        </a>

                        <!-- 弹出列表 -->
                        <ul class="am-dropdown-content tpl-dropdown-content">
                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <div class="tpl-dropdown-menu-notifications-title">
                                        <span> 朱小威&nbsp;&nbsp;|&nbsp;&nbsp; 学号：2018200280</span>
                                    </div>
                                </a>
                            </li>

                            <li class="tpl-dropdown-menu-notifications">
                                <a href="javascript:;" class="tpl-dropdown-menu-notifications-item am-cf">
                                    <i class="am-icon-bell"></i> 进入列表…
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- 退出 -->
                    <li class="am-text-sm">
                        <a href="javascript:;">
                            <span class="am-icon-sign-out"></span> 退出
                        </a>
                    </li>
                </ul>
            </div>
        </div>

    </header>
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span id="theme" class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <!-- 侧边导航栏 -->
    <div class="left-sidebar">
        <!-- 用户信息 -->
        <div class="tpl-sidebar-user-panel">
            <div class="tpl-user-panel-slide-toggleable" style="margin-top: 50px;">
                <i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
                当前用户：朱小威<br />
                <a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span>
                    账号设置</a>
            </div>
        </div>

        <!-- 菜单 -->
        <ul class="sidebar-nav">
            <li class="sidebar-nav-heading">Catalog <span class="sidebar-nav-heading-info"> 目录</span></li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 首页
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="shouye/table-list-lunbo.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 轮播图
                        </a>
                    </li>
                    <li class="sidebar-nav-link">
                        <a href="shouye/table-list-jcrm.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 教程入门
                        </a>
                    </li>
                    <li class="sidebar-nav-link">
                        <a href="shouye/table-list-rmlm.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 热门栏目
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 文章
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="wenzhang/table-list-wz.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文章
                        </a>
                    </li>
                    <li class="sidebar-nav-link">
                        <a href="wenzhang/table-list-xjlr.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 细节猎人
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="wenzhang/table-list-ztgl.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 专题管理
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 细节猎人
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="xijielieren/table-list-gg.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 广告
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="xijielieren/table-list-xjlb.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 细节列表
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="xijielieren/table-list-ysdb.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 优设读报
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 吉大读报
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="jidadubao/table-list-jddb.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 优设读报
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> UiiiUiii课程
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="UiiiUiii/table-list-rmkc.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> UiiiUiii热门课程
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="UiiiUiii/table-list-kclb.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 课程列表
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="UiiiUiii/table-list-tjsjs.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 推荐设计师
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-nav-link">
                <a href="javascript:;" class="sidebar-nav-sub-title">
                    <i class="am-icon-table sidebar-nav-link-logo"></i> 免费教程
                    <span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
                </a>
                <ul class="sidebar-nav sidebar-nav-sub">
                    <li class="sidebar-nav-link">
                        <a href="mianfeijiaocheng/table-list-gzh.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 新版公众号首图
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="mianfeijiaocheng/table-list-gzewm.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 关注二维码
                        </a>
                    </li>

                    <li class="sidebar-nav-link">
                        <a href="mianfeijiaocheng/table-list-ztztc.html">
                            <span class="am-icon-angle-right sidebar-nav-link-logo"></span> 主图直通车
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <!-- 内容区域 -->
    <div class="tpl-content-wrapper" style="text-align: center">

        <div class="container-fluid am-cf">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span>
                        吉大设计联盟后台管理系统</div>
                    <p class="page-header-description">姓名：朱小威，学号：2018200280，班级：软件6班</p>
                </div>
                <div class="am-u-lg-3 tpl-index-settings-button">
                    <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span>
                        设置</button>
                </div>
            </div>

        </div>

        <div class="row-content am-cf">
            <div class="row  am-cf">
                <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="text-align: center;">
                    <div class="widget widget-purple am-cf">
                        <div class="widget-statistic-body">
                            <div class="widget-statistic-description">
                                欢迎使用吉大设计联盟
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="text-align: center;">
                    <div class="widget widget-primary am-cf">
                        <div class="widget-statistic-body">
                            <div class="widget-statistic-description">
                                <p id="showtime" style="font-size: 20px;"></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="text-align: center;">
                    <div class="widget widget-purple am-cf">
                        <div class="widget-statistic-body">
                            <div class="widget-statistic-description">
                                姓名：朱小威<br />
                                学号：20182002880<br />
                                班级：软件6班
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="margin:0 auto;display: inline-block;">
            <div id="main" style="width: 600px;height: 400px"></div>
            <p>最近访问人数</p>
        </div>
    </div>
</div>
<script src="assets/js/amazeui.min.js"></script>
<script src="assets/js/amazeui.datatables.min.js"></script>
<script src="assets/js/dataTables.responsive.min.js"></script>
<script src="assets/js/app.js"></script>
<script src="../js/jquery-1.8.3.min.js"></script>
<script>
    $(function() {
        var time = new Date();
        var year = time.getFullYear();
        var month = time.getMonth() + 1;
        var date = time.getDate();
        var day = time.getDay();
        var weeks = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
        var week = weeks[day];
        var hour = time.getHours();
        var greet;
        if (hour >= 0 && hour < 12) {
            var greet = "早上好";
        } else if (hour >= 12 && hour < 18) {
            var greet = "下午好"
        } else if (hour >= 18 && hour < 24) {
            var greet = "晚上好"
        }
        $("#showtime").html(greet + ",现在是" + year + "年" + month + "月" + date + "日" + " " + week)
    })
</script>
</body>
<!--==================================================================================================================-->
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    let date = new Date();
    let dateArr = new Array();
    let dataArr = [];
    for (let i = 0; i < 7; i++) {
        dateArr.push((date.getMonth() + 1) + '-' + (date.getDate() - 6 + i));
    }
    $.ajax({
        url: "<%=basePath%>/visitor_getVisitor",
        type: "get",
        success: function (data) {
            for(let i=0;i<data.length;i++){
                dataArr.push(data[i].rows);
            }
            option = {
                xAxis: {
                    type: 'category',
                    boundaryGap: false,
                    data: dateArr
                },
                yAxis: {
                    type: 'value'
                },
                series: [{
                    data: dataArr,
                    type: 'line',
                    areaStyle: {}
                }]
            };
            myChart.setOption(option);
        },
        error: function (data) {
            alert("error")
        }
    });
    // 指定图表的配置项和数据

    // 使用刚指定的配置项和数据显示图表。
</script>
</html>
