<%--
  Created by IntelliJ IDEA.
  User: zxw
  Date: 2019/8/14
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="com.zxw.pojo.Admin" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	Admin admin = (Admin) request.getSession().getAttribute("admin");
%>
<c:set var="admin" value="<%=admin%>"></c:set>
<body>
<!-- 头部 -->
<header>
	<!-- logo -->
	<div class="am-fl tpl-header-logo">
		<a href="<%=basePath%>/page_admin_index"><img src="<%=basePath%>/upload/logo.png"></a>
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
					<a href="javascript:;">${admin.username} </a>
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
					<a href="<%=basePath%>/admin_logout">
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
</body>
