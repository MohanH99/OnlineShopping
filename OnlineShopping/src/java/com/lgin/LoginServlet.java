/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lgin;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jboss.weld.context.http.Http;

/**
 *
 * @author Student
 */
public class LoginServlet extends HttpServlet {

  

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
       
       String uname=request.getParameter("uname");
       String upass=request.getParameter("upass");
     if(!("".equals(uname)) && !("".equals(upass)))
     {
         if(uname.equals(upass)){
                HttpSession session=request.getSession(true);
                session.setAttribute("Uname", uname);
                response.sendRedirect("ListOfProducts.jsp");
                }
         else
             out.println("Incorrect uname & Password ");
        }

    }

}
