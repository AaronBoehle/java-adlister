<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Aaron's Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/profile">Profile</a></li>
            <li>
                <%-- ORIGINAL CODE --%>
                <%--<a href="/login">Login</a>--%>
                    <%--<li><a href="/logout">Logout</a></li>--%>
                    <c:choose>
                        <c:when test="${sessionScope.user}">
                            <a href="/logout">Logout</a>
                        </c:when>
                        <c:otherwise>
                            <a href="/login">Login</a>
                        </c:otherwise>
                    </c:choose>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
