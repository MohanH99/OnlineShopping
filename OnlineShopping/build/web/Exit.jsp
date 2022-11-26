<%-- 
    Document   : Exit
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
        <%
        if(session.getAttribute("Uname")!=null || session.getAttribute("ProdSelected")!=null){
            session.invalidate();
            response.sendRedirect("Login.jsp");
        }
        
        %>
    </body>
</html>
