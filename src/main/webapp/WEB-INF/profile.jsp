<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
%>

<html>
<head>
    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="../partials/navbar.jsp" />

    <div class="container">
        <h1>${sessionScope.username}Viewing your profile.</h1>
    </div>
    <div>
        <form action="/logout" method="post">
            <button type="submit">Logout</button>
        </form>
    </div>

</body>
</html>
