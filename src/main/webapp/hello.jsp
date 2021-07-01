<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 7/1/21
  Time: 11:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
</head>
<body>
    <h1>Hello, ${name}!</h1>

    <form action="hello" method="post">
        <label for="name">Enter name:</label>
        <input type="text" name="name" id="name">
        <input type="submit">
    </form>


</body>
</html>
