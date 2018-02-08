<%--
  User: menglanyingfei
  Date: 2018/1/29
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>JSON02</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/createXMLHttp.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
</head>
<body>

</body>
<script type="text/javascript">
    $(function () {
        // 定义一个json对象
        var person = {username: "小李", password: "123"};
//        alert(person);
        // 将json对象转换成json串
//        person = JSON.stringify(person);
//        alert(person);

        // 使用jquery提供的ajax方法
        $.ajax({
            /*
                type: 请求的类型
                dataType: 从服务端接收的数据类型 html, xml, text, json
                url: 请求路径
                data: 请求参数
                success: 回调函数 msg: 从服务端接收过来的内容
             */
            type: "post",
            dataType: "json",
            url: "${pageContext.request.contextPath}/JsonServlet",
            data: person,

            success: function (msg) {
                alert(msg);
                alert(msg.username + "--" + msg.password);
            }
        });


    });
</script>
</html>
