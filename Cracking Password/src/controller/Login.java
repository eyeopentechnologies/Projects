package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Login() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String uname=request.getParameter("uname");
		String unique_id=request.getParameter("unique_id");		
		System.out.println(uname);
		try{				
			Connection con = dbConnection.DatabaseConn.getConnection();
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from register where username='"+uname+"' and unique_id='"+unique_id+"'");
            if(rs.next()){
            	session.setAttribute("username", uname);
            	response.sendRedirect("PasswordCreation.jsp");
            }else{
            	response.sendRedirect("Error.jsp");
            }            
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
}
