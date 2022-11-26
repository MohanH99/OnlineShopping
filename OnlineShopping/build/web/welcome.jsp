<%-- 
    Document   : welcome
    Created on : 15 Feb, 2022, 3:04:20 PM
    Author     : Mohan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
 <%="Welcome To My page"+request.getParameter("name")      
            
            
            %>
        
    </body>
</html>
