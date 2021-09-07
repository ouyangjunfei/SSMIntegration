<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>书籍页面</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <%--BootStrap美化--%>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                    <h2>书籍列表--显示所有书籍</h2>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-2">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/addPage">新增书籍</a>
            </div>
            <div class="col-md-2">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/book/all">所有书籍</a>
            </div>
            <div class="col-md-6">
                <form class="form-inline" action="${pageContext.request.contextPath}/book/query" method="get">
                    <div class="form-group">
                        <label for="bookName">要查询的书籍名称</label>
                        <input type="text" class="form-control" name="bookName" id="bookName" placeholder="请输入"
                               required>
                    </div>
                    <button type="submit" class="btn btn-default">提交</button>
                </form>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover table-striped">
                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>书籍名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>出版时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <%--书籍从数据库中查出来，要用foreach遍历--%>
                    <tbody>
                    <c:forEach var="book" items="${list}">
                        <tr>
                            <td>${book.bookID}</td>
                            <td>${book.bookName}</td>
                            <td>${book.bookCount}</td>
                            <td>${book.detail}</td>
                            <td><fmt:formatDate value="${book.bookDate}" pattern="yyyy-MM-dd"/></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/book/updatePage/${book.bookID}"
                                   class="btn btn-primary">修改</a>
                                <a href="${pageContext.request.contextPath}/book/delete/${book.bookID}"
                                   class="btn btn-danger">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="row">
            <a class="btn btn-primary col-md-1" href="${pageContext.request.contextPath}/index.jsp">
                返回主页
            </a>
            <form action="" id="ajax-form">
                <label class="col-md-offset-1 col-md-4">
                    <input type="text" name="bookName" placeholder="bookName" class="form-control" autocomplete="off"
                           required>
                </label>
                <label class="col-md-offset-1 col-md-4">
                    <input type="number" name="bookCount" placeholder="bookCount" class="form-control"
                           autocomplete="off" required>
                </label>
                <button type="submit" class="btn btn-info">发起</button>
            </form>
        </div>
        <div class="row">
            <label>
                <input type="text" placeholder="结果" class="form-control" id="ajax-result">
            </label>
        </div>

    </div>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/messages_zh.min.js" charset="UTF-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.serialize-object.min.js"></script>
    <script>
        $(function () {
            let ajaxForm = $('#ajax-form');
            ajaxForm.validate();
            ajaxForm.on('submit', function (e) {
                e.preventDefault();
                if (ajaxForm.validate().form()) {
                    $.post({
                        url: "${pageContext.request.contextPath}/book/ajax",
                        data: ajaxForm.serializeJSON(),
                        contentType: 'application/json',
                        success: function (data, textStatus, jqXHR) {
                            console.log(typeof data);
                            console.log(textStatus);
                            $('#ajax-result').val(data);
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log(textStatus);
                            alert('发生了错误');
                        }
                    });
                }
            })
        })

    </script>
</body>
</html>
