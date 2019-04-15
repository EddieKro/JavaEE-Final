<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: alexa
  Date: 4/14/2019
  Time: 5:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <spring:url value="/resources/css/styles-merged.css" var="mergedCss"/>
    <spring:url value="/resources/css/style.min.css" var="minCss"/>

    <title>Title</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>About Omega Real Estate</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:400,500,700">
    <link rel="stylesheet" href="${mergedCss}">
    <link rel="stylesheet" href="${minCss}">

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
                <li><a href="${index}">Home</a></li>
                <li><a href=${model}>${modelText}</a></li>
                <li><a href="${about}">About us</a></li>
                <li class="active"><a href="${contact}">Contact</a></li>
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

        <li style="background-image: url(${pageContext.request.contextPath}/resources/img/slider_3.jpg)"
            class="overlay">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="probootstrap-slider-text text-center">
                            <h1 class="probootstrap-heading">Get In Touch</h1>
                            <p class="probootstrap-subheading">Let's have a chat</p>
                        </div>
                    </div>
                </div>
            </div>
        </li>
    </ul>
</section>

<section class="probootstrap-section probootstrap-bg-white">
    <div class="container">
        <div class="row">
            <div class="col-md-5 probootstrap-animate" data-animate-effect="fadeIn">
                <h2>Drop us a line</h2>
                <form action="#" method="post" class="probootstrap-form">
                    <div class="form-group">
                        <label for="name">Full Name</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="subject">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea cols="30" rows="10" class="form-control" id="message" name="message"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary btn-lg" id="submit" name="submit"
                               value="Submit Form">
                    </div>
                </form>
            </div>
            <div class="col-md-6 col-md-push-1 probootstrap-animate" data-animate-effect="fadeIn">
                <h2>Get in touch</h2>
                <p>Please feel free to submit this form if you have any questions or proposals.</p>

                <h4>USA</h4>
                <ul class="probootstrap-contact-info">
                    <li><i class="icon-pin"></i> <span>1250 Borregas Avenue #42 Sunnyvale, CA 94089, USA</span></li>
                    <li><i class="icon-email"></i><span>feedback@omegarealestate.com</span></li>
                    <li><i class="icon-phone"></i><span>+1 (542) 123 45 67</span></li>
                </ul>

                <h4>Europe</h4>
                <ul class="probootstrap-contact-info">
                    <li><i class="icon-pin"></i>
                        <span>2 Skovorody Street, Building 1 Suite 112, Kyyiv, Ukraine 02000</span></li>
                    <li><i class="icon-email"></i><span>feedback@omegarealestate.com</span></li>
                    <li><i class="icon-phone"></i><span>+38 (050) 123 45 67</span></li>
                </ul>
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
<script defer src="${customJS}"></script>

</body>
</html>
