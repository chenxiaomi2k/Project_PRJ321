<%-- 
    Document   : AddCustomer.jsp
    Created on : Jun 15, 2021, 3:33:03 PM
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
        <form action="addCus" method="get">
            <br>
            Enter Name <input type="text" name="name">
            <br>
            Enter phone <input type="text" name="phone">
            <br>
            Enter address <input type="text" name="address">
            <br>
            Enter username <input type="text" name="user">
            <br>
            Enter password <input type="text" name="pass">
            <br>
            Enter status <input type="checkbox" name="st" value="1">True
                        <input type="checkbox" name="st" value="0">False
            <br>
            <input type="submit" value="add">
        </form>
    </body>
</html>
