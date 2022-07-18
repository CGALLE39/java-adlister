
<%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/13/22
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%! @WebServlet(name = "login", urlPatterns = "/login");%>--%>
<%--        public class login extends HttpServlet { %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    if(request.getParameter("username") != null || request.getParameter("password") != null) {
        if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")) {
            response.sendRedirect("/profile.jsp");
        } else {
            response.sendRedirect("/login.jsp");
        }
    }
%>
<html>
<head>
    <title>Login</title>
    <%@ include file="partials/head.jsp"%>
</head>
<body>
<%@ include file="partials/navbar.jsp"%>
<form action="login.jsp" method="POST">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username">
    <label for="password">Password: </label>
    <input type="password" name="password" id="password">
    <button type="submit">Submit</button>
</form>

<%--<section class ="basic-grid">--%>
<%--    <div class="card">1</div>--%>
<%--    <div class="card">2</div>--%>
<%--    <div class="card">3</div>--%>
<%--    <div class="card">4</div>--%>
<%--    <div class="card">5</div>--%>
<%--    <div class="card">6</div>--%>
<%--    <div class="card">7</div>--%>
<%--    <div class="card">8</div>--%>
<%--    <div class="card">9</div>--%>
<%--    <div class="card">10</div>--%>
<%--    <div class="card">11</div>--%>
<%--    <div class="card">12</div>--%>
<%--</section>--%>
<%--<c:if test='${param.username != null && param.password != null}'>--%>
<%--    <c:choose>--%>
<%--        <c:when test="${param.username.equals(\"admin\") && param.password.equals(\"password\")}">--%>
<%--            <% response.sendRedirect("/profile.jsp"); %>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <% response.sendRedirect("/login.jsp"); %>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>
<%--</c:if>--%>
</body>
</html>