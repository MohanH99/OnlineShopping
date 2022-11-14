<%-- 
    Document   : Logout
    Created on : Nov 26, 2017, 12:16:07 PM
    Author     : Student
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       if(session.getAttribute("ProdSelected")!=null)
       {
       int counttotal=0;
           HashMap hmap=(HashMap)session.getAttribute("ProdSelected");
          // out.println("map====="+hmap);
           if(hmap!=null){
                Set keys=hmap.keySet();
                Iterator itr= keys.iterator();
                while(itr.hasNext()){
                    String keyname=(String)itr.next();
                     out.println(keyname+""+hmap.get(keyname));
                     counttotal+=(Integer)hmap.get(keyname);
                }
                }
             out.println("Your total amount is "+counttotal)   ;    
           }else{
           out.println("You have not selected any products ");
            }
       
        if(session.getAttribute("Uname")!=null){
        out.println("<a href='Exit.jsp'>Logout</a>");
        }
       %>
     
    </body>
    
</html>
