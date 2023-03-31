<%-- 
    Document   : UpdateProduct
    Created on : Jun 15, 2021, 5:18:19 PM
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
        <form action="updatePro" method="post">
            <table border="1">
                <tr>
                    <td>PID <input type="text" name="pid" value="${p.pID}" readonly></td>
                </tr>
                <tr>
                    <td>Name <input type="text" name="name" value="${p.pName}"></td>
                </tr>
                <tr>
                    <td>Quantity <input type="text" name="quan" value="${p.quantity}"></td>
                </tr>
                <tr>
                    <td>Price <input type="text" name="price" value="${p.price}"></td>
                </tr>
                <tr>
                    <td>Image <input type="text" name="img" value="${p.image}"></td>
                </tr>
                <tr>
                    <td>Description <input type="text" name="des" value="${p.description}"></td>
                </tr>
                <tr>
                    <td>Status <input type="radio" name="st" value="1">True
                        <input type="radio" name="st" value="0">False</td>
                </tr>
                <tr>
                    <td> Cate
                        <select name="cid">
                            <c:forEach items="${listC}" var="o">
                                <option value="${o.cateID}" ${p.cateID == o.cateID?"selected":""}>${o.cateName}</option>
                            </c:forEach>                   
                        </select> 
                    </td>

                </tr>
                <tr>
                    <td><input type="submit" value="Update"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
