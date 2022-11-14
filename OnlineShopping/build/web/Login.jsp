<%-- 
    Document   : Login
    Created on : Nov 26, 2017, 11:39:24 AM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginServlet" method="post">
        Enter Username    <input type="text" name="uname"/>
         Enter Password   <input type="password" name="upass"/>
            <input type="submit" value="Login"/>
            
        </form>
    </body>
</html>
