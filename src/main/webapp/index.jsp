<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= "some title" %></title>
    <link rel="stylesheet" href="css/main.css">


</head>
<body>
<%--    <c:if test="true">--%>
<%--        <h1>Variable names should be very descriptive</h1>--%>
<%--    </c:if>--%>
<%--    <c:if test="false">--%>
<%--        <h1>single letter variable names are good</h1>--%>
<%--    </c:if>--%>
<h1>Login</h1>
<form method="POST" action="login.jsp">

    <label for="username">Username</label>
    <input id="username" name="username" type="text">

    <label for="password">Password</label>
    <input id="password" name="password" type="password">

    <button type="submit">Submit</button>
</form>
<%--<c:when choose>--%>
<%--    <c:when username="${param.username == 'admin'} ">--%>
<%--        <%response.sendRedirect("profile.jsp");%>--%>
<%--    </c:when>--%>
<%--    <c: otherwise>--%>
<%--        <%response.sendRedirect("login.jsp");%>--%>
<%--    </c:>--%>
<%--    <c:when password="${param.password == 'password'} " >--%>
<%--        <%response.sendRedirect("profile.jsp");%>--%>
<%--    </c:when>--%>
<%--    <c: otherwise>--%>
<%--        <%response.sendRedirect("login.jsp");%>--%>
<%--    </c:>--%>
<%--</c: choose>--%>
</body>
</html>
