什么是jquery?
jQuery就是对原生的js代码的封装, 所以在使用jquery的时候
需要导入jquery的包

使用jquery的好处:
使用更少的代码做更多的事情

第一个Jquery程序

JQuery的选择器:
使用JQuery选择器的主要目的就是为了能够快速找到页面上的各个元素
原生的js中怎么做?
document.getElementById()
document.getElementsByName()
document.getElementsByTagName()

在JQuery中就要方便得多:
使用JQuery选择器, 跟css选择器非常的类似
$和jQuery一样!

1. 基本选择器
    1) 元素选择器: $("标签名")
    2) id选择器   $("#id属性值")
    3) 类选择器   $(".class属性值")
    4) 通配符选择器    $("*") 选择页面中所有的元素
    5) 选择器组
    //使用选择器组获取前三个input标签, 会将每一个选择器所定位的元素找到
            // $("selector1, selector2, ...")
            $("#user, #mail, #call").css("background-color", "red");

2. 层级选择器
$(s1 s2):
$(s1>s2):
$(s1+s2):
$(s1~s2):

// $(s1 s2): 选择s1下所有的s2元素, 忽略层级关系
        $("div span").css("color", "red"); // 狗娃 铁蛋
        // $(s1>s2): 选择s1下所有的s2元素, 不忽略层级关系
        $("div>span").css("color", "red"); // 狗娃
        // $(s1+s2):选择s1后第一个s2兄弟节点, 如果第一个不是span, 则不选中
//        $("div + span").css("color", "red"); // 翠花
        // $("s1 ~ s2") 选择s1后面所有的s2兄弟节点
//        $("div ~ span").css("color", "green"); // Java 翠花 PHP

3. 并且选择器

4. 内容包含选择器
:contain("文本内容")
:has(selector)
:empty 没有子节点的元素
<div><span></span></div>
<div>hello</div>
$("div:empty")
<div></div>
<div>   </div>

:parent 作为父节点元素

5. 属性选择器

6. 关于复选框的操作
获取被选中的复选框 :checked
获取被选中的单选框 :checked
获取下拉框的值  :selected





































































































