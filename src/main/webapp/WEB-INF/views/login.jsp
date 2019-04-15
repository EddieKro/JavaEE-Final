<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true" %>
<html>
<head>
    <title>Login Page</title>
    <spring:url value="/resources/css/main.css" var="mainCss"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,500,700">
    <link href="${mainCss}" rel="stylesheet" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</head>
<body onload='document.loginForm.username.focus();'>

<c:url value="/index" var="index"/>
<c:url value="/registration" var="register"/>


<c:if test="${not empty error}">--%>
    <div class="error">${error}</div>
</c:if>
<c:if test="${not empty msg}">--%>
    <div class="msg">${msg}</div>
</c:if>


<div id="login">
    <h3 class="text-center text-white pt-5">Login form</h3>
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12">
                    <form id="login-form" name="loginForm" class="form"
                          action="<c:url value='/j_spring_security_check' />"
                          method='POST'>
                        <h3 class="text-center text-info">Login</h3>
                        <div class="form-group">
                            <label for="username" class="text-info">Username:</label><br>
                            <input type="text" name="username" id="username" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-info">Password:</label><br>
                            <input type="password" name="password" id="password" class="form-control">
                        </div>
                        <div class="form-group">
                            <input type="submit" name="submit" class="btn btn-info btn-md" value="Submit">
                        </div>
                        <div class="row">
                            <div id="main-link" class="col-sm-9">
                                <a href="${index}" class="text-info">Back</a>
                            </div>
                            <div id="register-link" class="col-sm-3">
                                <a href="${register}" class="text-info">Register here</a>
                            </div>
                        </div>

                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}"/>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>


</body>
</html>
