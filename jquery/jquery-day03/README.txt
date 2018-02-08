JQuery对事件的操作:
$("div").mouseover(function() {

});

jquery对事件的绑定
bind("事件类型", 事件处理); 给jquery绑定一个事件
bind("事件类型1 事件类型2 事件类型3...", "事件处理")

绑定多个事件类型并且使用同一个处理程序
$().bind({
   事件类型1: 处理程序,
   事件类型2: 处理程序,
   ...
});
通过json对象绑定事件
$().bind(json对象) {key: value, key:value}

jquery取消绑定所有事件
$().unbind();
取消div的点击事件(取消jquery对象某类绑定事件)
$("div").unbind("click");

jquery中简单的动画效果
基本的显示和隐藏
show(speed, callBack)
hide(speed, callBack)
toggle(speed, callBack)
如果是隐藏就显示, 反之, 就隐藏
toggle本身意思就是切换


jquery对于节点的操作(简单)
添加节点
父子节点关系
$().append() 主动添加在末尾
$().appendTo(); 被动添加在末尾
$().prepend() 主动添加在开头
$().prependTo() 被动添加在开头
兄弟关系添加节点
after() 在后面添加
before() 在前面添加
insertAfter() 被动在后面添加
insertBefore()  被动在前面添加

替换节点
replaceAll() 主动替换
replaceWith()  被动替换

删除节点
empty()  清除某个节点下的所有子节点
remove() 清除某些节点(要被清除的节点来调用这个方法)

复制节点
clone() 该方法只会复制节点的内容, 而不会复制事件
clone(true) 该方法不光复制节点的内容, 还复制事件

(下午) ===============================================================
讲ajax技术!



