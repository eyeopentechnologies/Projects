package controller;

import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class poular_names
 */
@WebServlet("/poular_names")
public class poular_names extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public poular_names() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try{				
				Connection con = dbConnection.DatabaseConn.getConnection();
	            Statement st = con.createStatement();
	            Statement st1 = con.createStatement();
	            /*String str=session.getAttribute("userpass")+"";
	            String newstr = str.replaceAll("[^a-zA-Z]", "");*/
	            //System.out.println("====================>    "+newstr);
	            ResultSet rs=st.executeQuery("select * from wordslist");
	            while(rs.next()){
	            	
	            	String category=rs.getString(2);
	            	String content=rs.getString(3);
	            	String newstr = content.replaceAll(",", "");
	            	String newstr1 = newstr.replaceAll("[^a-zA-Z]", "");
	            	newstr1 = newstr1.toLowerCase();
	            	System.out.println(newstr1);
	            	st1.executeUpdate("insert into popular_names (category,content)values('"+category+"','"+newstr1.trim()+"')");
	            	
	            }
		 }
		 catch(Exception e)
		 {
			 e.printStackTrace();
		 }
		
	}

}
