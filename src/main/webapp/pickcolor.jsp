<%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/15/22
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<% String color; %>
<%

    if (request.getParameter("color") != null) {
        color = request.getParameter("color");
        request.setAttribute("color",  color);
        request.getRequestDispatcher("/viewcolor.jsp").forward(request, response);
    } else {
        response.sendRedirect("/pickcolor.jsp");
    }


%>

<style>
    body {
    }
</style>



<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="pickcolor.jsp" method=POST">
<label for="color">Gimmie your favorite color</label>
<input type="text" id="color" name="color">
<button type="submit">Submit >:3</button>
</form>
</body>
</html>
