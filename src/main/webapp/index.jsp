<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2021/6/8
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String path = request.getContextPath();
        response.sendRedirect(path+"/Pages/Trail.jsp");
    %>
</body>
</html>
