<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
	
	<div id="nav">
		 
		 <form action="Login" name="loginform" method="post">
			<table>
				<tr>
					<td colspan="2">
						<div id="innerheader1">
							Login Form
						</div>
					</td>
				</tr>
				<tr>
					<td><label id="labl1">Username: </label></td>
					<td><input type="text" name="uname" required/></td>
				</tr>
				<tr>
					<td><label id="labl1">Unique ID: </label></td>
					<td>
						<input type="password" name="unique_id"  />						
					</td>					
				</tr>
				<tr>
					<td colspan="2"><span id="password_strength"></span></td>
				</tr>
				<tr>
					
					<td colspan="2" align="right" >
					
					<input type="submit" value="Login" id="butt1"/>&nbsp;&nbsp;<a href="Register.jsp" id="labl1">Register</a></td>
				</tr>
			</table>	
		</form>
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