<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <style>
        a {
            text-decoration: none;
            color: darkcyan;
            font-size: 24px;
        }

        div {
            width: 300px;
            height: 150px;
            text-align: center;
            line-height: 150px;
            margin: 100px auto;
            background-color: cornsilk;
            border-radius: 10px;
        }
    </style>
</head>
<body>

    <div>
        <a href="${pageContext.request.contextPath}/book/all">查看所有书籍</a>
    </div>

    <div class="row">
        <div class="col-md-4">
            <a href="${pageContext.request.contextPath}/book/addPage">新增书籍</a>
        </div>
    </div>


</body>
</html>
