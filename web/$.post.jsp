<%--
  Created by IntelliJ IDEA.
  User: 李子铭
  Date: 2022/5/5
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <input type="button" value="异步提交" onclick="fun()">
    <script src="WEB-INF/jq/jquery.min.js"></script>
    <script>
        function fun(){
            $.getJSON(
                //请求资源路径
                "Ajax03Servlet",
                //成功后 回调函数
                function (data){
                    alert(data.username);
                }
            )
        }
    </script>
</body>
</html>
