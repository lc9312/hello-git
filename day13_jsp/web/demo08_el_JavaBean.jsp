<%@ page import="com.itheima.beans.Address" %>
<%@ page import="com.itheima.beans.User" %>
<%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL中获取JavaBean对象的值</title>
</head>
<body>

<%
    Address address = new Address("广东","深圳");
    User user1 = new User("李白",666,address);
    request.setAttribute("user",user1);
%>
JAVA代码获取：<br>
user1的地址的省份:<%=((User)request.getAttribute("user")).getAddress().getProvince()%><br>
EL代码获取：<br>
user1的地址的省份:${user.address.province}

</body>
</html>
