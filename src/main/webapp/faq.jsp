<%@ page import="org.w3c.dom.ls.LSOutput" %><%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/13/22
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% System.out.println("HelloWorld");%>
<%!  String color;  %>
<%--<% if(request.getParameter("color").equals("blue")) {--%>
<%--    System.out.println("wow same");--%>
<%--}--%>
<%--%>--%>

<%

    if (request.getParameter("color") != null) {
        color = request.getParameter("color");
    }

%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/main.css">

</head>
<body>
<%@include file="partials/navbar.jsp"%>
<h1> Frequently asked questions</h1>
<form action = "/faq.jsp" method="POST">
    <label for="color"> what is your favorite color?</label>
    <input type="text" id="color" name="color" value="blue" />
    <button type="submit">Submit</button>
</form>
<p>Your favorite color is: <%= color %></p>
</body>
</html>
