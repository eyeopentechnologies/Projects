<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>Delete Your Password</title>
	<link rel="stylesheet" href="css/style.css" type="text/css" />
    </head>
    <body  >
	<font class="servlet">Delete the account</font><hr>
	<form name="del">
			
		
		<% 
                	String u=request.getQueryString();
	
			
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    String sql="delete from patient where name='"+u+"'";
 	    st.executeUpdate(sql);
			out.println("The Username and password are successfully deleted");
		%>
		<jsp:forward page="passchange.jsp"/>
		<%
	}catch(SQLException e1)
		{ 
		System.out.println("Database error"+e1.getMessage()); 
		}

	finally
	{
	     st.close();
	      con.close();
	}
            %>
			
             </form>
       </body> 	
</html>