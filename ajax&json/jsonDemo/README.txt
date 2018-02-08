JSON:
json是JavaScript提供的一种数据交换格式

Json对象和json串:
json对象: 我们就是指js中的对象
{属性名: 属性值, 属性名: 属性值...}
举例:
var person = {name: "小李", age: 18,
getName: function() {return this.name}};
在js中如何访问对象中的值: 对象名.属性名

json串: 指的是字符串, 花括号中的key都必须用""(双引号)包起来
var person = '{"name": "小李", "age": 18, "sex": "男"}';
而在servlet如果使用ajax作为请求的话,
请求参数不要是json串, 可以是json对象, 也可以是key=value,
推荐是key=value

JSON-lib,
导入jar包
在ajax提交servlet的时候, 默认不能传递json串, 所以如果使用
servlet, 那么请求参数不要是json串, 可以是json对象, 也可以是
key=value字符串

通过封装的jquery的ajax请求servlet

在json-lib中学习两个核心的类(帮助我们将JavaBean对象转成json串)
需要导入jar包
都可以将JavaBean对象转换成json串

JSONObject:
JSONArray:

SpringMVC和ajax的交互, 采用json数据格式
客户端发起ajax请求: 请求参数的形式有哪些?
1. json对象格式
2. json串格式
3. key=value格式(推荐使用这一种)

Controller向客户端响应的数据格式:
1. json对象
2. 文本


