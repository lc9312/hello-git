<%--
  Created by IntelliJ IDEA.
  User: lc
  Date: 2020/5/29
  Time: 18:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext获取其他域对象</title>
</head>
<body>
<%
    pageContext.setAttribute("name","tom_page");
    request.setAttribute("name","tom_req");
    session.setAttribute("name","tom_session");
    application.setAttribute("name","tom_app");
%>
JAVA表达式：<br>
pageContext属性值:<%=pageContext.getAttribute("name",PageContext.PAGE_SCOPE)%><br>
request属性值:<%=pageContext.getAttribute("name",PageContext.REQUEST_SCOPE)%><br>
session属性值:<%=pageContext.getAttribute("name",PageContext.SESSION_SCOPE)%><br>
ServletContext属性值:<%=pageContext.getAttribute("name",PageContext.APPLICATION_SCOPE)%><br>


EL表达式：<br>
默认获取到pageContext属性值:${pageContext.findAttribute("name")}<br>
</body>
</html>
