<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: AaronBoehle
  Date: 2019-02-06
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads Index</title>
    <jsp:include page="/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/partials/navbar.jsp" />
    <h1> Check out these ads:</h1>
    <c:forEach var="ad" items="${ads}">
        <div class = "ad">
            <h2>${ad.title}</h2>
            <p>Description: ${ad.description}</p>
        </div>
    </c:forEach>
</body>
</html>
