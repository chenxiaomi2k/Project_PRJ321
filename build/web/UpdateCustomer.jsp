<%-- 
    Document   : UpdateCustomer
    Created on : Jun 15, 2021, 3:18:01 PM
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
        <form action="updateCus" method="post">
            <table border="1">
                <tr>
                    <td>CID <input type="text" name="id" value="${c.cID}" readonly></td>
                </tr>
                <tr>
                    <td>CName <input type="text" name="name" value="${c.cName}"></td>
                </tr>
                <tr>
                    <td>CPhone <input type="text" name="phone" value="${c.cPhone}"></td>
                </tr>
                <tr>
                    <td>CAddress <input type="text" name="address" value="${c.address}"></td>
                </tr>
                <tr>
                    <td>username <input type="text" name="user" value="${c.userName}"></td>
                </tr>
                <tr>
                    <td>password <input type="text" name="pass" value="${c.password}"></td>
                </tr>
                <tr>
                    <td>Status <input type="radio" name="st" value="1">True
                                <input type="radio" name="st" value="0">False</td>
                </tr>
                <tr>
                    <td><input type="submit" value="update"</td>
                </tr>
            </table>
        </form>
    </body>
</html>
