<%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL中算术运算</title>
</head>
<body>
<%
    request.setAttribute("num",100);
    request.setAttribute("name","马超");
%>
<%--${"我"+name+"贼6"}  #不能用+号进行字符串拼接--%>
${name == "马超"}<br>
${num + 1}<br>
${num/100}<br>
${num/0}<br>
${num div 5}<br>
${num mod 17}<br>
</body>
</html>
