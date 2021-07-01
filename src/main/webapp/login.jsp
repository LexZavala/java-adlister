<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 6/30/21
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--<%--%>

<%--String usernamInput = (request.getParameter("username") != null) ? request.getParameter("username") : "";--%>

<%--%>--%>



<html>
<head>
    <title>Login form</title>
</head>
<body>
<form action="/login.jsp" method="POST">
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password">
    <br>
    <br>
    <button type="submit" value="submit">Submit</button>
</form>
<ul>
    <li><p><b>First Name:</b>
        <%= request.getParameter("username")%>
    </p></li>
    <li><p><b>Last  Name:</b>
        <%= request.getParameter("password")%>
    </p></li>
</ul>

</body>
</html>
