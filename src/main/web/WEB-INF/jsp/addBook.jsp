<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>新增书籍</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <div class="page-header">
                    <h2>书籍列表--新增书籍</h2>

                </div>
            </div>
        </div>

        <form action="${pageContext.request.contextPath}/book/add" method="post">
            <div class="form-group">
                <label for="bookName">书籍名称</label>
                <input type="text" class="form-control" name="bookName" id="bookName" required>
            </div>
            <div class="form-group">
                <label for="bookCount">书籍数量</label>
                <input type="number" class="form-control" name="bookCount" id="bookCount" required>
            </div>
            <div class="form-group">
                <label for="detail">书籍详情</label>
                <input type="text" class="form-control" name="detail" id="detail" required>
            </div>
            <div class="form-group">
                <label for="bookDate">出版时间</label>
                <input type="date" class="form-control" name="bookDate" id="bookDate" required>
            </div>
            <button type="submit" class="btn btn-default">提交</button>
        </form>

        <div class="row">
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/index.jsp">
                返回主页
            </a>
        </div>
    </div>

    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery.validate.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/messages_zh.min.js" charset="UTF-8"></script>
    <script>
        $(function () {
            $('form').validate();
        })
    </script>
</body>
</html>
