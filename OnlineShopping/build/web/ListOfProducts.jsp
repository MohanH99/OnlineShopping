<%-- 
    Document   : ListOfProducts
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
          if(session.getAttribute("Uname")!=null)
          {
              String name=(String)session.getAttribute("Uname");
               out.println("Welcome " +name);
          }
      %>
      
      <form action="AddtoCartServlet" method="post">
          <center><h1> Choose Product</h1></center>
          <input type="checkbox" value="mobile" name="products">Mobile
          <input type="checkbox" value="shoes" name="products">Shoes
          <input type="checkbox" value="elec" name="products">Electronics
          <input type="checkbox" value="watch" name="products">Watches
          <input type="submit" value="Add to Cart"/>
      </form>
      
    </body>
</html>
