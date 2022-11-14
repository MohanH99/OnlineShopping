<%-- 
    Document   : Register
    Created on : Nov 26, 2017, 11:39:42 AM
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
          <form action="RegisterServlet" method="post">
              <table>
                  <tr>
                      <th> Enter Username </th><td><input type="text" name="uname"/></td>
                  </tr>
                  <tr>
                      <th>Enter Password </th><td><input type="password" name="upass"/></td></tr>
                  <tr>
                      <th>Enter Confirm Password</th><td> <input type="password" name="cupass"/></td></tr>
                  <tr>
                      <th>Enter address </th><td>  <input type="text" name="address"/></td></tr>
              </table>
            <input type="submit" value="Login"/>
            
        </form>
    </body>
</html>
