<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>

<hr>
	<form name="del"><font size="4">
			
		
	<% 
                	String pid=request.getQueryString();
	
			
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   con=databasecon.getconnection();
	    st=con.createStatement();
	   String sql="delete from patient where pid='"+pid+"' ";
 	   st.executeUpdate(sql);
		
			if(pid!=null){
		response.sendRedirect("original.jsp?message=success");
		}
		
		else{
			response.sendRedirect("original.jsp?message=fail");
		}
		
	}
	catch(SQLException e1)	{ System.out.println("Database error"+e1.getMessage()); }

	
            %>
			
             </form>
       </body> 	
</html>