/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.addtocart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.print.attribute.HashAttributeSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Student
 */
public class AddtoCartServlet extends HttpServlet {

   HashMap map=null;

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(true);
        map=new HashMap();
              
        String[] listOfProds=request.getParameterValues("products");
        
        if(listOfProds!=null){
        for(int i=0;i<listOfProds.length;i++){
//           if(listOfProds[i].equals("mobile"))         
//               map.put(listOfProds[i],Constants.MOBILE);
            
            map.put(listOfProds[i], 45);
        }
        session.setAttribute("ProdSelected", map);
        }
        response.sendRedirect("Logout.jsp");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
