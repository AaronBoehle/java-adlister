<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index - Hello World</title>
    <jsp:include page="/WEB-INF/partials/head.jsp"/>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/nav.jsp"/>
    <c:if test="true">
        <%--<h1>Variable names should be very descriptive</h1>--%>
    </c:if>
    <c:if test="false">
        <%--<h1>single letter variable names are good</h1>--%>
    </c:if>
    <jsp:include page="/WEB-INF/login.jsp"/>

</body>
</html>
