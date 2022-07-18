<%--
  Created by IntelliJ IDEA.
  User: cynthiagallegos
  Date: 7/15/22
  Time: 11:07 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <title>Title</title>

</head>
<body>
<h1>Hi friend. Here's your favorite color </h1>
<style>
    background-color:  <% request.getParameter("color") ;%>
</style>


</body>
</html>
