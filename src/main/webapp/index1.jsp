<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/7/14
  Time: 3:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
跳转页面
<jsp:forward page="/emps"></jsp:forward>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!--    引入样式-->
    <!-- Bootstrap -->
    <link rel="stylesheet" href="static/css/bootstrap.min.css">
    <script src="static/js/bootstrap.min.js"></script>
    <!--    引入jquery-->
    <script type="text/javascript" src="static/jquery/jquery-1.12.4.min.js"></script>
</head>
<body>
<%--&lt;%&ndash;搭建页面&ndash;%&gt;--%>


<%--<div class="container">--%>
<%--    <div class="row">--%>
<%--        <div class="col-lg-12">--%>
<%--            <h1>SSM_CRUD项目</h1>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-2 col-md-offset-10">--%>
<%--            <button class="btn btn-primary">添加</button>--%>
<%--            <button class="btn btn-danger">删除</button>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--    &lt;%&ndash;    表格数据行&ndash;%&gt;--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-12">--%>
<%--            &lt;%&ndash;    表格&ndash;%&gt;--%>
<%--            <table class="table table-hover">--%>
<%--                <tr>--%>
<%--                    <th>empId</th>--%>
<%--                    <th>empName</th>--%>
<%--                    <th>gender</th>--%>
<%--                    <th>email</th>--%>
<%--                    <th>deptName</th>--%>
<%--                    <th>操作</th>--%>
<%--                </tr>--%>

<%--                <c:forEach items="${pageInfo.list}" var="emp"></c:forEach>--%>

<%--                <th>${emp.empId}</th>--%>
<%--                <th>${emp.empName}</th>--%>
<%--                <th>${emp.geder=="m"?"男":"女"}</th>--%>
<%--                <th>${emp.dept.deptName}</th>--%>
<%--                <th>部门</th>--%>
<%--                <th>--%>
<%--                    <button class="btn btn-primary btn-sm">--%>
<%--                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>--%>
<%--                        编辑--%>
<%--                    </button>--%>
<%--                    <button class="btn btn-danger btn-sm">--%>
<%--                        <span class="glyphicon glyphicon-trash" aria-hidden="true"></span>--%>
<%--                        删除--%>
<%--                    </button>--%>
<%--                </th>--%>
<%--            </table>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    &lt;%&ndash;    分页信息展示&ndash;%&gt;--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-4">--%>
<%--            分页信息--%>
<%--        </div>--%>
<%--    </div>--%>


<%--    &lt;%&ndash;    分页条&ndash;%&gt;--%>
<%--    <div class="row">--%>
<%--        <div class="col-md-5 col-md-offset-7">--%>
<%--            <nav aria-label="Page navigation example">--%>
<%--                <ul class="pagination">--%>
<%--                    <li class="page-item"><a class="page-link" href="#">Previous</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">1</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">2</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">3</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">4</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">5</a></li>--%>
<%--                    <li class="page-item"><a class="page-link" href="#">Next</a></li>--%>
<%--                </ul>--%>
<%--            </nav>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

</body>
</html>
