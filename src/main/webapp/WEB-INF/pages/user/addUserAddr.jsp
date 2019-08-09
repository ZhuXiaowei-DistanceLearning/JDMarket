<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/9
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <script type="text/javascript" src="./js/jquery.js"></script>
    <link rel="shortcut icon" type="./js/favicon.ico">
</head>
<body>
<jsp:include page="../common/user_header.jsp"></jsp:include>
<div class="huiyuan_content">
    <jsp:include page="../common/user_nav.jsp"></jsp:include>
    <div class="fr huiyuan_main">
        <div class="hy_tt">
            <a href="javascript:;" class="sel">新增地址<i></i></a>
        </div>
        <div class="hy_table">
            <form id="form" method="post" action="<%=basePath%>/userAddr_addUserAddr">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td style="text-align:right;" width="150">收&nbsp;&nbsp;货 人：</td>
                        <td>
                            <input type="text" name="userName" value="" class="inputall input200"/>
                            <span id="user_tname_show"></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">手机号码：</td>
                        <td>
                            <input type="text" name="userPhone" value="" class="inputall input200"/>
                            <span id="user_phone_show"></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">所在城市：</td>
                        <td id="cityselect">
                            <select id="province" onchange="chooseProvince(this)" style="height:28px;margin-right: 3px">
                                <option>请选择省</option>
                            </select>
                            <select id="city" onChange="chooseCity(this)" style="height:28px;margin-right: 3px">
                                <option>请选择市</option>
                            </select>

                            <select id="area" style="height:28px;margin-right: 3px">
                                <option>请选择区</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;">详细地址：</td>
                        <td>
                            <input type="text" name="addressText" value="" class="inputall input400"/>
                            <span id="address_text_show"></span>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:right;"></td>
                        <td>
                            <label for="default">
                                <input type="checkbox" name="addressDefault" value="1" class="inputfix mar5"
                                       id="default"/>
                                <span>设为默认收货地址</span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="hidden" name="addressProvince" id="addressProvince"/>
                            <input type="hidden" name="addressCity" id="addressCity"/>
                            <input type="hidden" name="addressArea" id="addressText"/>
                            <input type="button" id="addUserAddr" value="提 交" class="tjbtn"/>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
</div>
<script type="text/javascript">
    $(function () {
        //二维码显示
        $("#qrcode_btn").hover(function () {
            $("#qrcode_show").show();
        }, function () {
            $("#qrcode_show").hide();
        })
        //电话显示
        $("#tel_btn").hover(function () {
            $("#tel_show").show();
        }, function () {
            $("#tel_show").hide();
        })
    });
    function right_scrolltop() {
        $("body,html").animate({"scrollTop": 0});
    }
</script>
<script type="text/javascript">
    $("#addUserAddr").click(function () {
        if ($("#province option:selected").text() != "" &&
            $("#city option:selected").text() != "" &&
            $("#area option:selected").text() != "") {
            $("#addressProvince").val($("#province option:selected").text());
            $("#addressCity").val($("#city option:selected").text());
            $("#addressText").val($("#area option:selected").text());
            $("#form").submit();
        }

    })
</script>
<script type="text/javascript" src="./js/province.js"></script>
</body>
</html>