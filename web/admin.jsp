<%-- 
    Document   : HomePage
    Created on : Mar 17, 2021, 8:58:38 PM
    Author     : HaiTL
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Home Page</title>
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
                                    <li class="quote"><a href="adminlogin.jsp">LOGIN</a></li>
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
                        </div>
                    </div>
                </div>
                <!--End Header Upper-->
            </header>
            <!-- End Main Header -->

            <!--Shop Banner Section-->
            <section class="shop-banner-section" style="background-image:url(images/background/8.jpg);">
            </section>
            <!--End Shop Banner Section-->

            <!--Shop Section-->
            <section class="shop-section">
                <div class="auto-container">
                    <!--Sec Title-->
                    <div class="title-box">
                        <h2>Admin Section</h2>
                    </div>
                    <div>
                        <a href="customer">Customer manager</a><br>
                        <a href="product">Product manager</a><br>
                        <a href="bill">Bill manager</a>
                    </div>
                    <div ${hiddenCustomer}>=========================================
                        <div class="auto-customer">
                            <form action="customer" method="get">
                                <a href="AddCustomer.jsp">Add new customer</a>
                                <table border="1px" class="table-customer">
                                    <thead>
                                        <tr>
                                            <th>CID</th>
                                            <th>cName</th>
                                            <th>cPhone</th>
                                            <th>cAddress</th>
                                            <th>username</th>
                                            <th>password</th>
                                            <th>Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${list}" var="o">
                                            <tr>
                                                <td>${o.cID}</td>
                                                <td>${o.cName}</td>
                                                <td>${o.cPhone}</td>
                                                <td>${o.address}</td>
                                                <td>${o.userName}</td>
                                                <td>${o.password}</td>
                                                <td>${o.status}</td>
                                                <td><a href="deleteCus?id=${o.cID}">delete</a></td>
                                                <td><a href="updateCus?id=${o.cID}">update</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                    <div ${hiddenProduct}>===========================================                   
                        <div class="auto-product">
                            <form action="product" method="get">
                                <div><a href="AddProduct.jsp">Add new product</a></div>
                                <table border="1">
                                    <thead>
                                        <tr>
                                            <th>PID</th>
                                            <th>Name</th>
                                            <th>Quantity</th>
                                            <th>Price</th>
                                            <th>Image</th>
                                            <th>Description</th>
                                            <th>Status</th>
                                            <th>CateID</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listP}" var="o">
                                            <tr>
                                                <td>${o.pID}</td>
                                                <td>${o.pName}</td>
                                                <td>${o.quantity}</td>
                                                <td><fmt:formatNumber type="currency" value="${o.price}"/></td>
                                                <td><img src="${o.image}" style="width: 100px; height: 100px;"></td>
                                                <td>${o.description}</td>
                                                <td>${o.status}</td>
                                                <td>${o.cateID}</td>
                                                <td><a href="deletePro?id=${o.pID}">Delete</a></td>
                                                <td><a href="updatePro?id=${o.pID}">update</a></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                    <div ${hiddenBill}>=========================================== 
                        <div class="auto-bill">
                            <h2>Bill</h2>

                            <table border="1">
                                <thead>
                                    <tr>
                                        <th>Bill ID</th>
                                        <th>Customer Name</th>
                                        <th>date</th>
                                        <th>total</th>
                                        <th>status</th>
                                        <th>View</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listB}" var="o">
                                        <tr>
                                            <td>${o.oID}</td>
                                            <td>${o.cName}</td>
                                            <td>${o.date}</td>
                                            <td>${o.total}</td>
                                            <td>
                                                <form action="billChange" method="get">
                                                    <select name="status" onchange="this.form.submit()">
                                                        <option value="0" ${o.status == 0?"selected":""}>Wait</option>
                                                        <option value="1" ${o.status == 1?"selected":""}>Done</option>
                                                        <option value="2" ${o.status == 2?"selected":""}>Processing</option>
                                                    </select>
                                                    <input type="text" name="oid" value="${o.oID}" hidden>
                                                </form>
                                            </td>
                                            <td><a href="billdetail?id=${o.oID}">View Detail</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div ${hiddenDetail}>--------------------------
                                <table border="1" stripped>
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Customer</th>
                                            <th>quantity</th>
                                            <th>price</th>
                                            <th>total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listD}" var="o">
                                            <tr>
                                                <td>${o.p.pName}</td>
                                                <td>${o.b.cName}</td>
                                                <td>${o.quantity}</td>
                                                <td><fmt:formatNumber type="currency" value="${o.price}"/></td>
                                                <td><fmt:formatNumber type="currency" value="${o.total}"/></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                </div>
            </section>
            <!--End Products Section-->

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

