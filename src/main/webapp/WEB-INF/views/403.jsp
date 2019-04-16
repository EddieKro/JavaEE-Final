<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<%--
<c:choose>
    <c:when test="${empty username}">
        <h2>You shall not pass!</h2>
    </c:when>
</c:choose>
--%>

<img src="<c:url value="/resources/img/error_403.jpg"/> " alt="HTTP Status 403 - Access denied"/>

</body>
</html>
