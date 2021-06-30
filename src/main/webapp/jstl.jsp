<%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 6/30/21
  Time: 11:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%
    request.setAttribute("lactoseIntolerant", true);

    List<String> dairyProducts = new ArrayList<>();
    dairyProducts.add("milk");
    dairyProducts.add("cheese");
    dairyProducts.add("yogurt");
    dairyProducts.add("ice cream");
    dairyProducts.add("cottage cheese");
    dairyProducts.add("butter");

    request.setAttribute("dairyProducts", dairyProducts);

    boolean textIsBlue = true;

    request.setAttribute("blue", textIsBlue);
%>


<html>
<head>
    <title>JSPs: JSTL</title>
</head>
<body>
    <h1>Hello!</h1>
    <c:choose>
        <c:when test="${lactoseIntolerant}">
            <h1>You are lactose intolerant! Please don't buy any dairy products</h1>
        </c:when>
        <c:when test="${blue}">
            <p>Yay! Blue text!</p>
        </c:when>
        <c:otherwise>
            <h3>Dairy Products List</h3>
            <c:forEach items="${dairyProducts}" var="dairyProduct">
                <div>
                    <p>${dairyProduct}</p>
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>
</body>
</html>
