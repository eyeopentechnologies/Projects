package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Register() {
        super();

    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname=request.getParameter("uname");
		String name=request.getParameter("name");
		String upass=request.getParameter("upass");
		String uemail=request.getParameter("uemail");
		String umobile=request.getParameter("mobile");
		String gender=request.getParameter("gender");
		String unique_id=request.getParameter("unique_id");
		Random rand = new Random();
		int num = rand.nextInt(9000000) + 1000000;
		Random rand1 = new Random();
		int num1 = rand1.nextInt(9000000) + 1000000;
		String key="Password:"+num+"  "+ "Unique_ID:"+num1;
		try{
			Connection con = dbConnection.DatabaseConn.getConnection();
            Statement st = con.createStatement();
            st.executeUpdate("insert into register(`username`,`name`,`password`,`email`,`mobile`,`gender`,`unique_id`)values('"+uname+"','"+name+"','"+num+"','"+uemail+"','"+umobile+"','"+gender+"','"+num1+"')");
            
            GMailSender gmailS=new GMailSender("eot.project1@gmail.com", "eye_open");
			gmailS.sendMail("Unique _Id & Password","___>: "+key,"eot.project1@gmail.com",uemail);
            response.sendRedirect("Registered.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
