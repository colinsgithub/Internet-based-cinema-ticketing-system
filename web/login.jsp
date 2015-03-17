<%-- 
    Document   : index
    Created on : Mar 16, 2015, 5:21:52 PM
    Author     : poonkaho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" ng-app="login">
    <head>
        <title>About</title>
        <meta charset="utf-8">
        <link rel="icon" href="img/favicon.ico" type="image/x-icon">
        <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />
        <meta name="description" content="Your description">
        <meta name="keywords" content="Your keywords">
        <meta name="author" content="Your name">
        <link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
        <link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
        <link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="screen">
        <link rel="stylesheet" href="css/kwicks-slider.css" type="text/css" media="screen">
        <link rel="stylesheet" href="css/logo.css" type="text/css" media="screen">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/superfish.js"></script>
        <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
        <script type="text/javascript" src="js/jquery.kwicks-1.5.1.js"></script>
        <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>	  
        <script type="text/javascript" src="js/touchTouch.jquery.js"></script>
        <script type="text/javascript">if ($(window).width() > 1024) {
                document.write("<" + "script src='js/jquery.preloader.js'></" + "script>");
            }</script>

        <script>
            jQuery(window).load(function() {
                $x = $(window).width();
                if ($x > 1024)
                {
                    jQuery("#content .row").preloader();
                }

                jQuery('.magnifier').touchTouch();
                jQuery('.spinner').animate({'opacity': 0}, 1000, 'easeOutCubic', function() {
                    jQuery(this).css('display', 'none')
                });
            });

        </script>

        <!--[if lt IE 8]>
                <div style='text-align:center'><a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://www.theie6countdown.com/img/upgrade.jpg"border="0"alt=""/></a></div>  
        <![endif]-->
        <!--[if (gt IE 9)|!(IE)]><!-->
        <!--<![endif]-->
        <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
  <![endif]-->
    </head>

    <body>
        <div class="spinner"></div> 
        <!--============================== header =================================-->
        <header>
            <div class="container clearfix">
                <div class="row">
                    <div class="span12">
                        <div class="navbar navbar_">
                            <div class="container">
                                <h1 class="brand brand_"><a href="login.jsp"><img alt="" src=""><span class="logo"><canvas id="canvas"></canvas></span></a></h1>
                                <a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">Menu <span class="icon-bar"></span> </a>
                                <div class="nav-collapse nav-collapse_  collapse">
                                    <ul class="nav sf-menu">
                                        <li class="active"><a href="login.jsp">Login</a></li>
                                        <li><a href="registration.jsp">REG</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="bg-content">
            <div class="container">
                <div class="row">
                    <!--                    <h1>Hello World!</h1>
                            <div ng-controller="loginController">
                                <h1>{{hello}}</h1>
                            </div>-->
                    <div class="span3"></div>
                    <div class="span6"> 
                        <div class="row">
                            <h3>Login</h3>
                            <div class="inner-1">
                                <form id="contact-form">
                                    <div class="success"> Contact form submitted! <strong>We will be in touch soon.</strong> </div>
                                    <fieldset>
                                        <div>
                                            <label class="email">
                                                <input type="email" placeholder="Email">
                                                <br>
                                                <span class="error">*This is not a valid email address.</span> <span class="empty">*This field is required.</span> </label>
                                        </div>
                                        <div>
                                            <label class="name">
                                                <input type="text" placeholder="Your name">
                                                <br>
                                                <span class="error">*This is not a valid name.</span> <span class="empty">*This field is required.</span> </label>
                                        </div>
                                        
                                        <div class="buttons-wrapper"> <a class="btn btn-1" data-type="reset">Clear</a> <a class="btn btn-1" data-type="submit" href="main.jsp">Send</a></div>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <span id="responsiveFlag"></span>
                        <div class="block-slogan">
                            <h2>Welcome!</h2>
                            <div>
                                <p><a href="http://blog.templatemonster.com/free-website-templates/ " target="_blank" class="link-1"></a>Provides Awesome Experience of Watching Film...</p>
                            </div>
                        </div>
                    </div>
                    <div class="span3"></div>
                </div>
            </div>
        </div>

        <!--============================== footer =================================-->
        <footer>
            <div class="container clearfix">
                <ul class="list-social pull-right">
                    <li><a class="icon-1" href="#"></a></li>
                    <li><a class="icon-2" href="#"></a></li>
                    <li><a class="icon-3" href="#"></a></li>
                    <li><a class="icon-4" href="#"></a></li>
                </ul>
            </div>
        </footer>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script src="js/angular.min.js" type="text/javascript"></script>  
        <script src="js/logo.js" type="text/javascript"></script>  
        <script>
            var loginController = angular.module('login', []);

            loginController.controller('loginController', ['$scope', '$http',
                function($scope, $http) {
                    $scope.hello = "POON KA HO";
                }]);
        </script>

    </body>
</html>
