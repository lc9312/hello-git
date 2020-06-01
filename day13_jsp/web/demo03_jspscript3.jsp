<%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>嵌套java声明</title>
</head>
<body>
100和250的值为：<%=add(100,250)%>

<%!
    private Integer age = 20;
    public int add(int a, int b){
        return a + b;
    }
%>
</body>
</html>
