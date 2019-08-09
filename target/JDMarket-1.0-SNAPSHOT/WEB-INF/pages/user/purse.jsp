<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
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
    <div class="hy_tt">
        <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=pay" class="sel">账户充值<i></i></a>
        <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=cashout&act=add" >申请提现<i></i></a>
        <a href="http://www.phpshe.com/demo/phpshe/user.php?mod=cashout" >提现记录<i></i></a>
    </div>
    <div class="hy_table">
        <form method="post" id="form" target="_blank">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td style="text-align:right;" width="150">账户余额：</td>
                    <td><span class="corg">${myPurse.balance} 元</span></td>
                </tr>
                <tr>
                    <td style="text-align:right;">充值金额：</td>
                    <td>
                        <input type="text" name="order_money" value="" class="inputall input150" /> 元
                        <span id="order_money_show" class="mal10"></span>
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right;">支付方式：</td>
                    <td>
                        <label for="alipay" class="fl mar10" style="width:145px;height:45px;line-height:45px;padding-left:10px;border:1px solid #eaeaea;background:#f8f8f8;border-radius:3px">
                            <input type="radio" class="fl mar10 mat15" name="order_payment" id="alipay" value="alipay" />
                            <span class="fl"><img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/alipay/logo.png" class="mat8" /></span>
                            <div class="clear"></div>
                        </label>
                        <label for="wechat" class="fl mar10" style="width:145px;height:45px;line-height:45px;padding-left:10px;border:1px solid #eaeaea;background:#f8f8f8;border-radius:3px">
                            <input type="radio" class="fl mar10 mat15" name="order_payment" id="wechat" value="wechat" />
                            <span class="fl"><img src="http://www.phpshe.com/demo/phpshe/include/plugin/payment/wechat/logo.png" class="mat8" /></span>
                            <div class="clear"></div>
                        </label>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="hidden" name="pe_token" value="08f3b9a67fe3e3618753aae425b2b46d" />
                        <input type="hidden" name="pesubmit" />
                        <input type="button" value="提 交"  class="tjbtn" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $(function(){
        //支付方式
        $(":input[name='order_payment']:eq(0)").attr("checked", "checked");
        $(":button").click(function(){
            var order_money = pe_num($(":input[name='order_money']").val(), 'floor', 1);
            if (order_money < 0.1) {
                pe_tip('最低充值0.1元');
                return false;
            }
            $.ajaxSettings.async = false;
            pe_submit("http://www.phpshe.com/demo/phpshe/user.php?mod=pay", function(json){
                if (json.result) {
                    $("#form").attr("action", json.url).submit();
                }
            })
        })
    })
</script>
<div class="clear"></div>
<jsp:include page="../common/celan.jsp"></jsp:include>
<jsp:include page="../common/user_footer.jsp"></jsp:include>
<script type="text/javascript">
    $(function(){
        //二维码显示
        $("#qrcode_btn").hover(function(){
            $("#qrcode_show").show();
        }, function(){
            $("#qrcode_show").hide();
        })
        //电话显示
        $("#tel_btn").hover(function(){
            $("#tel_show").show();
        }, function(){
            $("#tel_show").hide();
        })
    });
    function right_scrolltop() {
        $("body,html").animate({"scrollTop":0});
    }
    pe_loadscript("http://www.phpshe.com/demo/phpshe/api.php?mod=cron");
</script>
</body>
</html>