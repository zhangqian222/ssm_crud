<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/7/14
  Time: 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>EmpLists</title>
    <%--    获取上下文路径--%>
    <% pageContext.setAttribute("APP_PATH", request.getContextPath());%>
    <!--    引入样式-->
    <!--    Bootstrap -->
    <link rel="stylesheet" href="${APP_PATH}/static/css/bootstrap.min.css">
    <script src="${APP_PATH}/static/js/bootstrap.min.js"></script>
    <!--    引入jquery-->
    <script type="text/javascript" src="${APP_PATH}/static/jquery/jquery-1.12.4.min.js"></script>

</head>


<body>
<%--搭建页面--%>


<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>SSM_CRUD项目</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-2 col-md-offset-10">
            <button class="btn btn-primary">添加</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>

    <%--    表格数据行--%>
    <div class="row">
        <div class="col-md-12">
            <%--    表格--%>
            <table class="table table-hover" id="emp_table">
                <thead>
                <tr>
                    <th>empId</th>
                    <th>empName</th>
                    <th>gender</th>
                    <th>email</th>
                    <th>deptName</th>
                    <th>操作</th>
                </tr>
                </thead>

                <tbody>

                </tbody>
            </table>
        </div>
    </div>
    <%--    分页信息展示--%>
    <div class="row">
        <div class="col-md-4">
            总共${pageInfo.pages}页，当前${pageInfo.pageNum}页，总共${pageInfo.total}条记录
        </div>
    </div>


    <%--    分页条--%>
    <div class="row">
        <div class="col-md-7 col-md-offset-5">
            <nav aria-label="Page navigation example">
                <ul class="pagination">

                    <%--首页--%>
                    <li class="page-item">
                        <a class="page-link" href="${APP_PATH}/emps/?pn=1">首页</a>
                    </li>

                    <%--上一页--%>
                    <c:if test="${pageInfo.hasPreviousPage}">
                        <li class="page-item">
                            <a class="page-link" href="${APP_PATH}/emps/?pn=${pageInfo.pageNum-1}">Previous</a>
                        </li>
                    </c:if>

                    <%--中间页码--%>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="page_Num">


                        <c:if test="${page_Num == pageInfo.pageNum}">
                            <li class="page-item active "><a class="page-link"
                                                             href="${APP_PATH}/emps/pn#">${page_Num}</a></li>
                        </c:if>


                        <c:if test="${page_Num != pageInfo.pageNum}">
                            <li class="page-item"><a class="page-link"
                                                     href="${APP_PATH}/emps/?pn=${page_Num}">${page_Num}</a></li>
                        </c:if>


                    </c:forEach>

                    <%--后一页--%>
                    <c:if test="${pageInfo.hasNextPage}">
                        <li class="page-item">
                            <a class="page-link" href="${APP_PATH}/emps/?pn=${pageInfo.pageNum+1}">Next</a>
                        </li>
                    </c:if>

                    <%--尾页--%>
                    <li class="page-item">
                        <a class="page-link" href="${APP_PATH}/emps/?pn=${pageInfo.pages}">尾页</a>
                    </li>


                </ul>
            </nav>
        </div>
    </div>
</div>
<script type="text/javascript">
    //发送ajax请求
    $(function () {
        $.ajax({
            url: "${APP_PATH}/emps",
            data: "pn=1",
            type: "get",
            success: function (msg) {
                console.log(msg)
                // 解析员工数据
                build_emp_table(msg)
            }
        })
    });

    //1.构建员工列表
    function build_emp_table(msg) {
        var list = msg.extend.pageInfo.list;
        $.each(list, function (index, item) {
            var empId = $("<td></td>").append(item.empId);
            var empName = $("<td></td>").append(item.empName);
            var gender = $("<td></td>").append(item.gender = 'm' ? "男" : "女");
            var email = $("<td></td>").append(item.email);
            var deptName = $("<td></td>").append(item.dept.deptName);
            $("<tr></tr>").append(empId).
                append(empName).
                append(gender).
                append(email).
                append(deptName).
                appendTo("#emp_table tbody")
        })
    }

    function build_emp_nav(msg) {

    }
</script>

</body>
</html>
