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
        <form action="" class="form-horizontal"  role="form" >
            <div class="form-group"  style="text-align:center;">
                <h3 align="center" style="color:#ccc ">登录</h3>
            </div>
            <div class="form-group">
                <label for="firstname" class="col-sm-2 control-label"></label>
                <div  class="col-sm-10">
                    <input type="text" class="form-control" id="firstname" placeholder="UserName">
                </div>
            </div>
            <div class="form-group">
                <label for="firstname" class="col-sm-2 control-label" style="width:100px"></label>
                <div  class="col-sm-10">
                    <input type="password" class="form-control" required="" id="Password" placeholder="Password">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">请记住我
                        </label>
                        <button type="submit" class="btn btn-primary" style="float:right"> Sign </button>

                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <span class="glyphicon glyphicon-knight"></span>
                    <button type="submit" class="btn btn-primary">sign using your facebook</button>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <span class="glyphicon glyphicon-baby-formula"></span>
                    <button type="submit" class="btn btn-danger">sign using your gogle+ </button>
                </div>
            </div>

        </form>
    </div>
</div>
</body>
</html>
