/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.util.DbConnector;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jp
 */
public class Gets extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
          String t3 = request.getParameter("name");
           String val1 =null;
            String val2 = null;
             String val3 = null; 
           Connection con = null;
        PreparedStatement pstm = null;
          try {
              System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>");
            con=DbConnector.getConnection();
            String sql= "select * from adding where sym='"+t3+"' ";
              System.out.println("..."+sql);
            pstm=con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery(sql);
            while(rs.next()){
                 val1 = rs.getString("dise");
                 val2 = rs.getString("sym");
                 val3 = rs.getString("des");
            }
            if(val1.indexOf(t3)>=0 || val2.indexOf(t3)>=0 || val3.indexOf(t3)>=0)
             {
            
             out.println("<br><br><br><br><br><br><br>");
             out.println("<center  style=\"font-family:arial;font-size:20px;\">"+"<h2>Disease:: </h2> "+val1+"<br>");
             out.println("&nbsp;&nbsp;&nbsp;&nbsp;"+"<h2>Symptom::</h2>  "+val2+"<br><br>");
             out.println("<h2>Description::</h2>  "+val3+"</center>");
          }
            
              System.out.println(val1+val2+val3);
        } catch(Exception e){
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
