<%--
  Created by IntelliJ IDEA.
  User: 李子铭
  Date: 2022/5/5
  Time: 15:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<body>
    <input type="button" value="异步请求" onclick="fun()">
</body>
<script src="WEB-INF/jq/jquery.min.js"></script>
<script>
    function fun(){
        // $.get(url,data,success,dataType)
        $get("AjaxServlet","username = lisi",function (data){
            alert(data);
        },"text");
    }
    /*
    * 发送的是get请求。
直接使用jQuery ajax中的get发送异步请求。虽然变得写法简单，但是没有error回调函数，出错调试比较考验功底。很重要的一条，顺序不能错。

第一个参数是url地址
第二个参数是发送的数据
第三个参数是成功回调的函数
第四个参数是返回值的类型
    * */
</script>
</body>
</html>
