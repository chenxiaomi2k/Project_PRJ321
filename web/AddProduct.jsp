<%-- 
    Document   : AddProduct
    Created on : Jun 15, 2021, 5:06:38 PM
    Author     : HaiTL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addPro" method="get">
            <table>
                <tr>
                    <td>PID <input type="text" name="pid"></td>
                </tr>
                <tr>
                    <td>Name <input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>Quantity <input type="text" name="quan"></td>
                </tr>
                <tr>
                    <td>Price <input type="text" name="price"></td>
                </tr>
                <tr>
                    <td>Image <input type="text" name="img"></td>
                </tr>
                <tr>
                    <td>Description <input type="text" name="des"></td>
                </tr>
                <tr>
                    <td>Status <input type="radio" name="st" value="1">True
                                <input type="radio" name="st" value="0">False</td>
                </tr>
                <tr>
                    <td>CateID <input type="text" name="cid"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="add"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
