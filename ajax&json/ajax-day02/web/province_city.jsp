<%--
  User: menglanyingfei
  Date: 2018/1/29
  Time: 10:07
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>省市联动</title>
    <script type="text/javascript" src="js/createXMLHttp.js"></script>
    <script type="text/javascript" src="js/jquery-1.4.4.js"></script>

</head>
<body>
    <select id="province">
        <option>--请选择--</option>
    </select>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <select id="city">
        <option>--请选择--</option>
    </select>
</body>

<script type="text/javascript">
    // 页面加载发送请求到servlet
    $(function () {
        var xmlHttp = createXmlHttp();
//        alert(xmlHttp);

        xmlHttp.open("get",
            "${pageContext.request.contextPath}/ProvinceCityServlet", true);
        xmlHttp.send(null);
//        alert(xmlHttp);

        xmlHttp.onreadystatechange = function () {

            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
//                alert("1");
                // 切割字符串
                var proList = xmlHttp.responseText.split("|");
//                alert(proList.length); // 34
                for (var i = 0; i < proList.length; i++) {
                    // 创建一个option jquery对象
                    var $option = $("<option>"
                        + proList[i] + "</option>");
                    // 给option设置value属性值
                    $option.val(proList[i]);
                    // 将option元素添加到select下
                    $("#province").append($option);
                }
            }
        };
    });

    // 给id为province的select 添加内容改变事件
    $("#province").change(function () {
        // 每次触发该事件的时候, 先将以前的option元素删掉, 只留下第一个
        $("#city option:gt(0)").each(function () {
            $(this).remove();
        });

       // 获取该select的value值, 也就是被选中的省份名称
       var proName = this.value;
        var xmlHttp = createXmlHttp();
        xmlHttp.open("post",
            "${pageContext.request.contextPath}/ProvinceCityServlet", true);
        // 设置请求头
        xmlHttp.setRequestHeader("content-type",
        "application/x-www-form-urlencoded");

        xmlHttp.send("proName=" + proName);
        xmlHttp.onreadystatechange = function () {

            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
//                alert("test");
                var xmlDoc = xmlHttp.responseXML;
                // 获取所有的city子元素, 是一个集合
                var cityList = xmlDoc.getElementsByTagName("city");
                // 遍历, 得到每一个具体的city元素
//                alert(cityList.length);

                for (var i = 0; i < cityList.length; i++) {
                    // 将city子元素转换成jquery对象
                    var $city = $(cityList[i]);
                    // 获取city元素中的文本内容
                    var cityName = $city.html();
                    // 根据城市名称创建option元素
                    var $option = $("<option>" + cityName + "</option>");
                    // 设置value属性值
                    $option.val(cityName);
                    // 添加到select元素中
                    $("#city").append($option);
                }

            }
        };

    });
</script>
</html>













































