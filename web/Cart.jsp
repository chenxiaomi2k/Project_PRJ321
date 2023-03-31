<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 
    Document   : Cart
    Created on : Mar 17, 2021, 9:00:54 PM
    Author     : HaiTL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- stella-orre/cart-page.html  30 Nov 2019 03:52:15 GMT -->
    <head>
        <meta charset="utf-8">
        <title>Shoping Cart</title>
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
                                <li><a href="about.html">Our Story</a></li>
                                <li><a href="blog.html">Inspiration</a></li>
                                    <c:if test="${sessionScope.account == null}">
                                    <li class="quote"><a href="Login.jsp">LOGIN</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.account != null}">
                                    <li class="quote"><a href="#">Hello ${sessionScope.account.userName}</a></li>
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
                                                        <li><a href="category?cid=${o.cateID}">${o.cName}</a></li>
                                                        </c:forEach>        
                                                </ul>                                                                                                     
                                            </li>                                         
                                            <li class="current dropdown"><a href="#">Shop</a>
                                                <ul>
                                                    <li><a href="Cart.jsp">Cart</a></li>
                                                    <li><a href="checkout">Checkout</a></li>
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

            <!--Page Title-->
            <section class="page-title" style="background-image:url(images/background/5.jpg)">
                <div class="auto-container">
                    <h2>Cart</h2>
                    <ul class="page-breadcrumb">
                        <li><a href="home">home</a></li>
                        <li>Shoping Cart</li>
                    </ul>
                </div>
            </section>
            <!--End Page Title-->

            <!--Cart Section-->
            <section class="cart-section">
                <div class="auto-container">

                    <!--Cart Outer-->
                    <div class="cart-outer">
                        <div class="table-outer">
                            <table class="cart-table">
                                <thead class="cart-header">
                                    <tr>
                                        <th>Preview</th>
                                        <th class="prod-column">product</th>
                                        <th class="price">Price</th>
                                        <th>Quantity</th>
                                        <th>Total</th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:set value="${sessionScope.cart}" var="o"/>
                                    <c:forEach items="${o.list}" var="c">
                                        <tr>
                                            <td class="prod-column">
                                                <div class="column-box">
                                                    <figure class="prod-thumb"><a href="#"><img src="${c.p.image}" alt=""></a></figure>
                                                </div>
                                            </td>
                                            <td><h4 class="prod-title">${c.p.pName}</h4></td>
                                            <td class="sub-total"><fmt:formatNumber type="currency" value="${c.p.price}"/></td>
                                            <td class="qty">
                                                <div class="item-quantity">
                                                    <button style="width: 30px; height: 30px"><a href="updateCart?num=-1&pid=${c.p.pID}">-</a></button>
                                                    <input style="margin-left: 10px;" type="text" value="${c.quantity}" readonly>
                                                    <button style="width: 30px; height: 30px"><a href="updateCart?num=1&pid=${c.p.pID}">+</a></button>
                                                </div>
                                            </td>
                                            <td class="total-price"><fmt:formatNumber type="currency" value="${c.quantity * c.price}"/></td>
                                            <td><a href="delete?pid=${c.p.pID}" class="remove-btn"><span class="fas fa-times"></span></a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>

                        <div class="cart-options clearfix">
                            <div class="pull-left">
                                <div class="apply-coupon clearfix">
                                    <div class="form-group clearfix">
                                        <input type="text" name="coupon-code" value="" placeholder="Coupon Code">
                                    </div>                                   
                                    <div class="form-group clearfix">
                                        <button type="button" class="theme-btn coupon-btn">Apply Coupon</button>
                                    </div>
                                    <form action="deleteAll" method="get">
                                        <div class="form-group clearfix">
                                            <button type="submit" class="theme-btn coupon-btn">Delete All Cart</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>

                        <div class="row clearfix">

                            <div class="column col-lg-7 col-md-5 col-sm-12">
                            </div>

                            <div class="column col-lg-5 col-md-7 col-sm-12">
                                <!--Totals Table-->
                                <ul class="totals-table">
                                    <li><h3>Cart Totals</h3></li>
                                    <li class="clearfix total"><span class="col">Total</span><span class="col price"><fmt:formatNumber type="currency" value="${total}"/></span></li>
                                        <c:if test="${sessionScope.account == null}">
                                        <li class="text-right"><a href="Login.jsp"><button type="submit" class="theme-btn proceed-btn">Proceed to Checkout</button></a></li>
                                        </c:if>
                                        <c:if test="${sessionScope.account != null}">
                                        <li class="text-right"><a href="checkout"><button type="submit" class="theme-btn proceed-btn">Proceed to Checkout</button></a></li>
                                        </c:if>                                   
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </section>
            <!--End Cart Section-->

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
                                                <a href="index-2.html"><img src="images/footer-logo.png" alt="" /></a>
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
                                                    <li><a href="#">About Gaille</a></li>
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
                                                <a href="tel:1800-574-9687" class="contact-number">(1800) 574 9687</a>
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

                </div>

            </div>
        </div>

        <!--Scroll to top-->
        <script src="js/jquery.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.fancybox.js"></script>
        <script src="js/owl.js"></script>
        <script src="js/wow.js"></script>
        <script src="js/appear.js"></script>
        <script src="js/jquery.bootstrap-touchspin.js"></script>
        <script src="js/scrollbar.js"></script>
        <script src="js/script.js"></script>
    </body>

    <!-- stella-orre/cart-page.html  30 Nov 2019 03:52:15 GMT -->
</html>
