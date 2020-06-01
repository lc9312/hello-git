<%@ page import="com.itheima.beans.Address" %>
<%@ page import="com.itheima.beans.User" %><%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数组中取值</title>
</head>
<body>
<%
    Address address = new Address("广东","深圳");
    User user1 = new User("李白",666,address);

    Address address2 = new Address("广东","湛江");
    User user2 = new User("杜甫",666,address2);
    User[] users = new User[]{user1,user2};
    request.setAttribute("user",users);
%>
${user[1].address.province}

</body>
</html>
