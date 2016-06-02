/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.action;

import com.util.Constant;
import com.util.DbConnector;
import com.util.Utilities;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Sabari
 */
public class UploadAction extends HttpServlet {

    private static final String TMP_DIR_PATH = "c:\\tmp";
    private File tmpDir;
    private static final String DESTINATION_DIR_PATH = "file";
    private File destinationDir;

    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
        /*
         *Set the size threshold, above which content will be stored on disk.
         */
        fileItemFactory.setSizeThreshold(1 * 1024 * 1024); //1 MB
		/*
         * Set the temporary directory to store the uploaded files of size above threshold.
         */
        fileItemFactory.setRepository(tmpDir);

        ServletFileUpload uploadHandler = new ServletFileUpload(fileItemFactory);
        Connection con = null;
        PreparedStatement pstm = null;
        PreparedStatement pst1 = null;
        try {
            /*
             * Parse the request
             */
            con = DbConnector.getConnection();
            List items = uploadHandler.parseRequest(request);
            Iterator itr = items.iterator();
            String fileName = "";
            while (itr.hasNext()) {

                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {
                } else {
                 //   String sql1 = "select * from upload where name='" + item.getName() + "'";
                 //   System.out.println(">>>>>>>>>>" + sql1);
                 //   pstm = con.prepareStatement(sql1);
                    ResultSet rs = pstm.executeQuery();
                    if (rs.next()) {
                        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>.loop");
                        response.sendRedirect("upload.jsp?msg=File Name Already Exist");
                    } else {
                        fileName = (String) item.getName();

                        //System.out.println("insert into trans(filename,type_,userid,date_) values('"+fileName+"','Upload','"+request.getSession().getAttribute("userid") +"',now())");
                     //   String s= "insert into trans(filename,type_,userid,date_) values('"+fileName+"','Upload','"+request.getSession().getAttribute("userid") +"',now())";
                       // System.out.println("...."+s);
                       // pst1=con.prepareStatement(s);
                            pst1.executeUpdate();
                        
                        pstm.close();
                        pstm = null;
                        String user = (String) request.getSession().getAttribute("userid");
                        System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>" + user);
                        //String sql = "insert into upload(filename,userid,data_,key_) values('" + fileName + "','" + user + "',?,?)";
                       // pstm = con.prepareStatement(sql);
                       // pstm.setBinaryStream(1, item.getInputStream(), item.getSize());
                     String key = Utilities.generatePin() + "";

                       // pstm.setString(2, key);
                        int a=pstm.executeUpdate();
                        System.out.println(">>>>>>>>>>>>>>qqqqqqqqqqqqqqqqqqq"+a);
                        File file = new File(Constant.file, item.getName() + ".jar");
                        FileOutputStream fop = null;
                        fop = new FileOutputStream(file);
                        // if file doesnt exists, then create it
                        if (!file.exists()) {
                            file.createNewFile();
                        }
                        byte[] contentInBytes = key.getBytes();
                        fop.write(contentInBytes);
                        fop.flush();
                        fop.close();
                        response.sendRedirect("upload.jsp?msg=File Uploaded");
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            response.sendRedirect("upload.jsp?msg=Directory Not Exist");
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
