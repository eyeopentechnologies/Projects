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
			<!-- <tr>
		 		<td align="left"><a id="labl1" href="PasswordCreation.jsp">Back</a></td>
		 		<td align="right"><a id="labl1" href="View.jsp">Next</a></td>
		 		<input type="submit" value="submit">
		 	</tr> -->
		
	
		<%
	
	            String str=session.getAttribute("userpass")+"";
	            String newstr_S = str.replaceAll("[^a-z]", "");
	            String newstr_C = str.replaceAll("[^A-Z]","-");
	            String newnum = str.replaceAll("[^0-9]", "");
	            //System.out.println("====================>    "+newstr);
	        %>	            	
		            	<tr>
							<td colspan="2" align="center">
								<h1><font color="red">Your Password Strings Small letters: <%=newstr_S%>.</font></h1>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<h1><font color="red">Your Password Strings Capital letters: <%=newstr_C%>.</font></h1>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<h1><font color="red">Your Password Numerics: <%=newnum%>.</font></h1>
							</td>
						</tr>						
	            		<%-- <tr>
							<td colspan="2" align="center">
								<h1><font color="red">Your Password Symbols: <%=newstr%>.</font></h1>
							</td>
						</tr> --%>
	          
		 	
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