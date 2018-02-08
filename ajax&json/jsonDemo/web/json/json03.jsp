<%--
  User: menglanyingfei
  Date: 2018/1/29
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>JSON03</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/createXMLHttp.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
</head>
<body>

</body>
<script type="text/javascript">
    <%--$.ajax({--%>
        <%--type: "get",--%>
        <%--dataType: "json",--%>
        <%--url: "${pageContext.request.contextPath}/JsonServlet2",--%>

        <%--success: function (msg) {--%>
            <%--alert(msg.name + "--" + msg.age + "--" + msg.sex);--%>
        <%--}--%>

    <%--});--%>

    $.ajax({
        type: "get",
        dataType: "json",
        url: "${pageContext.request.contextPath}/JsonServlet3",

        success: function (msg) {
//            alert(msg);
            for (var i = 0; i < msg.length; i++) {
                alert(msg[i].name + "--" + msg[i].sex + "--" + msg[i].age);
            }
        }

    });
</script>
</html>
