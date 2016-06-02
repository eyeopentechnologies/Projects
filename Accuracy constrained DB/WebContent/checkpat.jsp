<%@ page import="java.sql.*,databaseconnection.*"%>

<html>

    <head>

	<title>Admin Login Page</title>
  <link rel="stylesheet" href='stylegreen.css' type="text/css" />
    </head>

    <body>

	<form>
		<p align="center" style="color:white;font-family:verdana;font-size:15px;font-weight:bold;">
	<% 

        session.setAttribute("name",request.getParameter("name"));
	session.setAttribute("pass",request.getParameter("pass"));
	
	String name=(String)session.getAttribute("name");
    String pass=(String)session.getAttribute("pass");		

	Connection con=null;

	Statement st=null;

	ResultSet rs=null;

	String sql="select * from patient where name='"+name+"' AND pass='"+pass+"'";

	try

	{

	   con=databasecon.getconnection();

	    st=con.createStatement();

	    rs=st.executeQuery(sql);

	    if(rs.next())

	     {

		session.setAttribute("name",name);

		 %>	

		<jsp:forward page="patientpage.jsp"/>

	    	<%

	             		    

	    }

	  out.println("OOP's!You are not authenticated person");

	}

	catch(SQLException e1)

	{

		

		System.out.println(e1);

	

	 }



	finally

	{

	     st.close();

	      con.close();

	}

            %>

             </form>
			 </p><br>
			 <p class="paragraping" align="center"><a href="patlog.jsp" class="paragrapin1g">Go Home</a></p>

       </body> 	

</html>