package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('k');
      out.write('d');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <!-- stella-orre/cart-page.html  30 Nov 2019 03:52:15 GMT -->\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <title>Shoping Cart</title>\n");
      out.write("        <!-- Stylesheets -->\n");
      out.write("        <link href=\"css/bootstrap.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"shortcut icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\n");
      out.write("        <link rel=\"icon\" href=\"images/favicon.png\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write("        <!-- Responsive -->\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0\">\n");
      out.write("        <!--[if lt IE 9]><script src=\"https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js\"></script><![endif]-->\n");
      out.write("        <!--[if lt IE 9]><script src=\"js/respond.js\"></script><![endif]-->\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div class=\"page-wrapper\">\n");
      out.write("            <!-- Preloader -->\n");
      out.write("            <div class=\"preloader\"></div>\n");
      out.write("\n");
      out.write("            <header class=\"main-header header-style-one\">\n");
      out.write("                <!--Header Top-->\n");
      out.write("                <div class=\"header-top\">\n");
      out.write("                    <div class=\"auto-container clearfix\">\n");
      out.write("                        <div class=\"top-left clearfix\">\n");
      out.write("                            <div class=\"text\"><span class=\"icon flaticon-call-answer\"></span> Need help? Call Us Now : <a href=\"#\" class=\"number\">1800 456 7890</a></div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"top-right clearfix\">\n");
      out.write("                            <!-- Info List -->\n");
      out.write("                            <ul class=\"info-list\">\n");
      out.write("                                <li><a href=\"about.html\">Our Story</a></li>\n");
      out.write("                                <li><a href=\"blog.html\">Inspiration</a></li>\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                    ");
      if (_jspx_meth_c_if_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                            </ul>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- End Header Top -->\n");
      out.write("\n");
      out.write("                <!-- Header Upper -->\n");
      out.write("                <div class=\"header-upper\">\n");
      out.write("                    <div class=\"inner-container\">\n");
      out.write("                        <div class=\"auto-container clearfix\">\n");
      out.write("                            <!--Info-->\n");
      out.write("                            <div class=\"logo-outer\">\n");
      out.write("                                <div class=\"logo\"><a href=\"home\"><img src=\"images/logo.png\" alt=\"\" title=\"\"></a></div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!--Nav Box-->\n");
      out.write("                            <div class=\"nav-outer clearfix\">\n");
      out.write("                                <!--Mobile Navigation Toggler For Mobile--><div class=\"mobile-nav-toggler\"><span class=\"icon flaticon-menu-1\"></span></div>\n");
      out.write("                                <nav class=\"main-menu navbar-expand-md navbar-light\">\n");
      out.write("                                    <div class=\"navbar-header\">\n");
      out.write("                                        <!-- Togg le Button -->      \n");
      out.write("                                        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                                            <span class=\"icon flaticon-menu-1\"></span>\n");
      out.write("                                        </button>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <div class=\"collapse navbar-collapse clearfix\" id=\"navbarSupportedContent\">\n");
      out.write("                                        <ul class=\"navigation clearfix\">\n");
      out.write("                                            <li class=\"dropdown\"><a href=\"home\">Home</a></li>\n");
      out.write("                                            <li class=\"dropdown\"><a href=\"#\">Category</a>                                              \n");
      out.write("                                                <ul>\n");
      out.write("                                                    ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("        \n");
      out.write("                                                </ul>                                                                                                     \n");
      out.write("                                            </li>                                         \n");
      out.write("                                            <li class=\"current dropdown\"><a href=\"#\">Shop</a>\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li><a href=\"Cart.jsp\">Cart</a></li>\n");
      out.write("                                                    <li><a href=\"Checkout.jsp\">Checkout</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </li>  \n");
      out.write("                                        </ul>\n");
      out.write("                                    </div>\n");
      out.write("                                </nav>\n");
      out.write("                                <!-- Main Menu End-->\n");
      out.write("\n");
      out.write("                                <!-- Outer Box -->\n");
      out.write("                                <div class=\"outer-box clearfix\">\n");
      out.write("                                    <div class=\"search-box-btn\"><span class=\"icon flaticon-magnifying-glass-1\"></span></div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!--End Header Upper-->\n");
      out.write("\n");
      out.write("            </header>\n");
      out.write("            <!-- End Main Header -->\n");
      out.write("\n");
      out.write("            <!--Page Title-->\n");
      out.write("            <section class=\"page-title\" style=\"background-image:url(images/background/5.jpg)\">\n");
      out.write("                <div class=\"auto-container\">\n");
      out.write("                    <h2>Cart</h2>\n");
      out.write("                    <ul class=\"page-breadcrumb\">\n");
      out.write("                        <li><a href=\"home\">home</a></li>\n");
      out.write("                        <li>Shoping Cart</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!--End Page Title-->\n");
      out.write("\n");
      out.write("            <!--Cart Section-->\n");
      out.write("            <section class=\"cart-section\">\n");
      out.write("                <div class=\"auto-container\">\n");
      out.write("\n");
      out.write("                    <!--Cart Outer-->\n");
      out.write("                    <div class=\"cart-outer\">\n");
      out.write("                        <div class=\"table-outer\">\n");
      out.write("                            <table class=\"cart-table\">\n");
      out.write("                                <thead class=\"cart-header\">\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th>Preview</th>\n");
      out.write("                                        <th class=\"prod-column\">product</th>\n");
      out.write("                                        <th class=\"price\">Price</th>\n");
      out.write("                                        <th>Quantity</th>\n");
      out.write("                                        <th>Total</th>\n");
      out.write("                                        <th>&nbsp;</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");
      if (_jspx_meth_c_forEach_1(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"cart-options clearfix\">\n");
      out.write("                            <div class=\"pull-left\">\n");
      out.write("                                <div class=\"apply-coupon clearfix\">\n");
      out.write("                                    <div class=\"form-group clearfix\">\n");
      out.write("                                        <input type=\"text\" name=\"coupon-code\" value=\"\" placeholder=\"Coupon Code\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"form-group clearfix\">\n");
      out.write("                                        <button type=\"button\" class=\"theme-btn coupon-btn\">Apply Coupon</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                        <div class=\"row clearfix\">\n");
      out.write("\n");
      out.write("                            <div class=\"column col-lg-7 col-md-5 col-sm-12\">\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <div class=\"column col-lg-5 col-md-7 col-sm-12\">\n");
      out.write("                                <!--Totals Table-->\n");
      out.write("                                <ul class=\"totals-table\">\n");
      out.write("                                    <li><h3>Cart Totals</h3></li>\n");
      out.write("                                    <li class=\"clearfix\"><span class=\"col\">Sub Total</span><span class=\"col\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" VNĐ</span></li>\n");
      out.write("                                    <li class=\"clearfix total\"><span class=\"col\">Total</span><span class=\"col price\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(" VNĐ</span></li>\n");
      out.write("                                    <li class=\"text-right\"><a href=\"Checkout.jsp\"><button type=\"submit\" class=\"theme-btn proceed-btn\">Proceed to Checkout</button></a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </section>\n");
      out.write("            <!--End Cart Section-->\n");
      out.write("\n");
      out.write("            <!--Main Footer-->\n");
      out.write("            <footer class=\"main-footer\">\n");
      out.write("                <div class=\"auto-container\">\n");
      out.write("                    <!--Widgets Section-->\n");
      out.write("                    <div class=\"widgets-section\">\n");
      out.write("                        <div class=\"row clearfix\">\n");
      out.write("\n");
      out.write("                            <!--big column-->\n");
      out.write("                            <div class=\"big-column col-lg-6 col-md-12 col-sm-12\">\n");
      out.write("                                <div class=\"row clearfix\">\n");
      out.write("\n");
      out.write("                                    <!--Footer Column-->\n");
      out.write("                                    <div class=\"footer-column col-lg-7 col-md-6 col-sm-12\">\n");
      out.write("                                        <div class=\"footer-widget logo-widget\">\n");
      out.write("                                            <div class=\"logo\">\n");
      out.write("                                                <a href=\"index-2.html\"><img src=\"images/footer-logo.png\" alt=\"\" /></a>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"text\">Stella Orr'e is a WordPress theme to build Interior websites. It has good features and you will love.</div>\n");
      out.write("                                            <ul class=\"social-icons\">\n");
      out.write("                                                <li><a href=\"#\"><span class=\"fab fa-facebook-f\"></span></a></li>\n");
      out.write("                                                <li><a href=\"#\"><span class=\"fab fa-linkedin-in\"></span></a></li>\n");
      out.write("                                                <li><a href=\"#\"><span class=\"fab fa-twitter\"></span></a></li>\n");
      out.write("                                                <li><a href=\"#\"><span class=\"fab fa-google-plus-g\"></span></a></li>\n");
      out.write("                                            </ul>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <!--Footer Column-->\n");
      out.write("                                    <div class=\"footer-column col-lg-5 col-md-6 col-sm-12\">\n");
      out.write("                                        <div class=\"footer-widget links-widget\">\n");
      out.write("                                            <h2>Quick links</h2>\n");
      out.write("                                            <div class=\"widget-content\">\n");
      out.write("                                                <ul class=\"list\">\n");
      out.write("                                                    <li><a href=\"#\">About Gaille</a></li>\n");
      out.write("                                                    <li><a href=\"#\">Privacy Policy</a></li>\n");
      out.write("                                                    <li><a href=\"#\">Terms & Conditionis</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                            <!--big column-->\n");
      out.write("                            <div class=\"big-column col-lg-6 col-md-12 col-sm-12\">\n");
      out.write("                                <div class=\"row clearfix\">\n");
      out.write("\n");
      out.write("                                    <!--Footer Column-->\n");
      out.write("                                    <div class=\"footer-column col-lg-5 col-md-6 col-sm-12\">\n");
      out.write("                                        <div class=\"footer-widget contact-widget\">\n");
      out.write("                                            <h2>Contact Info</h2>\n");
      out.write("                                            <div class=\"widget-content\">\n");
      out.write("                                                <a href=\"tel:1800-574-9687\" class=\"contact-number\">(1800) 574 9687</a>\n");
      out.write("                                                <ul>\n");
      out.write("                                                    <li>256, Stella Orr'e, New York 24</li>\n");
      out.write("                                                    <li>Email :<a href=\"#\"> info@stellaorre.com</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                    <!--Footer Column-->\n");
      out.write("                                    <div class=\"footer-column col-lg-7 col-md-6 col-sm-12\">\n");
      out.write("                                        <div class=\"footer-widget newsletter-widget\">\n");
      out.write("                                            <h2>Newsletter</h2>\n");
      out.write("                                            <div class=\"text\">Get Special offers & Discounts</div>\n");
      out.write("                                            <!-- Newsletter Form -->\n");
      out.write("                                            <div class=\"newsletter-form\">\n");
      out.write("                                                <form method=\"post\" action=\"templateshub.net\">\n");
      out.write("                                                    <div class=\"form-group\">\n");
      out.write("                                                        <input type=\"email\" name=\"email\" value=\"\" placeholder=\"Enter your email address\" required>\n");
      out.write("                                                        <button type=\"submit\" class=\"theme-btn btn-style-one\"><span class=\"txt\">Subscribe</span></button>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("\n");
      out.write("        </div>  \n");
      out.write("        <!--End pagewrapper-->\n");
      out.write("\n");
      out.write("        <!--Scroll to top-->\n");
      out.write("        <div class=\"scroll-to-top scroll-to-target\" data-target=\"html\"><span class=\"fa fa-angle-up\"></span></div>\n");
      out.write("\n");
      out.write("        <!--Search Popup-->\n");
      out.write("        <div id=\"search-popup\" class=\"search-popup\">\n");
      out.write("            <div class=\"close-search theme-btn\"><span class=\"flaticon-cancel\"></span></div>\n");
      out.write("            <div class=\"popup-inner\">\n");
      out.write("                <div class=\"overlay-layer\"></div>\n");
      out.write("                <div class=\"search-form\">\n");
      out.write("                    <form method=\"post\" action=\"search\">\n");
      out.write("                        <div class=\"form-group\">\n");
      out.write("                            <fieldset>\n");
      out.write("                                <input type=\"search\" class=\"form-control\" name=\"txt\" value=\"\" placeholder=\"Search Here\" required >\n");
      out.write("                                <input type=\"submit\" value=\"Search Now!\" class=\"theme-btn\">\n");
      out.write("                            </fieldset>\n");
      out.write("                        </div>\n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!--Scroll to top-->\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("        <script src=\"js/popper.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery-ui.js\"></script>\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"js/jquery.fancybox.js\"></script>\n");
      out.write("        <script src=\"js/owl.js\"></script>\n");
      out.write("        <script src=\"js/wow.js\"></script>\n");
      out.write("        <script src=\"js/appear.js\"></script>\n");
      out.write("        <script src=\"js/jquery.bootstrap-touchspin.js\"></script>\n");
      out.write("        <script src=\"js/scrollbar.js\"></script>\n");
      out.write("        <script src=\"js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("    <!-- stella-orre/cart-page.html  30 Nov 2019 03:52:15 GMT -->\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account == null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    <li class=\"quote\"><a href=\"Login.jsp\">LOGIN</a></li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_if_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent(null);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account != null}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                    <li class=\"quote\"><a href=\"#\">Hello ");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.account.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</a></li>\n");
        out.write("                                    <li><a href=\"logout\">Log out</a></li>\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${AllCate}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_0.setVar("o");
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                                        <li><a href=\"category?cid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.cID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.cName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</a></li>\n");
          out.write("                                                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_forEach_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_1 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_1.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_1.setParent(null);
    _jspx_th_c_forEach_1.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${list}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_forEach_1.setVar("o");
    int[] _jspx_push_body_count_c_forEach_1 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_1 = _jspx_th_c_forEach_1.doStartTag();
      if (_jspx_eval_c_forEach_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                                        <tr>\n");
          out.write("\n");
          out.write("                                            <td class=\"prod-column\">\n");
          out.write("                                                <div class=\"column-box\">\n");
          out.write("                                                    <figure class=\"prod-thumb\"><a href=\"#\"><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"\"></a></figure>\n");
          out.write("                                                </div>\n");
          out.write("                                            </td>\n");
          out.write("                                            <td><h4 class=\"prod-title\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</h4></td>\n");
          out.write("                                            <td class=\"sub-total\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" VNĐ</td>\n");
          out.write("                                            <td class=\"qty\"><div class=\"item-quantity\"><input class=\"quantity-spinner\" type=\"text\" value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.amount}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" name=\"quantity\"></div></td>\n");
          out.write("                                            <td class=\"total-price\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${total}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(" VNĐ</td>\n");
          out.write("                                            <td><a href=\"delete?pid=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.pID}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" class=\"remove-btn\"><span class=\"fas fa-times\"></span></a></td>\n");
          out.write("                                        </tr>\n");
          out.write("                                    ");
          int evalDoAfterBody = _jspx_th_c_forEach_1.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_1[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_1.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_1.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_1);
    }
    return false;
  }
}
