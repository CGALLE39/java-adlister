<%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/15/22
  Time: 11:50 AM
  To change this template use File | Settings | File Templates.
--%>

<%

    int randomNum = (int) (Math.random()* 3 + 1);

    if(request.getParameter("guess") != null) {
        if(request.getParameter("guess").equals(randomNum) ) {
            response.sendRedirect("/correct.jsp");
        } else {
            response.sendRedirect("/incorrect.jsp");
        }
    }
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="guess.jsp" method="POST">
    <label for="guess">GUESS A NUMBER BETWEEN 1  AND 3 RIGHT NOWWWWWWW</label>
    <input type="text" id="guess" name="guess">
    <button type="submit">Submit >:3</button>
</form>


</body>
</html>
