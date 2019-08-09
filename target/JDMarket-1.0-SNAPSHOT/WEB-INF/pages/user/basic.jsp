<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人中心 - 吉大商城</title>
    <meta name="viewport" content="width=1200"/>
    <link type="text/css" rel="stylesheet" href="./css/user/style.css"/>
    <script type="text/javascript" src="./js/plugin/layer/layer.js"></script>
    <script type="text/javascript" src="./js/jquery.js"></script>
    <script type="text/javascript" src="./js/global.js"></script>
    <script type="text/javascript" src="./js/formcheck.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
</head>
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="hy_tt"><a href="javascript:;" class="sel">个人信息<i></i></a></div>
        <div class="hy_table">
            <form method="post" id="form" action="<%=basePath%>/user_updateUserInfo">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="text-align:right;" width="150">用&nbsp;&nbsp;户 名：</td>
                        <td><input type="text" id="username" name="username" class="inputall input200"
                                   value="${user.username}"/></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">身份：</td>
                        <td><span class="dj_btn">注册用户</span></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" width="150">手&nbsp;&nbsp;机：</td>
                        <td>${user.phone}</td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" width="150">密&nbsp;&nbsp;码：</td>
                        <td><input type="password" id="password" name="password" class="inputall input200"
                                   value="${user.password}"/></td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" width="150">qq：</td>
                        <td><input type="text" id="qq" name="qq" value="${user.qq}" class="inputall input200"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;" width="150">创建时间：</td>
                        <td>${user.createAt}</td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">信用分：</td>
                        <td>${user.power}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="hidden" name="pe_token" value="02982eac90343ed2d9a3ff9f0636aafc"/>
                            <input type="hidden" name="pesubmit"/>
                            <input type="button" value="提 交" class="tjbtn" id="updateInfo"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $(function () {
        $("#username").blur(function () {
            if ($("#username").val() == "" || $("#username").val() == "null") {
                $("#username").after("&nbsp;&nbsp;&nbsp;<p style='display: inline-block;color: red'>不能为空</p>")
            }
        });
        $("#password").blur(function () {
            if ($("#password").val() == "" || $("#password").val() == "null") {
                $("#password").after("&nbsp;&nbsp;&nbsp;<p style='display: inline-block;color: red'>不能为空</p>")
            }
        });
        $("#qq").blur(function () {
            if ($("#qq").val() == "" || $("#qq").val() == "null") {
                $("#qq").after("&nbsp;&nbsp;&nbsp;<p style='display: inline-block;color: red'>不能为空</p>")
            }
        });

        $("#updateInfo").click(function () {
            if ($("#qq").val() != "" && $("#qq").val() != "" && $("#qq").val() != "") {
                $("#form").submit();
            } else {
                alert("不能为空");
            }
        });
    });
</script>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
<script type="text/javascript">
    function right_scrolltop() {
        $("body,html").animate({"scrollTop": 0});
    }
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
</body>
</html>