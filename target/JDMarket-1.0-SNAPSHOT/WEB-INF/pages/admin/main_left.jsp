<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<body>
	<!--sidebar-menu-->
	<div id="sidebar">
		<ul>
			<li class="submenu"><a href="#"><i class="icon icon-group"></i>
					<span>用户中心</span> </a>
				<ul>
					<li><a href="<%=basePath%>admin_userList?page=1&rows=10">用户列表</a></li>
					<%-- <li><a href="<%=basePath%>admin/user/user_add.jsp">添加用户</a></li> --%>
				</ul>
			</li>
			<li class="submenu"><a href="#"><i class="icon icon-signal"></i>
					<span>商品中心</span> </a>
				<ul>
					<li><a href="<%=basePath%>goods_goodsList?page=1&rows=10">商品列表</a></li>
					<%-- <li><a href="<c:url value="/back/agent/addForm"/>">添加商品</a></li> --%>
				</ul>
			</li>
			<li class="submenu"><a href="#"><i class="icon icon-th"></i>
					<span>交易中心</span> </a>
				<ul>
					<li><a href="<%=basePath%>orders_ordersList?page=1&rows=10">订单列表</a></li>
					<li><a href="<%=basePath%>orders_ordersList?page=1&rows=10">资金明细</a></li>
					<li><a href="<%=basePath%>orders_ordersList?page=1&rows=10">充值记录</a></li>
					<%-- <li><a href="<c:url value="/back/house/addForm"/>">添加订单</a></li> --%>
				</ul>
			</li>
			<li class="submenu"><a href="#"><i class="icon icon-inbox"></i>
					<span>文章中心</span> </a>
				<ul>
					<li><a href="<%=basePath%>purse_purseList?page=1&rows=10">文章列表</a></li>
					<%-- <li><a href="<%=basePath%>admin/purseList?pageNum=1">审核管理</a></li> --%>
				</ul>
			</li>
		</ul>
	</div>
</body>
