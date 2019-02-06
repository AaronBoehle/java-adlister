<%--
  Created by IntelliJ IDEA.
  User: AaronBoehle
  Date: 2019-02-05
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Login - Hello World</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>

<h1>Admin Login</h1>
<form action = "/login" method ="post">
    Username: <input type = "text" name="username" ><br>
    Password: <input type = "text" name="password" ><br>
    <br><input type="submit" value="Submit">


</form>
</body>
</html>
