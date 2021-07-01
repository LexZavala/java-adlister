<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: lex
  Date: 7/1/21
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")){
        Enumeration paramNames = request.getParameterNames();
        while(paramNames.hasMoreElements()){
            String paramName = (String)paramNames.nextElement();
            String paramValue = request.getHeader(paramName);
            System.out.println(paramName + ": " + paramValue);
        }
    }
%>




<html>
<head>
    <title>Pizza Order</title>
    <%@include file="partials/head.jsp"%>
</head>
<body class="container-fluid">
    <h1>Welcome, place your pizza order</h1>
    <form style="margin: 1em 1.2em; width: 30%" action="pizza-order.jsp" method="post">
        <div class="form-group">
            <label for="crust-type">Crust Type:</label>
            <select class="form-control" id="crust-type" name="crust">
                <option>Hand-Tossed</option>
                <option selected>Normal</option>
                <option>Pan</option>
                <option>Thin crust</option>
            </select>
        </div>
        <div class="form-group">
            <label for="sauce-type">Sauce:</label>
            <select class="form-control" id="sauce-type" name="sauce">
                <option selected>Marinara</option>
                <option >Garlic</option>
                <option>No sauce</option>
                <option>Light sauce</option>
            </select>
        </div>
        <div class="form-group">
            <label for="crust-size">Size:</label>
            <select class="form-control" id="crust-size" name="size">
                <option selected>Small</option>
                <option >Medium</option>
                <option>Large</option>
                <option>OH LAWD ITS CHONK</option>
            </select>
        </div>
        <div class="form-group">
            <label for="toppings">Toppings:</label>
            <ul class="list-group list-group-flush" id="toppings">
                <li class="list-group-item">
                    <input id="beef-meat" name="topping-beef" type="checkbox">
                    <label for="beef-meat">Beef</label>
                </li>
                <li class="list-group-item">
                    <input id="ham-meat" name="topping-ham" type="checkbox">
                    <label for="ham-meat">Ham</label>
                </li>
                <li class="list-group-item">
                    <input id="philly-meat" name="topping-philly" type="checkbox">
                    <label for="philly-meat">Philly Steak</label>
                </li>
                <li class="list-group-item">
                    <input id="bacon-meat" name="topping-bacon" type="checkbox">
                    <label for="bacon-meat">Bacon</label>
                </li>
            </ul>
        </div>
        <div class="form-group">
            <label for="address">Enter delivery address:</label>
            <br>
            <input id="address" type="text" placeholder="1000 Happy St. Happyville 89201 TX" style="width: 100%">
        </div>
    </form>
</body>
</html>
