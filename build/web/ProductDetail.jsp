<%-- 
    Document   : ProductDetail
    Created on : Mar 18, 2021, 11:33:04 AM
    Author     : HaiTL
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- stella-orre/product-detail.html  30 Nov 2019 03:52:14 GMT -->
    <head>
        <meta charset="utf-8">
        <title>Product Detail</title>
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
                                <li><a href="#">Our Story</a></li>
                                <li><a href="#">Inspiration</a></li>
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
                                                        <li><a href="cate?cid=${o.cateID}">${o.cateName}</a></li>
                                                        </c:forEach>        
                                                </ul>                                                                                                     
                                            </li>
                                            <li class="current dropdown"><a href="#">Shop</a>
                                                <ul>
                                                    <li><a href="cart">Cart</a></li>
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
                    <h2>Product Details</h2>
                    <ul class="page-breadcrumb">
                        <li><a href="home">home</a></li>
                        <li>Product Details</li>
                    </ul>
                </div>
            </section>
            <!--End Page Title-->

            <!--Shop Single Section-->
            <section class="shop-single-section">
                <div class="auto-container">

                    <div class="shop-single">
                        <div class="product-details">

                            <!--Basic Details-->
                            <div class="basic-details">
                                <div class="row clearfix">
                                    <div class="image-column col-lg-6 col-md-12 col-sm-12">
                                        <figure class="image-box"><a href="${p.image}" class="lightbox-image" title="Image Caption Here"><img src="${p.image}" alt=""></a></figure>
                                    </div>
                                    <div class="info-column col-lg-6 col-md-12 col-sm-12">
                                        <div class="inner-column">
                                            <h4>${p.pName}</h4>
                                            <div class="text">
                                                <p>Category: ${c.cateName}</p>
                                            </div>
                                                <div class="price">Price : <span><fmt:formatNumber type="currency" value="${p.price}"/> </span></div>

                                            <div class="other-options clearfix">
                                                <div class="item-quantity"><label class="field-label">Quantity :</label><input class="quantity-spinner" type="text" value="1" name="quantity"></div>
                                                <a href="cart?pid=${p.pID}"><button type="button" class="theme-btn cart-btn">Add to cart</button></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Basic Details-->

                            <!--Product Info Tabs-->
                            <div class="product-info-tabs">
                                <!--Product Tabs-->
                                <div class="prod-tabs tabs-box">

                                    <!--Tab Btns-->
                                    <ul class="tab-btns tab-buttons clearfix">
                                        <li data-tab="#prod-details" class="tab-btn active-btn">Description</li>
                                        <li data-tab="#prod-spec" class="tab-btn">Specification</li>
                                        <li data-tab="#prod-reviews" class="tab-btn">Review (2)</li>
                                    </ul>

                                    <!--Tabs Container-->
                                    <div class="tabs-content">

                                        <!--Tab / Active Tab-->
                                        <div class="tab active-tab" id="prod-details">
                                            <div class="content">
                                                <p>${p.description}</p>
                                            </div>
                                        </div>

                                        <!--Tab-->
                                        <div class="tab" id="prod-spec">
                                            <div class="content">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
                                            </div>
                                        </div>

                                        <!--Tab-->
                                        <div class="tab" id="prod-reviews">
                                            <h2 class="title">2 Reviews For win Your Friends</h2>
                                            <!--Reviews Container-->
                                            <div class="comments-area">
                                                <!--Comment Box-->
                                                <div class="comment-box">
                                                    <div class="comment">
                                                        <div class="author-thumb"><img src="images/resource/author-1.jpg" alt=""></div>
                                                        <div class="comment-inner">
                                                            <div class="comment-info clearfix">Steven Rich – Sep 17, 2016:</div>
                                                            <div class="rating">
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star light"></span>
                                                            </div>
                                                            <div class="text">How all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings.</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--Comment Box-->
                                                <div class="comment-box reply-comment">
                                                    <div class="comment">
                                                        <div class="author-thumb"><img src="images/resource/author-2.jpg" alt=""></div>
                                                        <div class="comment-inner">
                                                            <div class="comment-info clearfix">William Cobus – Aug 21, 2016:</div>
                                                            <div class="rating">
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star"></span>
                                                                <span class="fa fa-star-half-empty"></span>
                                                            </div>
                                                            <div class="text">There anyone who loves or pursues or desires to obtain pain itself, because it is pain sed, because occasionally circumstances occur some great pleasure.</div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>

                                            <!-- Comment Form -->
                                            <div class="shop-comment-form">	
                                                <h2>Add Your Review</h2>
                                                <div class="rating-box">
                                                    <div class="text"> Your Rating:</div>
                                                    <div class="rating">
                                                        <a href="#"><span class="fa fa-star"></span></a>
                                                    </div>
                                                    <div class="rating">
                                                        <a href="#"><span class="fa fa-star"></span><span class="fa fa-star"></span></a>
                                                        <a href="#"></a>
                                                    </div>
                                                    <div class="rating">
                                                        <a href="#"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></a>
                                                    </div>
                                                    <div class="rating">
                                                        <a href="#"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></a>
                                                    </div>
                                                    <div class="rating">
                                                        <a href="#"><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span><span class="fa fa-star"></span></a>
                                                    </div>
                                                </div>
                                                <form method="post" action="review">
                                                    <div class="row clearfix">
                                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                                            <label>First Name *</label>
                                                            <input type="text" name="username" placeholder="" required>
                                                        </div>

                                                        <div class="col-md-6 col-sm-6 col-xs-12 form-group">
                                                            <label>Last Name*</label>
                                                            <input type="email" name="email" placeholder="" required>
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <label>Email*</label>
                                                            <input type="text" name="number" placeholder="" required>
                                                        </div>
                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <label>Your Comments*</label>
                                                            <textarea name="message" placeholder=""></textarea>
                                                        </div>

                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <button class="theme-btn btn-style-four" type="submit" name="submit-form"><span class="txt">Submit now</span></button>
                                                        </div>

                                                    </div>
                                                </form>

                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>
                            <!--End Product Info Tabs-->

                        </div>
                    </div>

                </div>
            </section>
            <!--End Shop Single Section-->

            <!-- Related Products -->
            <section class="related-products">
                <div class="auto-container">
                    <!--Sec Title-->
                    <div class="title-box">
                        <h2>Related Products</h2>
                    </div>

                    <div class="row clearfix">

                        <!--Shop Item-->
                        <c:forEach items="${list}" var="o">
                            <div class="shop-item col-lg-3 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <div class="image">
                                        <a href="#"><img src="${o.image}" alt="" /></a>
                                        <div class="overlay-box">
                                            <ul class="option-box">
                                                <li><a href="#"><span class="far fa-heart"></span></a></li>
                                                <li><a href="#"><span class="fa fa-shopping-bag"></span></a></li>
                                                <li><a href="${o.image}" class="lightbox-image" data-fancybox="products"><span class="fa fa-search"></span></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="lower-content">
                                        <h3><a href="detail?pid=${o.pID}&cid=${o.cateID}">${o.pName}</a></h3>
                                        <div class="price">${o.price} VNĐ</div>
                                    </div>
                                </div>
                            </div> 
                        </c:forEach>    
                    </div>
                    <div class="shop-pagination">
                        <ul class="clearfix">
                            <li class="prev"><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <c:forEach begin="1" end="${end}" var="o">
                                <li class="page-item ${tag == o ?"active":""}"><a href="detail?index=${o}&pid=${id}&cid=${cateID}">${o}</a></li>
                                </c:forEach>                           
                            <li class="next"><a href="#"><i class="fa fa-angle-right"></i></a></li>
                        </ul>
                    </div>
                </div>
            </section>

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
                                                    <li>Email :<a href="mailto:info@stellaorre.com"> info@stellaorre.com</a></li>
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

    <!-- stella-orre/product-detail.html  30 Nov 2019 03:52:15 GMT -->
</html>
