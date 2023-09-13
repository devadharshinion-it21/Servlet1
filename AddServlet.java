package com.cslc.Package1;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddServlet extends HttpServlet {

    @Override
    protected void doPost( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int a=Integer.parseInt(request.getParameter("n1"));
        int b=Integer.parseInt(request.getParameter("n2"));
        int c=a+b;
        response.getWriter().print("The sum of "+a+"+"+b+"="+c);
       
        
    }
}
