<%--
  Created by IntelliJ IDEA.
  User: 李子铭
  Date: 2022/5/5
  Time: 14:42
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
    $.ajax({
      //请求资源路径
      url:"AjaxServlet",
      //请求参数
      data:"username=zhangsan",
      //请求方式
      type:"post",
      //数据形式 text
      dataType:"text",
      //请求成功后执行方法
      //data是一个形参 服务器端返回数据
      success:function (data){
        alert(data);
      },
      //请求失败后执行方法
      error:function (){
        alert("失败");
      }
    });
  }
  // $.ajax 声明使用的jQuery ajax语法结构（部分属性）
  // url：请求的地址
  // data：需要发送的数据{} 里面书写json格式的数据 {名字：值,名字：值}
  // type：请求类型 get/post
  // dataType：声明返回数据（响应主体中）的类型/格式
  // success：执行成功之后调用的方法。（回调函数）
  // error： 执行失败后调用的方法。（回调函数）
</script>
</body>
</html>
