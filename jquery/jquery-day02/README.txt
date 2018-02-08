JQuery对于属性的操作:
回顾js中对于属性的操作:
dom对象: 通过document.getElementById() ... 获取的对象都是dom对象
JQuery对象: 通过JQuery选择器获取的对象都是jquery对象
Dom对象和jquery对象不能相互调用对方的属性和方法
比如css() 只有jquery对象能调用

JS操作属性:
1. dom对象.属性名 获取该属性的属性值, 也可以给该属性设置值
2. dom对象.getAttribute("属性名") 获取属性值
3. dom对象.setAttribute("属性名", "属性值") 设置属性值
4. dom对象.removeAttribute("属性名") 删除属性

jquery对象操作属性:
jquery对象.属性名  错误的操作
1. jquery对象.attr("属性名") 获取属性值
2. jquery对象.attr("", "") 设置属性值
3. jquery对象.removeAttr() 删除属性值

对于class属性的快捷操作:
addClass("class属性值")  添加class属性
removeClass()  删除class属性
toggleClass()  如果有就删除, 没有就添加

对于文本内容的操作:
在js中通过innerHTML对文本内容进行操作
在jquery中只能通过html() text()方法操作文本内容
获取
html() text()
设置
html("文本内容") text("文本内容")

jquery对于value属性的操作
$().attr("value", "属性值") 设置属性值
$().attr("value") 获取value属性值
专门的操作:
$().val() 获取value属性值
$().val("属性值") 设置value属性值

val()方法在单选框, 多选框, 下拉框的使用
(在表单中的使用)
给多选框赋值: jquery对象就是一个数组, 就相当于给数组中的元素赋值
给下拉框赋值:
注意在选择元素的时候, 应该
选择select标签, 而不是子级标签option

(下午)=======================================================
$: 到底是怎么来的?
$也是一个函数, 在下面这些代码中的内容, $和jQuery
可以相互调用

dom对象和jquery对象相互转换
jquery对象到底怎么来的?
$() 这是一个方法
上面的步骤就是将dom对象封装到一个数组中, 并且将该数组进行返回,
得到了一个jquery对象
如果要将jquery对象转成dom对象:
只需要通过数组下标来获取dom对象
$("#input_id")[0].style = "background-color:red";

如何将dom对象转换成jquery对象
$(dom对象)

JQuery中的一个遍历的问题:
1. 遍历数组:
// k: 数组中的索引, v: 与该索引对应的数组中的元素
$.each(arr, function (k, v) {
    alert(k+" -- " + v);
})

2. 遍历自定义对象
// each方法遍历自定义对象
var obj = {name: "Java", age: 15, begin:"xxx",
    fun: function () {
        alert("function");
    }};

$.each(obj, function (k, v) {
    alert(k+ "--" + v);


})
3. 遍历jquery对象
//each方法遍历jquery对象
// 获取jquery对象, 名字一般以$开头
var $obj = $("[name=lang]:checked");
alert($obj.length);

$.each($obj, function (k, v) {
    // k: jquery对象中的索引, v: jquery对象中的被封装的dom对象
//           alert(k + "-- " + v);
//           alert(v.value);
    // 将dom对象转成jquery对象
    alert($(v).val());
});

4. this关键字的使用
在each循环中, this关键字代表的是每一个遍历出来的dom对象

JQuery中的加载事件
什么是加载事件:
加载事件是当页面加载以后, 而自动触发的事件.
在JS的加载事件中, onload 可以通过window.onload = function(){}
也可以将onload事件绑定在body标签中, 都可以自动触发

在jquery中的加载事件:
$(function () {
   alert("jquery中的加载事件");
});

区别: jquery加载事件和js加载事件
1. 在一个页面中, 只能有一个JS的加载事件, 因为JS的加载事件
相当于给window.onload赋值, 如果有多个加载事件的话,
后面的会覆盖掉前面的
但是, jquery中加载事件可出现多个

2. JS中的加载事件需要将页面上面的所有元素内容加载出来,
才会执行加载事件
jquery中只需要在内存中形成dom树, 就能够执行加载事件
所有jquery的加载事件的效率比原生的JS高

JQuery中对简单事件的处理:
在JS中:
dom对象.事件名 = 函数

在jquery中:
jquery对象.事件名(
    // 函数
);

可以给一个元素设置多个同类型的事件
Jquery中已经定义好的事件, 还可以通过按钮来触发

接下来的内容:
Jquery对节点的操作
javaScript中的ajax
jquery中的ajax
springmvc和json的交互

详细的讲解反射










































































































































































