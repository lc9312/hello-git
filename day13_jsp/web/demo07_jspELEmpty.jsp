<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%--EL中${}只能获取域数据，若新建的对象不添加到内置域对象中，则无法获取到该对象--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<String> list = new ArrayList<String>();
    list.add("哈哈");
    list.add("呵呵");

    List<String> list2 = new ArrayList<>();
    list2.add("咔咔");

    pageContext.setAttribute("list",list);
%>
JAVA表达式：<br>
list第一个元素:<%=list.get(0)%><br>

EL表达式：<<br>
list第一个元素:${list.get(0)}<br>
list空的？${empty list}<br>
list2能获取到吗？不能${list2.get(0)}
</body>
</html>
