<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 6/30/21
  Time: 10:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%--The below code imports java code--%>
<%@page import="java.util.Random" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Random r = new Random();
    int randNum = r.nextInt((7-1) + 1) + 1;
    if (randNum == 1) {
        response.sendRedirect("/hello-world");
    } else if (randNum == 7){
        response.sendError(500);
    }
    String textColor = (request.getParameter("color") != null) ? request.getParameter("color") : "";
%>

<html>
<head>
    <title>Implicit Objects</title>
</head>
<body>
    <h1><%=randNum%></h1>
    <h3 style="color: <%=textColor%>">The color you chose is <%=textColor%>!</h3>
</body>
</html>
