Ajax
Ajax: Asynchronous javaScript and xml (异步的javascript和xml技术)。
当我们向服务器发起请求的时候，服务器不会像浏览器响应整个页面，
而是只有局部刷新。它是一个异步请求。

请求:
同步请求:只有当一次请求完全结束以后才能够发起另一次请求。
异步请求:不需要其他请求结束就可以向服务器发起请求。

Ajax的优缺点:
1、ajax是异步请求，浏览器页面只需要进行局部刷新，效率非常的高。

不足的地方:
1、因为ajax是异步请求，所以会导致请求服务器的次数大大增加，增加服务器的负担。
2、应为ajax使用的javaScript来接收服务器相应的数据。
而javaScript对浏览器的兼容性不太好。所以有时候对不同的浏览器进行区别对待。
但是该问题可以通过jquery来解决。

Ajax的入门程序:
1.编写服务端代码:
2.编写客户端代码
Ajax请求服务器需要依赖一个非常核心的对象XMLHttpRequest,
通过该对象向服务端发送异步请求，并且还可以接收服务端相应的数据。
如何创建该对象:
1.new XMLHttpRequest() 针对现在的主流浏览器  和IE7 以上版本的浏览器
2.New ActiveXObject(Msxml2.XMLHTTP);  针对IE6浏览器。
3.New ActiveXobject(Microsoft.XMLHTTP);  针对IE5.5之前的版本
如果上面三种方式都无法创建 ajax对象 ，那么你当前浏览器无法使用ajax技术。

校验用户名是否已经存在, 采用post提交
以前的做法:
需要提交一个表单, 同步请求
现在的做法:
ajax请求   异步请求

使用post提交的时候需要注意的问题:
1. 在send方法中一定要传入请求参数
2.使用post提交要设置请求头
("context-type","application/w-xxx-form-urlencoded");

ajax接收服务端响应的xml片段
注意的问题:
服务器响应xml文件是 要设置响应头: text/xml

补充的问题:
ajax可以直接向xml文件发送请求。
xml文件会整个响应给客户端，
通过XMLHttpRequest的responseXML属性接收服务端相应的xml数据。
直接将该xml文件转换成dom对象，然后可以通过dom对象的方法来解析该xml文件


=======================================(接下来)
通过ajax完成省市二级联动






