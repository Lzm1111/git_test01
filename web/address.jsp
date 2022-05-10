<%--
  Created by IntelliJ IDEA.
  User: 李子铭
  Date: 2022/5/5
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>二级联动</title>
    <script src="WEB-INF/jq/jquery.min.js"></script>
    <script>
        // 页面加载完成
        $(function (){
            // 1.查询出全部的国家，将查询到的结果写到countrysel中    <option value="0"> 国家 </option>
            $.get("CountryServlet",function (data){
                // data并不是js对象。是字符集 eval("(" + data + ")");
                var obj = eval("(" + data + ")");

                for (var i = 0; i < obj.length; i++){
                    // 普通写法 <option value="1">中国</option>
                    str = str +"<option value='" + obj[i].id +"'> + obj[i].name +"</option>";
                }
                $("#countrysel").html( $("#countrysel").html() + str);
            })
        })
    </script>
</head>
<body>
    <select name="countrysel" id="countrysel">
        <option value="0">请选择</option>
    </select>
<select name="citysel" id="citysel">
    <option value="0">请选择</option>
</select>
</body>
</html>
