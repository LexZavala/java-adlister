<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 6/30/21
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login form</title>
</head>
<body>
<form action="/login.jsp" method="post">
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password">
    <br>
    <button type="submit" value="submit">Submit</button>
</form>

</body>
</html>
