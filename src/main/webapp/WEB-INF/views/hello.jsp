<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Welcome</title>
    <spring:url value="/resources/css/main.css" var="mainCss"/>
    <spring:url value="/resources/js/main.js" var="mainJs"/>

    <c:url value="/index" var="index"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,500,700">
    <link href="${mainCss}" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="${mainJs}"></script>
</head>
<body>
<h1>Title : ${title}</h1>
<h1>Message : ${message}</h1>


<sec:authorize access="hasRole('ROLE_USER')">
    <!-- For login user -->
    <c:url value="/j_spring_security_logout" var="logoutUrl"/>
    <form action="${logoutUrl}" method="post" id="logoutForm">
        <input type="hidden" name="${_csrf.parameterName}"
               value="${_csrf.token}"/>
    </form>
    <script>
        function formSubmit() {
            document.getElementById("logoutForm").submit();
        }
    </script>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            User : ${pageContext.request.userPrincipal.name} |
            <a href="javascript:formSubmit()"> Logout</a>
        </h2>
    </c:if>


</sec:authorize>

<sec:authorize access="hasRole('ROLE_ADMIN')">

    <c:url value="test2" var="admin_test"/>
    <h2>
        <a href="${admin_test}">Page 4 admins only</a>
    </h2>
</sec:authorize>

<sec:authorize access="hasRole('ROLE_USER')">
    <c:url value="test1" var="user_test"/>

    <h2>
        <a href="${user_test}">Page 4 users</a>
    </h2>

</sec:authorize>
<a href="${index}"> <img src="${pageContext.request.contextPath}/resources/img/logo_ore.png" alt="logo"/></a>

<h1>Here should be js text</h1>
<div id="msg"></div>


</body>
</html>