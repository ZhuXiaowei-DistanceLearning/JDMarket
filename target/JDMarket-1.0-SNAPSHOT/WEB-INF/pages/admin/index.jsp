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
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/amazeui.datatables.min.css"/>
    <link rel="stylesheet" href="<%=basePath%>/js/assets/css/app.css">
    <script src="<%=basePath%>/js/assets/js/jquery.min.js"></script>
</head>
<body class="theme-white">
<jsp:include page="./main_top.jsp"></jsp:include>
<jsp:include page="./main_left.jsp"></jsp:include>
<div class="am-g tpl-g">
    <!-- 内容区域 -->
    <div class="tpl-content-wrapper" style="text-align: center">

        <div class="container-fluid am-cf" style="text-align: left">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-9">
                    <div class="page-header-heading"><span class="am-icon-home page-header-heading-icon"></span>
                        吉大二手商城后台管理系统
                    </div>
                    <p class="page-header-description"></p>
                </div>
                <div class="am-u-lg-3 tpl-index-settings-button">
                    <button type="button" class="page-header-button"><span class="am-icon-paint-brush"></span>
                        设置
                    </button>
                </div>
            </div>

        </div>

        <div class="row-content am-cf">
            <div class="row  am-cf">
                <div class="am-u-sm-12 am-u-md-6 am-u-lg-4" style="text-align: center;">
                    <div class="widget widget-purple am-cf">
                        <div class="widget-statistic-body">
                            <div class="widget-statistic-description">
                                欢迎使用吉大二手商城后台管理系统
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
                                欢迎你:${admin.username}
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
<script>
    $(function () {
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
            for (let i = 0; i < data.length; i++) {
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
<script src="<%=basePath%>/js/assets/js/amazeui.min.js"></script>
<script src="<%=basePath%>/js/assets/js/amazeui.datatables.min.js"></script>
<script src="<%=basePath%>/js/assets/js/dataTables.responsive.min.js"></script>
<script src="<%=basePath%>/js/assets/js/app.js"></script>
<script src="<%=basePath%>/js/assets/js/theme.js"></script>
</html>
