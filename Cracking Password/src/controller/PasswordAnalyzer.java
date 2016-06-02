package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/PasswordAnalyzer")
public class PasswordAnalyzer extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PasswordAnalyzer() {
        super();       
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println(request.getParameter("upass"));
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String str=request.getParameter("upass");
		session.setAttribute("userpass", str);
		//out.println("Total Number of Characters Used: "+str.length());
		for(int i=0; i<str.length(); i++){
			//out.println(str.charAt(i));
		}
		try{
			Connection con = dbConnection.DatabaseConn.getConnection();
            Statement st = con.createStatement();
            st.executeUpdate("update register set password='"+str+"' where username='"+session.getAttribute("username")+"'");
            response.sendRedirect("Analyzer.jsp");
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		/*int i=0,tc=0,cac=0,sac=0,scc=0,nc=0;
		//System.out.println(p.charAt(i));
		for( i=0;i<str.length();i++)
		{
			
		
			tc++;
			if(str.charAt(i)>='a'&&str.charAt(i)<='z')
			{
				sac++;
				System.out.println(str.charAt(i));
				
			}
			else if(str.charAt(i)>='A'&&str.charAt(i)<='Z')
			{
				cac++;
				System.out.println(str.charAt(i));
				
			}
			else if(str.charAt(i)>='0'&&str.charAt(i)<='9')
			{
				nc++;
				System.out.println(str.charAt(i));
				
			}
			else if((str.charAt(i)=='!')||(str.charAt(i)=='@')||(str.charAt(i)=='#')||(str.charAt(i)=='*'))
			{
				scc++;
				System.out.println(str.charAt(i));
			}
		}
	out.println("total no of character"+tc);
	out.println("no of small characters"+sac);
	out.println("no of capital character"+cac);
	out.println("no of numerics"+nc);
	out.println("no of special characters"+scc);*/

	}

}
