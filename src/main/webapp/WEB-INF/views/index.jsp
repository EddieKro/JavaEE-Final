<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 4/14/2019
  Time: 9:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Omega Real Estate</title>


    <spring:url value="/resources/css/style.css" var="minCss"/>
    <spring:url value="/resources/css/styles-merged.css" var="mergedCss"/>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,500,700">
    <link href="${minCss}" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="${mergedCss}">


</head>
<body>

<!-- links generation
<c:url value="/welcome" var="welcome"/>
<c:url value="/about" var="about"/>
<c:url value="/contact" var="contact"/>
<c:url value="/index" var="index"/>
<c:url value="/basic" var="basic"/>
<c:url value="/advanced" var="advanced"/>
<c:url value="/demo" var="demo"/>
<c:url value="/login" var="login"/>
<c:url value="/registration" var="register"/>
<c:url value="/j_spring_security_logout" var="logout"/>
-->

<!-- link regarding different roles-->


//default role
<c:url var="model" value="/demo"/>
<c:set var="modelText" value="Demo"/>

<c:url var="loginStatus" value="/login"/>
<c:set var="loginText" value="LOG IN"/>


<sec:authorize access="hasRole('ROLE_START')">
    <c:url var="model" value="/basic"/>
    <c:set var="modelText" value="Basic estimate"/>

    <c:url var="loginStatus" value="/j_spring_security_logout"/>
    <c:set var="loginText" value="LOG OUT"/>

</sec:authorize>

<sec:authorize access="hasRole('ROLE_PREMI')">
    <c:url var="model" value="/advanced"/>
    <c:set var="modelText" value="Advanced estimate"/>
</sec:authorize>


<nav class="navbar navbar-default navbar-fixed-top probootstrap-navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">
                <img src="${pageContext.request.contextPath}/resources/img/logo_ore.png" class="image">
            </a>
        </div>

        <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="${index}">Home</a></li>
                <li><a href="${model}">${modelText}</a></li>
                <li><a href="${about}">About us</a></li>
                <li><a href="${contact}" class="active">Contact</a></li>
                <li class="probootstra-cta-button">


                    <sec:authorize access="!hasRole('ROLE_START')">
                        <a href="${loginStatus}" class="btn">${loginText}</a>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ROLE_START')">
                        <form action="${loginStatus}" method="post" id="logoutForm">
                            <input type="hidden" name="${_csrf.parameterName}"
                                   value="${_csrf.token}"/>
                        </form>
                        <script>
                            function formSubmit() {
                                document.getElementById("logoutForm").submit();
                            }
                        </script>

                        <a href="javascript:formSubmit()">${loginText}</a>
                    </sec:authorize>

                </li>
                <sec:authorize access="!hasRole('ROLE_START')">
                    <li class="probootstra-cta-button last"><a href="${register}" class=" btn btn-ghost"
                                                               data-toggle="modal"
                    >SIGN UP</a></li>
                </sec:authorize>

            </ul>
        </div>
    </div>
</nav>

<section class="flexslider">
    <ul class="slides">
        <li style="background-image: url(${pageContext.request.contextPath}/resources/img/ai-in-re.jpg)"
            class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center">
                            <h1 class="probootstrap-heading">We Bring Ideas To Life</h1>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</section>
<section class="probootstrap-section probootstrap-bg-white probootstrap-zindex-above-showcase">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate"
                 data-animate-effect="fadeIn">
                <h2>Our Services</h2>
            </div>
        </div>
        <!-- END row -->
        <div class="row probootstrap-gutter60">
            <div class="col-md-4 probootstrap-animate" data-animate-effect="fadeIn">
                <div class="service hover_service text-center">
                    <div class="icon"><i class="icon-mobile3"></i></div>
                    <div class="text">
                        <h3>Responsive Design</h3>
                        <p>You can get your property estimate in no time with our sensational system.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 probootstrap-animate" data-animate-effect="fadeIn">
                <div class="service hover_service text-center">
                    <div class="icon"><i class="icon-presentation"></i></div>
                    <div class="text">
                        <h3>AI</h3>
                        <p>Omega real estate provides you access to the latest breakthroughs in Artificial
                            Intelligence in house prediction.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 probootstrap-animate" data-animate-effect="fadeIn">
                <div class="service hover_service text-center">
                    <div class="icon"><i class="icon-magnifying-glass2"></i></div>
                    <div class="text">
                        <h3>User friendly interface</h3>
                        <p>Our engineers have worked hard to bring you a seemless experience using our service.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- END row -->
    </div>
</section>

<section class="probootstrap-section proboostrap-clients probootstrap-bg-white probootstrap-zindex-above-showcase">
    <div class="container">

        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate">
                <h2>Big Companies Trusts Us</h2>
                <p class="lead">Omega real estate is trusted by the users of many big companies and we bring on the best
                    experience.</p>
            </div>
        </div>
        <!-- END row -->
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="<c:url value="/resources/img/client_1.png"/>" class=" img-responsive">
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="<c:url value="/resources/img/client_2.png"/>"
                     class=" img-responsive">
            </div>
            <div class="clearfix visible-sm-block visible-xs-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="<c:url value="/resources/img/client_3.png"/>" class="img-responsive">
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="<c:url value="/resources/img/client_4.png"/>" class="img-responsive">
            </div>

        </div>
    </div>
</section>


<section class="probootstrap-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-mobile3"></i></div>
                    <div class="text">
                        <h3>Responsive Design</h3>
                        <p>With the use of new technologies we bring you a design capable of being
                            displayed on PC, phone and even tablet.</p>
                    </div>
                </div>
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-presentation"></i></div>
                    <div class="text">
                        <h3>Business Solutions</h3>
                        <p>We are highly motivated to work with real estate businesses to give them
                            a perfect solution to estimate estate value.</p>
                    </div>
                </div>
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-circle-compass"></i></div>
                    <div class="text">
                        <h3>Brand Identity</h3>
                        <p>We stand out from our competition and bring you the best estimates possible.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-lightbulb"></i></div>
                    <div class="text">
                        <h3>Artificial Intelligence</h3>
                        <p>With the use of state of the art Machine Learning algorithms, we have achieved
                            something we want to share with the whole world and make life easier.</p>
                    </div>
                </div>

                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-magnifying-glass2"></i></div>
                    <div class="text">
                        <h3>User Friendly</h3>
                        <p>With the use of modern technologies we simplified the design to a point
                            even a toddler could use it.</p>
                    </div>
                </div>

                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-browser2"></i></div>
                    <div class="text">
                        <h3>Fast Results</h3>
                        <p>Our engineers have worked hard to optimize the speed at which you get your results
                            ane let me tell you, it's very fast!</p>
                    </div>
                </div>

            </div>
        </div>
        <!-- END row -->
    </div>
</section>

<!-- Modal login -->
<div class="modal fadeInUp probootstrap-animated" id="loginModal" tabindex="-1" role="dialog"
     aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog modal-md vertical-align-center">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-cross"></i>
                </button>
                <div class="probootstrap-modal-flex">
                    <div class="probootstrap-modal-figure"
                         style="background-image: url(${pageContext.request.contextPath}/resources//modal_bg.jpg);"></div>
                    <div class="probootstrap-modal-content">
                        <form action="#" class="probootstrap-form"
                              name="loginForm" method="POST">

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email" name="text">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" name="password">
                            </div>

                            <div class="form-group text-left">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary btn-block"
                                               name="submit" value="submit">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group probootstrap-or">
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END modal login -->

<!-- Modal signup -->
<div class="modal fadeInUp probootstrap-animated" id="signupModal" tabindex="-1" role="dialog"
     aria-labelledby="signupModalLabel" aria-hidden="true">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog modal-md vertical-align-center">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="icon-cross"></i>
                </button>
                <div class="probootstrap-modal-flex">
                    <div class="probootstrap-modal-figure"
                         style="background-image: url(${pageContext.request.contextPath}/resources/img/modal_bg.jpg);"></div>
                    <div class="probootstrap-modal-content">
                        <form action="#" class="probootstrap-form">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Re-type Password">
                            </div>

                            <div class="form-group text-left">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary btn-block" value="Sign Up">
                                    </div>
                                </div>

                            </div>
                            <div class="form-group probootstrap-or">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END modal signup -->
<spring:url value="/resources/js/scripts.js" var="scriptsJS"/>
<spring:url value="/resources/js/custom.min.js" var="customJS"/>

<script src="${scriptsJS}"></script>
<script src="${customJS}"></script>

</body>
</html>
