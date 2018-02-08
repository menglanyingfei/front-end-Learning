使用ajax实现二级联动
1. 在加载页面的时候, 后台读取xml中的所有省份信息,
显示到下拉框
 a) 页面加载ajax发送异步请求到servlet
 b) servlet解析china.xml
 c) 通过jquery将每一个省份的名字添加到select下

 需要依赖的jar包
 dom4j
 jaxen

 2. 点击省份下拉框的时候触发内容改变
 1. 获取当前选中的省份信息
 2. 通过ajax请求servlet并且将当前的省份传递过去
 3. servlet根据省份名称来解析xml文件, 获取该省份的xml片段
 4. 将xml片段响应给jsp页面
 5. 解析xml片段, 将对应的城市添加到select下



