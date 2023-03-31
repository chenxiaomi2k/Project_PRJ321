<%-- 
    Document   : ViewBillDetail
    Created on : Jun 10, 2021, 7:12:01 PM
    Author     : HaiTL
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="viewBD" method="get">
            <table border="1" stripped>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Customer</th>
                        <th>quantity</th>
                        <th>price</th>
                        <th>total</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="o">
                    <tr>
                        <td>${o.pID}</td>
                        <td>${o.oID}</td>
                        <td>${o.quantity}</td>
                        <td>${o.price}</td>
                        <td>${o.total}</td>
                        <td><a href="#">delete</a></td>
                        <td><a href="#">update</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </form>
    </body>
</html>
