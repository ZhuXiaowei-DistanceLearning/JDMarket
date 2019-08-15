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
                            <div class="am-u-sm-12 am-u-md-6 am-u-lg-6">
                                <div class="am-form-group">
                                    <div class="am-btn-toolbar">
                                        <div class="am-btn-group am-btn-group-xs">
                                            <button type="button" class="am-btn am-btn-default am-btn-success"
                                                    onclick="addModal()"><span class="am-icon-plus"></span> 新增分类
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--<div class="am-u-sm-12 am-u-md-6 am-u-lg-3">
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
                                        <th>ID</th>
                                        <th>名称</th>
                                        <th>数量</th>
                                        <th>状态</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${catelogList}" var="item">
                                        <tr class="gradeX">
                                            <td>${item.id}</td>
                                            <td>${item.name}</td>
                                            <td>${item.number}
                                            </td>
                                            <td>
                                                <c:if test="${item.status == 1}">
                                                    <span style="color:blue">正在使用</span>
                                                </c:if>
                                                <c:if test="${item.status == 0}">
                                                    <span style="color:red">作废</span>
                                                </c:if>
                                            </td>
                                            <td>
                                                <div class="tpl-table-black-operation">
                                                    <a href="#" onclick="edit(${item.id})">
                                                        <i class="am-icon-pencil"></i> 编辑
                                                    </a>
                                                    <c:if test="${item.status == 0}">
                                                        <a href="#" class="tpl-table-black-operation-del"
                                                           onclick="deleteModal(${item.id})">
                                                            <i class="am-icon-trash"></i> 重新使用
                                                        </a>
                                                    </c:if>
                                                    <c:if test="${item.status == 1}">
                                                        <a href="#" class="tpl-table-black-operation-del"
                                                           onclick="deleteModal(${item.id})">
                                                            <i class="am-icon-trash"></i> 删除
                                                        </a>
                                                    </c:if>

                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="am-u-lg-12 am-cf">
                                <div class="am-fr">
                                    <ul class="am-pagination tpl-pagination">
                                        <li class="am-disabled"><a
                                                href="<%=basePath%>admin_userList?page=1&rows=10">«</a></li>
                                        <li class="am-active"><a
                                                href="<%=basePath%>admin_userList?page=1&rows=10">1</a>
                                        </li>
                                        <li><a href="<%=basePath%>admin_userList?page=1&rows=10">»</a></li>
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
<!-- 添加模块窗口 -->
<div class="am-modal am-modal-no-btn" id="doc-modal-1">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">新增分类
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd">
            <div class="tpl-block">
                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <form class="am-form tpl-form-line-form" action="<%=basePath%>/catelog_addCatelog"
                              method="post">
                            <div class="am-form-group">
                                <label for="user-name" class="am-u-sm-3 am-form-label"> 分类名称 <span
                                        class="tpl-form-line-small-title">Catelog</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="user-name" placeholder="article"
                                           name="name">
                                    <small>必填</small>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <input type="submit"
                                           class="am-btn am-btn-primary tpl-btn-bg-color-success "></input>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--修改模块窗口--%>
<div class="am-modal am-modal-no-btn" id="editModel">
    <div class="am-modal-dialog">
        <div class="am-modal-hd">修改文章
            <a href="javascript: void(0)" class="am-close am-close-spin" data-am-modal-close>&times;</a>
        </div>
        <div class="am-modal-bd">
            <div class="tpl-block">
                <div class="am-g">
                    <div class="tpl-form-body tpl-form-line">
                        <form class="am-form tpl-form-line-form" action="<%=basePath%>/catelog_editCatelog"
                              method="post">
                            <div class="am-form-group">
                                <label for="user-name" class="am-u-sm-3 am-form-label"> 目录内容 <span
                                        class="tpl-form-line-small-title">Catelog</span></label>
                                <div class="am-u-sm-9">
                                    <input type="text" class="tpl-form-input" id="editname" placeholder="article"
                                           name="name">
                                    <small>必填</small>
                                </div>
                            </div>
                            <input type="hidden" name="id" id="editId"/>
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <input type="submit"
                                           class="am-btn am-btn-primary tpl-btn-bg-color-success "></input>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 删除Modal -->
<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
    <div class="am-modal-dialog">
        <div class="am-modal-hd"></div>
        <div class="am-modal-bd">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
    </div>
</div>
<script type="text/javascript">
    function addModal() {
        $("#doc-modal-1").modal();
    }

    function deleteModal(data) {
        $("#my-confirm").modal({
            onConfirm: function () {
                $.ajax({
                    url: "<%=basePath%>/catelog_deleteCatelog?id=" + data,
                    type: "get",
                    error: function (data) {
                        if (data.responseText == "success") {
                            window.location.reload();
                        }
                    }
                })
            },
        });
    }

    function edit(data) {
        $.ajax({
            url: "<%=basePath%>/catelog_editPage?id=" + data,
            type: "get",
            success: function (data) {
                $("#editname").val(data.name);
                $("#editId").val(data.id);
                $("#editModel").modal();
            },
            error: function (data) {
                $("#editname").val(data);
            }
        })
    }
</script>
</body>
<!--==================================================================================================================-->
<script src="<%=basePath%>/js/assets/js/amazeui.min.js"></script>
<script src="<%=basePath%>/js/assets/js/amazeui.datatables.min.js"></script>
<script src="<%=basePath%>/js/assets/js/dataTables.responsive.min.js"></script>
<script src="<%=basePath%>/js/assets/js/app.js"></script>
<script src="<%=basePath%>/js/assets/js/theme.js"></script>
</html>