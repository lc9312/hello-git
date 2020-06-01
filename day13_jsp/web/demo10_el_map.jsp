<%@ page import="com.itheima.beans.Address" %>
<%@ page import="com.itheima.beans.User" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL中Map及其他复杂数据取值</title>
</head>
<body>
<%
    Address address = new Address("广东","深圳");
    User user1 = new User("李白",666,address);

    Address address2 = new Address("广东","湛江");
    User user2 = new User("杜甫",666,address2);

    Map<String,User> map = new HashMap<>();
    map.put("a",user1);
    map.put("b",user2);

    Map<String,Map<String,User>> mapMap = new HashMap<>();
    mapMap.put("ggg",map);
    request.setAttribute("hhh",map);
    request.setAttribute("hhh",mapMap);
%>
    ${hhh.ggg.b.address.city}
</body>
</html>
