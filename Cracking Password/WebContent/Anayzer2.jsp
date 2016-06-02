<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRACKING</title>
<link href="Style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="main">
	<div id="header">
		<h2 align="center"><i><font color="Black">Cracking More Password Hashes With Patterns</font></i></h2>
	</div>
	
	<div id="navvv3">
	<!-- <form action="Login" name="loginform" method="post"> -->
	<table width="100%" >
			<tr>
		 		<td align="left"><a id="labl1" href="PasswordCreation.jsp">Back</a></td>
		 		<td align="right"><a id="labl1" href="View.jsp">Next</a></td>
		 		<!-- <input type="submit" value="submit"> -->
		 	</tr>
		<tr>
			<td colspan="2">
				&nbsp;
			</td>
		</tr>
	
		 <%
		 try{				
				Connection con = dbConnection.DatabaseConn.getConnection();
	            Statement st = con.createStatement();
	            String str=session.getAttribute("userpass")+"";
	            String newstr = str.replaceAll("[^a-zA-Z]", "");
	            //System.out.println("====================>    "+newstr);
	            ResultSet rs=st.executeQuery("select * from popular_names where content='"+newstr+"'");
	            if(rs.next()){
	            	%>	            	
		            	<tr>
							<td colspan="2" align="center">
								<h1><font color="red">You had used a Popular Names in your Password <%=rs.getString(3)%>.</font></h1>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<h1><font color="red">The Name Category <%=rs.getString(2)%>.</font></h1>
							</td>
						</tr>
	            	<%
	            }else{
	            	%>	            	
	            	<tr>
						<td  colspan="2" align="center">
							<h1><font color="red">No words Matched.</font></h1>
						</td>
					</tr>
            	<%
	            }          
			}catch(SQLException e){
				e.printStackTrace();
			}
		 %>
		 	
		 </table>
		<!-- </form> -->
	</div> 
		<div id="navv">
			<img src="imgs/password-brain.png" align="middle" width="100%" height="100%"/>
		</div>
	</div>
	<div id="footer">
		<font color="black">Eyeopen Technologies</font>
	</div>
	
</body>
</html>