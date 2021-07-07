<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 7/6/21
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%--%>
<%--    request.getRequestDispatcher("/login.jsp").forward(request, response);--%>
<%--%>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads Index</title>
</head>
<body>
    <h1>Here are your Ads </h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.title}</h2>
        <p>Price: $ ${ad.description}</p>
    </div>
</c:forEach>


</body>
</html>
