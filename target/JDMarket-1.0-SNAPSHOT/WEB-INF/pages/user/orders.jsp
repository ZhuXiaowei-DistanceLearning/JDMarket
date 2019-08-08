<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>我的订单 - PHPSHE B2C商城系统演示站 - Powered by phpshe</title>
	<meta name="viewport" content="width=1200" />
	<meta name="keywords" content="免费商城系统,网上商城系统,多用户商城系统,分销商城系统,微信商城系统,商城源码,手机移动商城系统,b2b2c商城系统,网店系统,购物系统,php商城系统,phpshe,简好网络" />
	<meta name="description" content="PHPSHE网上商城系统具备电商零售业务所需的所有基本功能，以其安全稳定、简单易用、高效专业等优势赢得了用户的广泛好评，为用户提供了一个低成本、高效率的网上商城建设方案。" />
	<meta name="viewport" content="width=1200" />
	<link rel="shortcut icon" type="image/ico" href="http://www.phpshe.com/demo/phpshe/favicon.ico">
	<link type="text/css" rel="stylesheet" href="http://www.phpshe.com/demo/phpshe/template/default/user/css/style.css" />
	<script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/jquery.js"></script>
	<script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/js/global.js"></script>
	<script type="text/javascript" src="http://www.phpshe.com/demo/phpshe/include/plugin/layer/layer.js"></script>
</head>
<body>
<div class="quick_menu">
	<div class="width980">
		<span class="fl">欢迎来到PHPSHE B2C商城系统演示站！</span>
		<div class="fr top_r">
			您好：<a href="http://www.phpshe.com/demo/phpshe/user.php" style="color:#DF002F;padding:0;border:0">zxcasdqwe</a>
			<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=do&act=logout" title="退出" style="padding-left:0;color:#999">[退出]</a>

			<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order" title="我的订单" class="scj">我的订单</a>
			<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=sign" title="签到有礼">签到有礼</a>
			<a href="http://www.phpshe.com/demo/phpshe/article/news" title="资讯中心" style="border-right:0;">资讯中心</a>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div style="background:#E45050; padding-bottom:20px; position:relative">
	<div class="width980">
		<div class="fl logo">
			<a href="http://www.phpshe.com/demo/phpshe/user.php">会员中心</a>
		</div>
		<div class="user_nav">
			<li><h3><a href="http://www.phpshe.com/demo/phpshe/" title="首页">首页</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/demo/phpshe/brand/list" title="品牌专区" >品牌专区</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/demo/phpshe/quan/list" title="领券中心" >领券中心</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/zhekou" title="限时折扣" >限时折扣</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/demo/phpshe/huodong/pintuan" title="限时拼团" >限时拼团</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/" title="简好网络" >简好网络</a></h3></li>
			<li><h3><a href="http://www.phpshe.com/phpshe" title="购买授权" >购买授权</a></h3></li>
		</div>
		<div class="sear fr">
			<form method="get" action="http://www.phpshe.com/demo/phpshe/index.php">
				<input type="hidden" name="mod" value="product" />
				<input type="hidden" name="act" value="list" />
				<div class="inputbg fl"><input type="text" name="keyword" value="" class="fl searinput c666" /></div>
				<input type="submit" class="fl sear_btn" onclick="this.form.submit();return false;" value="搜 索" />
			</form>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
</div>
<div class="huiyuan_content">
	<div class="huiyuan_left">
		<a href="user.php"><h3 class="hy_tb6"><s></s>个人中心</h3></a>
		<h3 class="hy_tb2"><s></s>交易管理</h3>
		<ul>
			<li><a href="user.php?mod=order" class="sel">我的订单</a></li>
			<li><a href="user.php?mod=comment" >我的评价</a></li>
			<li><a href="user.php?mod=collect" >我的收藏</a></li>
			<li><a href="user.php?mod=refund" >退款/退货</a></li>
		</ul>
		<div class="xuxian"></div>
		<h3 class="hy_tb4"><s></s>财务中心</h3>
		<ul>
			<li><a href="user.php?mod=quan" >我的优惠券</a></li>
			<li><a href="user.php?mod=moneylog" >资金明细</a></li>
			<li><a href="user.php?mod=pointlog" >积分明细</a></li>
			<li><a href="user.php?mod=pay" >充值/提现</a></li>
		</ul>
		<div class="xuxian"></div>
		<h3 class="hy_tb3"><s></s>用户设置</h3>
		<ul>
			<li><a href="user.php?mod=setting&act=base" >个人信息</a></li>
			<li><a href="user.php?mod=setting&act=pw" >修改密码</a></li>
			<li><a href="user.php?mod=userbank" >收款账户</a></li>
			<li><a href="user.php?mod=useraddr" >收货地址</a></li>
		</ul>
		<div class="xuxian"></div>
		<h3 class="hy_tb5"><s></s>分销中心</h3>
		<ul>
			<li><a href="user.php?mod=tg" >邀请好友</a></li>
			<li style="padding-bottom:20px"><a href="user.php?mod=tg&act=list" >我的收益</a></li>
		</ul>
	</div>	<div class="fr huiyuan_main">
	<div class="hy_tt">
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order" class="sel">全部订单<span>(1)</span><i></i></a> |
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=wpay" >待付款<span>(1)</span><i></i></a> |
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=wsend" >待发货<span>(0)</span><i></i></a> |
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=wget" >待收货<span>(0)</span><i></i></a> |
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=success" >交易完成<span>(0)</span><i></i></a> |
		<a href="http://www.phpshe.com/demo/phpshe/user.php?mod=order&state=wpj" >待评价<span>(0)</span><i></i></a>
	</div>
	<div class="mat15">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_ordertt1">
			<tr>
				<td>商品信息</td>
				<td width="100">退款/退货</td>
				<td width="121">实付款(元)</td>
				<td width="101">状态</td>
				<td width="101">操作</td>
			</tr>
		</table>
	</div>
	<div class="hy_ordertt">
		<span class="fl">2019-08-08 10:37</span>
		<span class="fl" style="margin-left:30px">订单号：190808103751791</span>
		<div class="clear"></div>
	</div>
	<table width="100%" border="0" cellspacing="0" cellpadding="0" class="hy_orderlist">
		<tr>
			<td style="text-align:left;">
				<div class="dingdan_list" style="padding-top:0;border-top:0">
					<a href="http://www.phpshe.com/demo/phpshe/product/2" class="fl mar5 dingdan_img" target="_blank"><img src="http://www.phpshe.com/demo/phpshe/data/cache/thumb/2019-08/thumb_100x100_20180812173116l.jpg" /></a>
					<div class="fl dingdan_name">
						<a href="http://www.phpshe.com/demo/phpshe/product/2" target="_blank" class="dd_name">phpshe测试商品小清新刺绣网纱拼接连衣裙中长款森女系收腰显瘦喇叭袖系带裙</a>
						<p class="c888 mat5">女装尺码：L</p>
					</div>
					<div class="fl dingdan_jg">¥88.0 <span class="mat5 c888 font12">×1</span></div>
					<div class="fr dingdan_tk">
					</div>
					<div class="clear"></div>
				</div>
			</td>
			<td width="120">
				<p class="corg font14 strong">88.0</p>
				<p class="c999">（含运费：0.0）</p>
				<p class="c999">余额支付</p>
			</td>
			<td width="100">
				<span class="corg">等待付款</span>				<p><a href="user.php?mod=order&act=view&id=190808103751791" target="_blank">订单详情</a></p>
			</td>
			<td width="100">
				<a class="tag_org" href="index.php?mod=order&act=pay&id=190808103751791" target="_blank">立即付款</a>
				<p class="mat5"><a class="c999" href="user.php?mod=order&act=close&id=190808103751791" onclick="return pe_dialog(this, '取消订单', 550, 400)">取消订单</a></p>
			</td>
		</tr>
	</table>
	<div class="fenye mat10"></div>
</div>
	<div class="clear"></div>
</div>
<div class="clear"></div>
<div class="celan">
	<a href="http://www.phpshe.com/demo/phpshe/cart" style="margin-top:90px;">
		<div class="cl_sl">2</div>
		<div class="ico_gwc"><i></i></div>
		<div class="font14 mat8">购<br />物<br />车</div>
	</a>
	<a href="http://www.phpshe.com/demo/phpshe/android.apk" target="_blank">
		<div class="cl_app">APP</div>
		<div class="ico_app"><i></i></div>
	</a>
	<a href="javascript:;" style="position:relative" id="qrcode_btn">
		<div class="cl_weixin"><i></i></div>
		<div class="cl_ewm" id="qrcode_show"><img src="http://www.phpshe.com/demo/phpshe/data/attachment/2017-05/20170503193748z.jpg"></div>
	</a>
	<a href="http://wpa.qq.com/msgrd?v=3&uin=76265959&site=qq&menu=yes" target="_blank">
		<div class="cl_qq"><i></i></div>
	</a>
	<a href="javascript:;" style="position:relative" id="tel_btn">
		<div class="font14">电话</div>
		<div class="cl_tel" id="tel_show">15839823500</div>
	</a>
	<a href="javascript:right_scrolltop();" class="topback"><i></i></a>
</div>
<div class="foot">
	<div class="subnav">
		Copyright <span class="num">©</span> 2008-2018 简好网络 All Rights Reserved 豫ICP备17013559号-1 &nbsp;
		Powered by <a href="http://www.phpshe.com" target="_blank" title="PHPSHE商城系统">phpshe1.7</a>
	</div>
</div>
<div style="background:url('http://www.phpshe.com/template/default/index/images/small_phone.png') no-repeat; width:291px;height:483px; position:fixed; right:60px; bottom:10px;z-index:999999" id="phone_html">
	<div style="position:relative">
		<span style="background:url('http://www.phpshe.com/template/default/index/images/phone_close.png') no-repeat; width:14px; height:14px; position:absolute; right:18px; top:10px" onclick='$("#phone_html").remove()'></span>
	</div>
	<iframe name="mobile_iframe" style="width: 265px; height: 400px; border: medium none; margin:33px 0 0 13px" src="http://m.phpshe.com/demo/phpshe/"></iframe>
</div>
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