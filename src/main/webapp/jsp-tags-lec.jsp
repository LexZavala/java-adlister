<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 6/30/21
  Time: 9:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--Include tag allows you to link other files--%>
<%--<%@include file=""%>--%>


<%
        int localCount = 1;
        localCount += 1;
        instanceCount +=1;
%>

<html>
<head>
    <title>JSP Tags</title>
</head>
<body>
    <h1>Hello there!</h1>
    <h2>The local count is: <%= localCount%></h2>
    <h2>The instance count is: <%= instanceCount %></h2>
</body>
</html>
