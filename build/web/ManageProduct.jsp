<%-- 
    Document   : HomePage
    Created on : Mar 17, 2021, 8:58:38 PM
    Author     : HaiTL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Manage Product</title>
        <!-- Stylesheets -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
        <link rel="icon" href="images/favicon.png" type="image/x-icon">

        <!-- Responsive -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
        <!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <jsp:useBean id="p" class="dao.DAO"></jsp:useBean>
        </head>
        <body>
            <div class="page-wrapper">
                <!-- Preloader -->
                <div class="preloader"></div>

                <header class="main-header header-style-one">
                    <!--Header Top-->
                    <div class="header-top">
                        <div class="auto-container clearfix">
                            <div class="top-left clearfix">
                                <div class="text"><span class="icon flaticon-call-answer"></span> Need help? Call Us Now : <a href="#" class="number">1800 456 7890</a></div>

                            </div>
                            <div class="top-right clearfix">
                                <!-- Info List -->
                                <ul class="info-list">
                                    <li><a href="#">Our Story</a></li>
                                    <li><a href="#">Inspiration</a></li>
                                    <c:if test="${sessionScope.account == null}">
                                    <li class="quote"><a href="Login.jsp">LOGIN</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                    <li class="quote"><a href="#">Hello ${sessionScope.account.username}</a></li>
                                    <li><a href="logout">Log out</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- End Header Top -->
                <!-- Header Upper -->
                <div class="header-upper">
                    <div class="inner-container">
                        <div class="auto-container clearfix">
                            <!--Info-->
                            <div class="logo-outer">
                                <div class="logo"><a href="home"><img src="images/logo.png" alt="" title=""></a></div>
                            </div>

                            <!--Nav Box-->
                            <div class="nav-outer clearfix">
                                <!--Mobile Navigation Toggler For Mobile--><div class="mobile-nav-toggler"><span class="icon flaticon-menu-1"></span></div>
                                <nav class="main-menu navbar-expand-md navbar-light">
                                    <div class="navbar-header">
                                        <!-- Togg le Button -->      
                                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                            <span class="icon flaticon-menu-1"></span>
                                        </button>
                                    </div>

                                    <div class="collapse navbar-collapse clearfix" id="navbarSupportedContent">
                                        <ul class="navigation clearfix">
                                            <li class="dropdown"><a href="home">Home</a></li>
                                            <li class="dropdown"><a href="#">Category</a>                                              
                                                <ul>
                                                    <c:forEach items="${AllCate}" var="o">
                                                        <li><a href="category?cid=${o.cID}">${o.cName}</a></li>
                                                        </c:forEach>        
                                                </ul>                                                                                                     
                                            </li>                                          
                                            <li class="current dropdown"><a href="#">Shop</a>
                                                <ul>
                                                    <li><a href="cart">Cart</a></li>
                                                    <li><a href="Checkout.jsp">Checkout</a></li>
                                                </ul>
                                            </li>  
                                        </ul>
                                    </div>
                                </nav>
                                <!-- Main Menu End-->

                                <!-- Outer Box -->
                                <div class="outer-box clearfix">
                                    <div class="search-box-btn"><span class="icon flaticon-magnifying-glass-1"></span></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Header Upper-->
            </header>
            <!-- End Main Header -->

            <!--Shop Banner Section-->
            <section class="shop-banner-section" style="background-image:url(images/background/8.jpg);">
                <div class="auto-container">

                    <!-- Content Box -->
                    <div class="content-box">
                        <div class="box-inner">
                            <h2>Modern Furniture</h2>
                            <div class="text">Leverage agile frameworks to provide a robust synopsis for high level overviews. Iterative approaches to corporate strategy foster collaborative.</div>
                            <a href="home" class="theme-btn btn-style-one"><span class="txt">purchase now</span></a>
                        </div>
                    </div>

                </div>
            </section>
            <!--End Shop Banner Section-->

            <table class="table">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Name</th>
                        <th scope="col">Image</th>
                        <th scope="col">Price</th>
                        <th scope="col">CateID</th>
                        <th scope="col">Description</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${AllProduct}" var="o">
                        <tr>
                            <th scope="row">${o.pID}</th>
                            <td>${o.name}</td>
                            <td>${o.image}</td>
                            <td>${o.price}</td>
                            <td>${o.cateID}</td>
                            <td>${o.description}</td>
                            <td>
                                <a href="edit" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a href="delete" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                            </td>
                        </tr>
                    </c:forEach>                   
                </tbody>
            </table>

            <!--Main Footer-->
            <footer class="main-footer">
                <div class="auto-container">
                    <!--Widgets Section-->
                    <div class="widgets-section">
                        <div class="row clearfix">

                            <!--big column-->
                            <div class="big-column col-lg-6 col-md-12 col-sm-12">
                                <div class="row clearfix">

                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-7 col-md-6 col-sm-12">
                                        <div class="footer-widget logo-widget">
                                            <div class="logo">
                                                <a href="#"><img src="images/footer-logo.png" alt="" /></a>
                                            </div>
                                            <div class="text">Stella Orr'e is a WordPress theme to build Interior websites. It has good features and you will love.</div>
                                            <ul class="social-icons">
                                                <li><a href="#"><span class="fab fa-facebook-f"></span></a></li>
                                                <li><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
                                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>

                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-5 col-md-6 col-sm-12">
                                        <div class="footer-widget links-widget">
                                            <h2>Quick links</h2>
                                            <div class="widget-content">
                                                <ul class="list">
                                                    <li><a href="#">About</a></li>
                                                    <li><a href="#">Privacy Policy</a></li>
                                                    <li><a href="#">Terms & Conditionis</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!--big column-->
                            <div class="big-column col-lg-6 col-md-12 col-sm-12">
                                <div class="row clearfix">

                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-5 col-md-6 col-sm-12">
                                        <div class="footer-widget contact-widget">
                                            <h2>Contact Info</h2>
                                            <div class="widget-content">
                                                <a href="#" class="contact-number">(1800) 574 9687</a>
                                                <ul>
                                                    <li>256, Stella Orr'e, New York 24</li>
                                                    <li>Email :<a href="#"> info@stellaorre.com</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>

                                    <!--Footer Column-->
                                    <div class="footer-column col-lg-7 col-md-6 col-sm-12">
                                        <div class="footer-widget newsletter-widget">
                                            <h2>Newsletter</h2>
                                            <div class="text">Get Special offers & Discounts</div>
                                            <!-- Newsletter Form -->
                                            <div class="newsletter-form">
                                                <form method="post" action="templateshub.net">
                                                    <div class="form-group">
                                                        <input type="email" name="email" value="" placeholder="Enter your email address" required>
                                                        <button type="submit" class="theme-btn btn-style-one"><span class="txt">Subscribe</span></button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>

        </div>  
        <!--End pagewrapper-->

        <!--Scroll to top-->
        <div class="scroll-to-top scroll-to-target" data-target="html"><span class="fa fa-angle-up"></span></div>

        <!--Search Popup-->
        <div id="search-popup" class="search-popup">
            <div class="close-search theme-btn"><span class="flaticon-cancel"></span></div>
            <div class="popup-inner">
                <div class="overlay-layer"></div>
                <div class="search-form">
                    <form method="post" action="search">
                        <div class="form-group">
                            <fieldset>
                                <input type="search" class="form-control" name="txt" value="" placeholder="Search Here" required >
                                <input type="submit" value="Search Now!" class="theme-btn">
                            </fieldset>
                        </div>
                    </form>
                    <br>
                </div>
            </div>
        </div>

        <!--Scroll to top-->
        <script src="js/jquery.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.fancybox.js"></script>
        <script src="js/isotope.js"></script>
        <script src="js/owl.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/appear.js"></script>
        <script src="js/scrollbar.js"></script>
        <script src="js/script.js"></script>
    </body>
</html>
