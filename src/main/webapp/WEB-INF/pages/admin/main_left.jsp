<%@ page language="java" import="com.zxw.pojo.Admin" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>
<c:set var="admin" value="<%=admin%>"></c:set>
<!-- 侧边导航栏 -->
<div class="left-sidebar">
	<!-- 用户信息 -->
	<div class="tpl-sidebar-user-panel">
		<div class="tpl-user-panel-slide-toggleable" style="margin-top: 50px;">
			<i class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
			当前用户：${admin.username}<br />
			<a href="javascript:;" class="tpl-user-panel-action-link"> <span class="am-icon-pencil"></span>
				账号设置</a>
		</div>
	</div>

	<!-- 菜单 -->
	<ul class="sidebar-nav">
		<li class="sidebar-nav-heading">Catalog <span class="sidebar-nav-heading-info"> 目录</span></li>
		<li class="sidebar-nav-link">
			<a href="javascript:;" class="sidebar-nav-sub-title">
				<i class="am-icon-table sidebar-nav-link-logo"></i> 用户中心
				<span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
			</a>
			<ul class="sidebar-nav sidebar-nav-sub">
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>admin_userList?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 用户列表
					</a>
				</li>
			</ul>
		</li>
		<li class="sidebar-nav-link">
			<a href="javascript:;" class="sidebar-nav-sub-title">
				<i class="am-icon-table sidebar-nav-link-logo"></i> 商品中心
				<span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
			</a>
			<ul class="sidebar-nav sidebar-nav-sub">
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>goods_goodsList?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 商品列表
					</a>
				</li>
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>catelog_getCatelog?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 商品分类
					</a>
				</li>
			</ul>
		</li>
		<li class="sidebar-nav-link">
			<a href="javascript:;" class="sidebar-nav-sub-title">
				<i class="am-icon-table sidebar-nav-link-logo"></i> 交易中心
				<span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
			</a>
			<ul class="sidebar-nav sidebar-nav-sub">
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>orders_ordersList?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 订单列表
					</a>
				</li>
<%--
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>orders_ordersList?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 资金明细
					</a>
				</li>

				<li class="sidebar-nav-link">
					<a href="<%=basePath%>orders_ordersList?page=1&rows=10">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 充值记录
					</a>
				</li>--%>
			</ul>
		</li>
		<li class="sidebar-nav-link">
			<a href="javascript:;" class="sidebar-nav-sub-title">
				<i class="am-icon-table sidebar-nav-link-logo"></i> 文章中心
				<span class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
			</a>
			<ul class="sidebar-nav sidebar-nav-sub">
				<li class="sidebar-nav-link">
					<a href="<%=basePath%>/article_getArticle?page=1&rows=10&className=1">
						<span class="am-icon-angle-right sidebar-nav-link-logo"></span> 文章列表
					</a>
				</li>
			</ul>
		</li>
	</ul>
</div>