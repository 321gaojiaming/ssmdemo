<%--
  Created by IntelliJ IDEA.
  User: 高嘉铭
  Date: 2018/9/12
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- 引入bootstrap样式 -->
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="http://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>
<body  style="background-color:#ccc;">
<div class="center-block" style="width:50%;margin-top: 10%;">
    <div class="panel panel-default" style="padding:10%">

        欢迎注册，请输入用户名和密码
        <form method="post" action="/user/login">
            <p>id：<input type="text" name="id" size="10"></p>
            <p>姓名：<input type="text" name="username" size="10"></p>
            <p>密码：<input type="password" name="password" size="10"></p>
            <p><input type="submit" value="确定">
                <input type="reset" value="取消"></p>
        </form>
    </div>
</div>
</body>
</html>
