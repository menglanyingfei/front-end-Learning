<%--
  User: menglanyingfei
  Date: 2018/1/28
  Time: 15:22
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>ajax01</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
</head>
<body>
    用户名: <input type="text" name="username">
    <br>
    <span></span>


</body>
<script type="text/javascript">
    // 获取焦点
    $("input").focus(function () {
       $("span").text("");
       $(this).val("");
    });

    // 失去焦点
    $("input").blur(function () {
        // 获取文本框的值
        var username = $(this).val();
        // 创建ajax对象
        var xmlHttp = new XMLHttpRequest();
        // 调用open方法
        xmlHttp.open("POST",
            "${pageContext.request.contextPath}/AjaxDemo1", true);
        // 如果是post方式, 需要设置请求头
        xmlHttp.setRequestHeader("Content-Type",
            "application/x-www-form-urlencoded");
        //调用send方法将请求参数作为send方法的参数值传递过去
        // 参数格式: 字符串
        xmlHttp.send("username=" + username);

        // 注册一个监听器
        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                var text = xmlHttp.responseText;
                $("span").text(text).css("color", "red");
            }
        };
    })
</script>
</html>
























