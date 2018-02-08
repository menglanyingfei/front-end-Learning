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
    <div></div>

    <button>获取学生信息</button>

</body>
<script type="text/javascript">

    $("button").click(function () {
        var xmlHttp = new XMLHttpRequest();
        //alert(xmlHttp);
        xmlHttp.open("get",
            "${pageContext.request.contextPath}/AjaxDemo2", true);
        xmlHttp.send(null);

        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                // 通过responseXML属性获取服务端响应过来的xml片段
                var xmlDoc = xmlHttp.responseXML;
                //alert(xmlDoc);
                // xmlDoc就是服务端响应的document对象
                var stuEle = xmlDoc.getElementsByTagName("student")[0];
                // 获取该元素的id属性值
                var id = stuEle.getAttribute("id");
                // 获取<name>和<age>中的文本内容
                var nameEle = stuEle.getElementsByTagName("name")[0];
                // 获取文本内容
                var name = nameEle.innerHTML;
                //alert(name);
                var sexEle = stuEle.getElementsByTagName("sex")[0];
                var sex = sexEle.innerHTML;

                $("div").html(id + ":" + name + ":" + sex);
            }
        }
    })
</script>
</html>
























