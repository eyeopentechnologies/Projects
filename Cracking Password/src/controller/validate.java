package controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/validate")
public class validate extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public validate() {
        super();        
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String p=request.getParameter("password");
		int i=0,tc=0,cac=0,sac=0,scc=0,nc=0;
		//System.out.println(p.charAt(i));
		for( i=0;i<p.length();i++)
		{
			
		
			tc++;
			if(p.charAt(i)>='a'&&p.charAt(i)<='z')
			{
				sac++;
				System.out.println(p.charAt(i));
				
			}
			else if(p.charAt(i)>='A'&&p.charAt(i)<='Z')
			{
				cac++;
				System.out.println(p.charAt(i));
				
			}
			else if(p.charAt(i)>='0'&&p.charAt(i)<='9')
			{
				nc++;
				System.out.println(p.charAt(i));
				
			}
			else if((p.charAt(i)=='!')||(p.charAt(i)=='@')||(p.charAt(i)=='#')||(p.charAt(i)=='*'))
			{
				scc++;
				System.out.println(p.charAt(i));
			}
		}
	System.out.println("total no of character"+tc);
	System.out.println("no of small characters"+sac);
	System.out.println("no of capital character"+cac);
	System.out.println("no of numerics"+nc);
	System.out.println("no of special characters"+scc);

	}

}
