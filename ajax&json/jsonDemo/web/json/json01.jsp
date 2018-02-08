<%--
  User: menglanyingfei
  Date: 2018/1/29
  Time: 15:05
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>JSON</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/createXMLHttp.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.4.js"></script>
</head>
<body>

</body>
<script type="text/javascript">
    $(function () {
        // 定义json对象
        var person = {name: "小李", age: 18, sex: "男",
            getName: function () {return this.name}};

//        alert(person.name + "---" + person.getName());
        // 定义json串
//        var personStr = "{\"name\": \"小李\", \"age\": 18}";
        var personStr = '{"name": "小李", "age": 18, "sex": "男"}';
//        alert(personStr);

        // 如何将一个json串转换成一个json对象, 使用eval("(" + json串 + ")");
        personStr = window.eval("(" + personStr + ")");

        alert(personStr); // [object Object]
        alert(personStr.name);

    });
</script>
</html>
