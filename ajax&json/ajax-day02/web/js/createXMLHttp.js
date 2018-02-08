// ajax的四个步骤
// 创建XMLHttpRequest对象
function createXmlHttp() {
    var xmlHttp;
    try {
        xmlHttp = new XMLHttpRequest();
    } catch (e) {
        try {
            xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
            try {
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e) {
                alert("浏览器太老，不能使用ajax");
            }
        }
    }

    return xmlHttp;
}



