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
<jsp:include page="../main_top.jsp"></jsp:include>
<jsp:include page="../main_left.jsp"></jsp:include>
<div class="am-g tpl-g">
    <!-- 内容区域 -->
    <div class="tpl-content-wrapper">
        <div class="row-content am-cf">
            <div class="row">
                <div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
                    <div class="widget am-cf">
                        <div class="widget-head am-cf">
                            <div class="widget-title  am-cf">用户列表显示</div>


                        </div>
                        <div class="widget-body  am-fr">
                            <%--  <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                  <div class="am-form-group">
                                      <div class="am-btn-toolbar">
                                          <div class="am-btn-group am-btn-group-xs">
                                              <button type="button" class="am-btn am-btn-default am-btn-success"
                                                      onclick="addModal()"><span class="am-icon-plus"></span> 新增用户
                                              </button>
                                          </div>
                                      </div>
                                  </div>
                              </div>
                              <div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
                                  <div class="am-form-group tpl-table-list-select">
                                      <select data-am-selected="{btnSize: 'sm'}">
                                          <option value="option1">所有类别</option>
                                          <option value="option2">干货集合</option>
                                      </select>
                                  </div>
                              </div>
                              <div class="am-u-sm-12 am-u-md-12 am-u-lg-3">
                                  <div class="am-input-group am-input-group-sm tpl-form-border-form cl-p">
                                      <input type="text" class="am-form-field ">
                                      <span class="am-input-group-btn">
                                                  <button class="am-btn  am-btn-default am-btn-success tpl-table-list-field am-icon-search"
                                                          type="button"></button>
                                              </span>
                                  </div>
                              </div>--%>

                            <div class="am-u-sm-12">
                                <table width="100%" class="am-table am-table-compact am-table-striped tpl-table-black "
                                       id="example-r">
                                    <thead>
                                    <tr>
                                        <th>订单编号</th>
                                        <th>订单信息</th>
                                        <th>订单价格</th>
                                        <th>创建时间</th>
                                        <th>订单状态</th>
                                        <%--<th>操作</th>--%>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${ordersGrid.items}" var="item">
                                        <tr class="gradeX">
                                            <td>${item.orderNum}</td>
                                            <td>${item.orderInformation}</td>
                                            <td>￥${item.orderPrice}</td>
                                            <td>${item.orderDate}</td>
                                            <td><c:if test="${item.orderState == 1}">
                                                <span style="color: blue">代发货</span>
                                            </c:if> <c:if test="${item.orderState == 2}">
                                                <span style="color: red">待收货</span>
                                            </c:if> <c:if test="${item.orderState == 3}">
                                                <span style="color: orange">已完成</span>
                                            </c:if></td>
                                                <%-- <td>
                                                     <div class="tpl-table-black-operation">
                                                         <a href="#" onclick="addModal()">
                                                             <i class="am-icon-pencil"></i> 编辑
                                                         </a>
                                                         <a href="#" class="tpl-table-black-operation-del"
                                                            onclick="deleteModal()">
                                                             <i class="am-icon-trash"></i> 删除
                                                         </a>
                                                     </div>
                                                 </td>--%>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="am-u-lg-12 am-cf">
                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a
                                                href="<%=basePath%>orders_ordersList?page=${page-1}&rows=10">«</a></li>
                                        <c:forEach varStatus="i" begin="1" end="${ordersGrid.totalPage>0?ordersGrid.totalPage:1}">
                                            <li class="${page==i.count?'am-active':""}"><a
                                                    href="<%=basePath%>orders_ordersList?page=${i.count}&rows=10">${i.count}</a>
                                            </li>
                                        </c:forEach>
                                        <li><a href="<%=basePath%>orders_ordersList?page=${page+1}&rows=10">»</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<!--==================================================================================================================-->
<script src="<%=basePath%>/js/assets/js/amazeui.min.js"></script>
<script src="<%=basePath%>/js/assets/js/amazeui.datatables.min.js"></script>
<script src="<%=basePath%>/js/assets/js/dataTables.responsive.min.js"></script>
<script src="<%=basePath%>/js/assets/js/app.js"></script>
<script src="<%=basePath%>/js/assets/js/theme.js"></script>
</html>