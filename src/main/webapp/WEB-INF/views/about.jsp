<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 4/14/2019
  Time: 5:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <spring:url value="/resources/css/style.min.css" var="minCss"/>
    <spring:url value="/resources/css/styles-merged.css" var="mergedCss"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>About Omega Real Estate</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,500,700">
    <link rel="stylesheet" href="${minCss}">
    <link rel="stylesheet" href="${mergedCss}">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>
<body>

<!-- links generation
<c:url value="/welcome" var="welcome"/>
<c:url value="/about" var="about"/>
<c:url value="/contact" var="contact"/>
<c:url value="/index**" var="index"/>
<c:url value="/basic" var="basic"/>
<c:url value="/advanced" var="advanced"/>
<c:url value="/demo" var="demo"/>
-->

<!-- link regarding different roles

    //default role
    <c:url var="model" value="/demo"/>
    <c:set var="modelText" value="Demo"/>

    <sec:authorize access="hasRole('ROLE_USER')">
        <c:url var="model" value="/basic"/>
        <c:set var="modelText" value="Basic estimate"/>
    </sec:authorize>

    <sec:authorize access="hasRole('ROLE_ADMIN')">
        <c:url var="model" value="/advanced"/>
        <c:set var="modelText" value="Advanced estimate"/>
    </sec:authorize>

-->

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
            <a class="navbar-brand" href="${index}" title="uiCookies:Stack">Stack</a>
        </div>

        <div id="navbar-collapse" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">


                <li><a href=${index}>Home</a></li>
                <li><a href=${model}>${modelText}</a></li>
                <li class=" active"><a href=${about}>About us</a></li>
                <li><a href=${contact}>Contact</a></li>
                <li class="probootstra-cta-button"><a href="#" class="btn" data-toggle="modal"
                                                      data-target="#loginModal">Log in</a></li>
                <li class="probootstra-cta-button last"><a href="#" class="btn btn-ghost" data-toggle="modal"
                                                           data-target="#signupModal">Sign up</a></li>
            </ul>
        </div>
    </div>
</nav>

<section class="flexslider">
    <ul class="slides">

        <li style="background-image: url(${pageContext.request.contextPath}/resources/img/slider_2.jpg)"
            class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center">
                            <h1 class="probootstrap-heading">About Us</h1>
                            <p class="probootstrap-subheading">Brief information about our project
                                elit.</p>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</section>
<section class="probootstrap-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate">
                <h2>Team</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_1.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Jeremy Slater <span class="position">Co-Founder / Tech</span></h3>
                    </div>
                </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_2.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>James Butterly <span class="position">Co-Founder / Creative</span></h3>
                    </div>
                </a>
            </div>

            <div class="clearfix visible-sm-block visible-xs-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_3.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Matthew Smith <span class="position">Developer</span></h3>
                    </div>
                </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_4.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Ivan Dubovtsev <span class="position">Designer</span></h3>

                    </div>
                </a>
            </div>

            <div class="clearfix visible-sm-block visible-xs-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_2.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>James Butterly <span class="position">Co-Founder / Creative</span></h3>
                    </div>
                </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_1.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Jeremy Slater <span class="position">Co-Founder / Tech</span></h3>
                    </div>
                </a>
            </div>

            <div class="clearfix visible-sm-block visible-xs-block"></div>

            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_4.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Ivan Dubovtsev <span class="position">Designer</span></h3>

                    </div>
                </a>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 probootstrap-animate">
                <a href="#" class="probootstrap-team">
                    <img src="${pageContext.request.contextPath}/resources/img/person_3.jpg"
                         alt="Free Bootstrap Template by uicookies.com"
                         class="img-responsive img-rounded">
                    <div class="probootstrap-team-info">
                        <h3>Matthew Smith <span class="position">Developer</span></h3>
                    </div>
                </a>
            </div>


        </div>
    </div>
</section>


<section class="probootstrap-section proboostrap-clients probootstrap-bg-white probootstrap-zindex-above-showcase">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate">
                <h2>Big Companies Trust Us</h2>
                <p class="lead">Our solutions are being widely used in the industry</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="${pageContext.request.contextPath}/resources/img/client_1.png" class="img-responsive"
                     alt="Free Bootstrap Template by uicookies.com">
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="${pageContext.request.contextPath}/resources/img/client_2.png" class="img-responsive"
                     alt="Free Bootstrap Template by uicookies.com">
            </div>
            <div class="clearfix visible-sm-block visible-xs-block"></div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="${pageContext.request.contextPath}/resources/img/client_3.png" class="img-responsive"
                     alt="Free Bootstrap Template by uicookies.com">
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 text-center client-logo probootstrap-animate"
                 data-animate-effect="fadeIn">
                <img src="${pageContext.request.contextPath}/resources/img/client_4.png" class="img-responsive"
                     alt="Free Bootstrap Template by uicookies.com">
            </div>

        </div>
    </div>
</section>

<section class="probootstrap-section probootstrap-bg-white probootstrap-border-top">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate">
                <h2>Our Products</h2>
                <p class="lead">Innovative solutions in the industry of property price estimation</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 probootstrap-animate" data-animate-effect="fadeIn">

                <div class="owl-carousel owl-carousel-fullwidth border-rounded">
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/resources/img/img_showcase_1.jpg"
                             alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/resources/img/img_showcase_2.jpg"
                             alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/resources/img/img_showcase_1.jpg"
                             alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                    </div>
                    <div class="item">
                        <img src="${pageContext.request.contextPath}/resources/img/img_showcase_2.jpg"
                             alt="Free HTML5 Bootstrap Template by GetTemplates.co">
                    </div>
                </div>

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
                        <p>Performance. We managed to connect Bootstrap with Spring MVC and no one died in the
                            process</p>
                    </div>
                </div>
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-presentation"></i></div>
                    <div class="text">
                        <h3>Business Solutions</h3>
                        <p>Precision. Our estimator will help your business increase gross income tremendously.</p>
                    </div>
                </div>
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-circle-compass"></i></div>
                    <div class="text">
                        <h3>Brand Identity</h3>
                        <p>Mission. Our goal is to be on the crest of the wave of the AI revolution.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-lightbulb"></i></div>
                    <div class="text">
                        <h3>Creative Ideas</h3>
                        <p>Bright minds of our data scientists will use anything to tune their models, including old
                            catfood paychecks and garbage collection schedule </p>
                    </div>
                </div>

                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-magnifying-glass2"></i></div>
                    <div class="text">
                        <h3>Search Engine Friendly</h3>
                        <p>Our model is easily integrated via friendly API</p>
                    </div>
                </div>

                <div class="service left-icon probootstrap-animate" data-animate-effect="fadeInLeft">
                    <div class="icon"><i class="icon-browser2"></i></div>
                    <div class="text">
                        <h3>Easy Customization</h3>
                        <p>Our specialists will help you adjusting a model for your neighbourhood</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="probootstrap-section probootstrap-border-top probootstrap-bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 text-center section-heading probootstrap-animate">
                <h2>Testimonial</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="owl-carousel owl-carousel-fullwidth">
                    <div class="item">

                        <div class="probootstrap-testimony-wrap text-center">
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/person_1.jpg"
                                     alt="Free Bootstrap Template by uicookies.com">
                            </figure>
                            <blockquote class="quote">&ldquo;Design must be functional and functionality must be
                                translated into visual aesthetics, without any reliance on gimmicks that have to be
                                explained.&rdquo; <cite class="author">&mdash; Ferdinand A. Porsche <br> <span>Design Lead at AirBNB</span></cite>
                            </blockquote>
                        </div>

                    </div>
                    <div class="item">
                        <div class="probootstrap-testimony-wrap text-center">
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/person_2.jpg"
                                     alt="Free Bootstrap Template by uicookies.com">
                            </figure>
                            <blockquote class="quote">&ldquo;Creativity is just connecting things. When you ask creative
                                people how they did something, they feel a little guilty because they didn’t really do
                                it, they just saw something. It seemed obvious to them after a while.&rdquo; <cite
                                        class="author">&mdash; Steve Jobs <br> <span>Co-Founder Square</span></cite>
                            </blockquote>
                        </div>
                    </div>
                    <div class="item">
                        <div class="probootstrap-testimony-wrap text-center">
                            <figure>
                                <img src="${pageContext.request.contextPath}/resources/img/person_3.jpg"
                                     alt="Free Bootstrap Template by uicookies.com">
                            </figure>
                            <blockquote class="quote">&ldquo;I think design would be better if designers were much more
                                skeptical about its applications. If you believe in the potency of your craft, where you
                                choose to dole it out is not something to take lightly.&rdquo; <cite class="author">&mdash;
                                    Frank Chimero <br> <span>Creative Director at Twitter</span></cite></blockquote>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fadeInUp probootstrap-animated" id="loginModal" tabindex="-1" role="dialog"
     aria-labelledby="loginModalLabel" aria-hidden="true">
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
                            <div class="form-group clearfix mb40">
                                <label for="remember" class="probootstrap-remember"><input type="checkbox"> Remember
                                    Me</label>
                                <a href="#" class="probootstrap-forgot">Forgot Password?</a>
                            </div>
                            <div class="form-group text-left">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary btn-block" value="Sign In">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group probootstrap-or">
                                <span><em>or</em></span>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-facebook"><span>connect with</span>
                                            Facebook
                                        </button>
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-google"><span>connect with</span>
                                            Google
                                        </button>
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-twitter"><span>connect with</span>
                                            Twitter
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

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
                            <div class="form-group clearfix mb40">
                                <label for="remember" class="probootstrap-remember"><input type="checkbox"
                                                                                           id="remember"> Remember
                                    Me</label>
                                <a href="#" class="probootstrap-forgot">Forgot Password?</a>
                            </div>
                            <div class="form-group text-left">
                                <div class="row">
                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary btn-block" value="Sign Up">
                                    </div>
                                </div>

                            </div>
                            <div class="form-group probootstrap-or">
                                <span><em>or</em></span>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-md-12">
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-facebook"><span>connect with</span>
                                            Facebook
                                        </button>
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-google"><span>connect with</span>
                                            Google
                                        </button>
                                        <button class="btn btn-primary btn-ghost btn-block btn-connect-twitter"><span>connect with</span>
                                            Twitter
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<spring:url value="/resources/js/scripts.js" var="scriptsJS"/>
<spring:url value="/resources/js/custom.min.js" var="customJS"/>

<script src="${scriptsJS}"></script>
<script src="${customJS}"></script>


</body>
</html>
