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
    <script type="text/javascript" src="../js/createXMLHttp.js"></script>
</head>
<body>
    <div></div>
    <button>异步请求</button>


</body>
<script type="text/javascript">
    $("button").click(function () {
       // 1. 创建XMLHttpRequest对象
       var xmlHttp = createXmlHttp();
       // 2. 调用open方法获取跟服务器的连接
        /*
        	method: 请求方式  get post
        	url：请求路径
        	async：表示同步请求还是异步请求  true:异步
        	*/
        xmlHttp.open("GET",
            "${pageContext.request.contextPath}/AjaxDemo1?name=中文", true);

        // 3. 调用send方法, 向服务器发起请求
        // 如果是post请求, 那么需要在send方法中带请求参数
        // 如果是get请求, 那么参数为null
        xmlHttp.send(null);
        // 4. 注册一个监听器
        /*
            不断地去监听请求的过程返回的一个状态码

            在这个时候我们只需要关注readyState == 4的情况，这个时候说明服务器完成了响应
            我们还需要关注另外一个状态码  status是服务器响应过来的, 需要status == 200
         */
        xmlHttp.onreadystatechange = function () {
//            alert(xmlHttp.readyState);
            if (xmlHttp.readyState==4&&xmlHttp.status == 200) {
                //此时说明响应完毕  我们可以通过xml.responseText 来获取服务器的响应内容(文本内容)
                $("div").html(xmlHttp.responseText);
            }
        };
    });
</script>
</html>

















